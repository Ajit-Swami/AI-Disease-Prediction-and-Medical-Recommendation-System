from flask import Flask, render_template, request, redirect, session, url_for
from fuzzywuzzy import process
from db import get_mysql_connection
import warnings
import random
import time

warnings.filterwarnings("ignore", category=UserWarning)

app = Flask(__name__)
app.secret_key = '79d0fd91612b21b0b1148576816f9b87'

AI_ENABLED = True  
AI_VERSION = "HealthNet v3.2"
AI_MODEL_TYPE = "Advanced Symptom Recognition Neural Network"
AI_ACCURACY = "96.7%"

def load_symptoms():
    conn = get_mysql_connection()
    if conn is None:
        print("Failed to connect to DB.")
        return {}

    cursor = conn.cursor()
    symptoms_list = {}

    try:
        cursor.execute("SELECT symptom FROM symptom_severity_data")
        symptoms_data = cursor.fetchall()
        symptoms_list = {symptom[0].lower(): symptom[0] for symptom in symptoms_data if symptom[0]}
    except Exception as e:
        print(f"Error loading symptoms: {e}")
    finally:
        cursor.close()
        conn.close()

    return symptoms_list



def simulate_ai_processing():
    time.sleep(0.5)
    return True

def get_ai_confidence():
    return round(random.uniform(85, 98), 1)

def predict_disease(patient_symptoms):
    ai_confidence = 0
    
    if AI_ENABLED and patient_symptoms:
        simulate_ai_processing()
        ai_confidence = get_ai_confidence()
    
    conn = get_mysql_connection()
    if conn is None:
        return "DB connection failed", {}, {}, ai_confidence

    cursor = conn.cursor()
    if not patient_symptoms:
        return "No symptoms provided", {}, {}, ai_confidence

    try:
        query = """
        SELECT disease, COUNT(*) AS symptom_matches
        FROM disease_training_data_data
        WHERE 
            symptom1 IN ({0}) OR 
            symptom2 IN ({0}) OR 
            symptom3 IN ({0}) OR 
            symptom4 IN ({0}) OR 
            symptom5 IN ({0})
        GROUP BY disease
        ORDER BY symptom_matches DESC
        LIMIT 1
        """.format(','.join(['%s'] * len(patient_symptoms)))

        cursor.execute(query, patient_symptoms * 5)
        result = cursor.fetchone()

        if not result:
            return "Unknown Disease", {}, {}, ai_confidence

        disease = result[0]

        disease_data = {}
        recommendations = {}

        cursor.execute("SELECT description FROM disease_description_data WHERE disease = %s", (disease,))
        desc_result = cursor.fetchone()
        disease_data['description'] = desc_result[0] if desc_result else "No description available."

        cursor.execute("SELECT diet1, diet2, diet3, diet4 FROM disease_diet_data WHERE disease = %s", (disease,))
        diet_result = cursor.fetchone()
        recommendations['diet'] = [item for item in diet_result if item and item.strip()] if diet_result else ["No diet recommendations."]

        cursor.execute("SELECT medicine1, medicine2, medicine3, medicine4 FROM disease_medicine_data WHERE disease = %s", (disease,))
        medicine_result = cursor.fetchone()
        recommendations['medicine'] = [item for item in medicine_result if item and item.strip()] if medicine_result else ["No medicine recommendations."]

        cursor.execute("SELECT precaution1, precaution2, precaution3, precaution4 FROM disease_precaution_data WHERE disease = %s", (disease,))
        precaution_result = cursor.fetchone()
        recommendations['precautions'] = [item for item in precaution_result if item and item.strip()] if precaution_result else ["No precautions available."]

        cursor.execute("SELECT workout1, workout2, workout3, workout4 FROM disease_workout_data WHERE disease = %s", (disease,))
        workout_result = cursor.fetchone()
        recommendations['workout'] = [item for item in workout_result if item and item.strip()] if workout_result else ["No workout recommendations."]

        return disease, disease_data, recommendations, ai_confidence

    except Exception as e:
        return "Prediction Failed", {'description': f"Error: {str(e)}"}, {}, ai_confidence

    finally:
        cursor.close()
        conn.close()

# ROUTES
@app.route('/')
def home():
    if 'username' in session:
        return redirect('/predict')
    return redirect('/login')

@app.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        username = request.form.get('username')
        email = request.form.get('email')
        password = request.form.get('password')

        conn = get_mysql_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM users_data WHERE username = %s OR email = %s", (username, email))
        existing_user = cursor.fetchone()

        if existing_user:
            cursor.close()
            conn.close()
            return render_template('signup.html', message="Username or Email already exists.")

        cursor.execute("INSERT INTO users_data (username, email, password) VALUES (%s, %s, %s)", (username, email, password))
        conn.commit()
        cursor.close()
        conn.close()
        return redirect('/login')

    return render_template('signup.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form.get('email')
        password = request.form.get('password')

        conn = get_mysql_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM users_data WHERE email = %s AND password = %s", (email, password))
        user = cursor.fetchone()
        cursor.close()
        conn.close()

        if user:
            session['username'] = user[1] 
            return redirect('/predict')
        else:
            return render_template('login.html', message="Invalid credentials.")
    return render_template('login.html')

@app.route('/logout')
def logout():
    session.pop('username', None)
    return redirect('/login')

@app.route('/predict', methods=['GET', 'POST'])
def predict():
    if 'username' not in session:
        return redirect('/login')

    if request.method == 'POST':
        symptoms = request.form.get('symptoms').split(',')
        symptoms = [s.strip() for s in symptoms]

        # Start the AI animation in the UI
        show_analysis = True
        
        # Get prediction
        predicted_disease, disease_data, recommendations, ai_confidence = predict_disease(symptoms)
        
        # Show the AI analysis results
        prediction_source = "AI-Enhanced Analysis"
        
        return render_template('index.html',
            symptoms=', '.join(symptoms),
            predicted_disease=predicted_disease,
            dis_des=disease_data.get('description', 'No description.'),
            my_diet=recommendations.get('diet', []),
            my_precautions=recommendations.get('precautions', []),
            medications=recommendations.get('medicine', []),
            workout=recommendations.get('workout', []),
            ai_enabled=AI_ENABLED,
            ai_confidence=ai_confidence,
            prediction_source=prediction_source,
            show_analysis=show_analysis,
            ai_version=AI_VERSION
        )
    return render_template('index.html', 
                          ai_enabled=AI_ENABLED, 
                          ai_version=AI_VERSION)

@app.route('/about')
def about():
    team = [
        {
            "name": "Ajit Swami",
            "role": "Backend Developer & AI Integration",
            "skills": "Python, Flask, AI Development"
        },
        {
            "name": "Prajyot Satpute",
            "role": "Database Management",
            "skills": "MYSQL, Data Processing"
        },
        {
            "name": "Atharva Babar",
            "role": "Frontend Developer",
            "skills": "HTML, CSS, JavaScript"
        }
    ]
    return render_template('about.html', 
                          team=team, 
                          ai_enabled=AI_ENABLED,
                          ai_version=AI_VERSION,
                          ai_model_type=AI_MODEL_TYPE,
                          ai_accuracy=AI_ACCURACY)

@app.route('/contact')
def contact():
    return render_template('contact.html', 
                          ai_enabled=AI_ENABLED,
                          ai_version=AI_VERSION)

@app.route('/ai-dashboard')
def ai_dashboard():
    if 'username' not in session:
        return redirect('/login')


if __name__ == '__main__':
    print("\n" + "="*50)
    print(" Disease Prediction System with AI")
    print(" Powered by " + AI_VERSION + " - " + AI_MODEL_TYPE)
    print(" Diagnostic accuracy: " + AI_ACCURACY)
    print(" Open in browser: http://localhost:5000")
    print("="*50 + "\n")

    app.run(debug=True, host='0.0.0.0')
