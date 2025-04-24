CREATE DATABASE IF NOT EXISTS healthcare_system;
USE healthcare_system;

CREATE TABLE IF NOT EXISTS symptom_severity_data (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    symptom VARCHAR(100) NOT NULL,
    severity INT
);

INSERT INTO symptom_severity_data (symptom, severity) VALUES
('itching', 3),
('skin_rash', 4),
('stomach_pain', 5),
('nausea', 2);

CREATE TABLE IF NOT EXISTS disease_description_data (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease VARCHAR(100) NOT NULL,
    description TEXT
);

INSERT INTO disease_description_data (disease, description) VALUES
('Fungal infection', 'A fungal infection commonly occurs on the skin.'),
('Common cold', 'A viral infection causing sneezing, chills, and runny nose.');

CREATE TABLE IF NOT EXISTS disease_precaution_data (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease VARCHAR(100) NOT NULL,
    precaution1 VARCHAR(100),
    precaution2 VARCHAR(100),
    precaution3 VARCHAR(100),
    precaution4 VARCHAR(100)
);

INSERT INTO disease_precaution_data (disease, precaution1, precaution2, precaution3, precaution4) VALUES
('Fungal infection', 'Maintain hygiene', 'Use anti-fungal cream', 'Avoid damp areas', 'Wear clean clothes'),
('Common cold', 'Drink warm fluids', 'Rest well', 'Use nasal spray', 'Take vitamin C');

CREATE TABLE IF NOT EXISTS disease_diet_data (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease VARCHAR(100) NOT NULL,
    diet1 VARCHAR(100),
    diet2 VARCHAR(100),
    diet3 VARCHAR(100),
    diet4 VARCHAR(100)
);

INSERT INTO disease_diet_data (disease, diet1, diet2, diet3, diet4) VALUES
('Fungal infection', 'Fruits', 'Vegetables', 'Probiotics', 'Water'),
('Common cold', 'Warm soup', 'Herbal tea', 'Citrus fruits', 'Spicy food');

CREATE TABLE IF NOT EXISTS disease_medicine_data (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease VARCHAR(100) NOT NULL,
    medicine1 VARCHAR(100),
    medicine2 VARCHAR(100),
    medicine3 VARCHAR(100),
    medicine4 VARCHAR(100)
);

INSERT INTO disease_medicine_data (disease, medicine1, medicine2, medicine3, medicine4) VALUES
('Fungal infection', 'Ketoconazole', 'Clotrimazole', 'Fluconazole', 'Itraconazole'),
('Common cold', 'Paracetamol', 'Ibuprofen', 'Antihistamines', 'Cough syrup');

CREATE TABLE IF NOT EXISTS disease_workout_data (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease VARCHAR(100) NOT NULL,
    workout1 VARCHAR(100),
    workout2 VARCHAR(100),
    workout3 VARCHAR(100),
    workout4 VARCHAR(100)
);

INSERT INTO disease_workout_data (disease, workout1, workout2, workout3, workout4) VALUES
('Fungal infection', 'Stretching', 'Yoga', 'Light cardio', 'Resistance bands'),
('Common cold', 'Light walking', 'Stretching', 'Breathing exercises', 'Relaxation yoga');

CREATE TABLE IF NOT EXISTS disease_training_data_data (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    symptom1 VARCHAR(100),
    symptom2 VARCHAR(100),
    symptom3 VARCHAR(100),
    symptom4 VARCHAR(100),
    symptom5 VARCHAR(100),
    disease VARCHAR(100)
);

INSERT INTO disease_training_data_data (symptom1, symptom2, symptom3, symptom4, symptom5, disease) VALUES
('itching', 'skin_rash', 'nodal_skin_eruptions', 'dischromic_patches', '', 'Fungal infection'),
('continuous_sneezing', 'shivering', 'chills', 'watering_from_eyes', '', 'Common cold'),
('stomach_pain', 'nausea', 'vomiting', 'fatigue', '', 'Gastroenteritis');

CREATE TABLE users_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

-- Insert 20 new symptoms into symptom_severity_data
INSERT INTO symptom_severity_data (symptom, severity) VALUES
('headache', 3),
('fever', 4),
('fatigue', 2),
('cough', 3),
('sore_throat', 3),
('dizziness', 3),
('muscle_weakness', 4),
('chest_pain', 5),
('shortness_of_breath', 5),
('swelling', 4),
('joint_pain', 3),
('back_pain', 3),
('breathing_difficulty', 5),
('loss_of_appetite', 2),
('numbness', 4),
('blurred_vision', 4),
('vomiting', 5),
('constipation', 2),
('diarrhea', 4),
('weight_loss', 3);

-- Insert corresponding disease descriptions into disease_description_data
INSERT INTO disease_description_data (disease, description) VALUES
('Migraine', 'A severe headache often accompanied by nausea and sensitivity to light.'),
('Flu', 'A viral infection characterized by fever, chills, and body aches.'),
('Chronic Fatigue Syndrome', 'A condition characterized by persistent fatigue and poor sleep.'),
('Asthma', 'A chronic condition where airways are inflamed and breathing becomes difficult.'),
('Laryngitis', 'An inflammation of the larynx causing sore throat and hoarseness.'),
('Vertigo', 'A sensation of spinning or dizziness, often due to inner ear issues.'),
('Muscular dystrophy', 'A group of diseases that cause muscle weakness and degeneration.'),
('Heart Attack', 'A medical emergency where the blood supply to part of the heart is blocked.'),
('COPD', 'Chronic obstructive pulmonary disease, a progressive lung disease.'),
('Edema', 'Swelling caused by fluid retention in tissues of the body.'),
('Arthritis', 'An inflammation of the joints, causing pain and stiffness.'),
('Sciatica', 'Pain along the sciatic nerve, which runs from the lower back to the legs.'),
('Chronic Obstructive Pulmonary Disease', 'A group of lung diseases that block airflow and make it difficult to breathe.'),
('Anorexia', 'An eating disorder characterized by an intense fear of gaining weight.'),
('Multiple Sclerosis', 'A disease that affects the central nervous system, causing nerve damage.'),
('Cataracts', 'Clouding of the lens in the eye, which leads to blurred vision.'),
('Gastroenteritis', 'An inflammation of the stomach and intestines, often causing vomiting and diarrhea.'),
('Irritable Bowel Syndrome', 'A disorder causing abdominal pain, bloating, and changes in bowel habits.'),
('Tuberculosis', 'A bacterial infection that primarily affects the lungs.'),
('Hyperthyroidism', 'A condition where the thyroid gland produces too much thyroid hormone.');

-- Insert corresponding precautions into disease_precaution_data
INSERT INTO disease_precaution_data (disease, precaution1, precaution2, precaution3, precaution4) VALUES
('Migraine', 'Avoid bright lights', 'Reduce stress', 'Use pain relievers', 'Rest in a quiet room'),
('Flu', 'Stay hydrated', 'Rest well', 'Avoid contact with others', 'Take antiviral medications'),
('Chronic Fatigue Syndrome', 'Prioritize sleep', 'Practice stress management', 'Limit physical exertion', 'Maintain a healthy diet'),
('Asthma', 'Avoid allergens', 'Use inhalers', 'Monitor breathing', 'Stay active'),
('Laryngitis', 'Avoid talking too much', 'Stay hydrated', 'Use throat lozenges', 'Rest your voice'),
('Vertigo', 'Avoid sudden movements', 'Use dizziness medications', 'Rest in a comfortable position', 'Avoid driving'),
('Muscular dystrophy', 'Physical therapy', 'Use assistive devices', 'Manage symptoms with medication', 'Regular exercise'),
('Heart Attack', 'Avoid high-fat foods', 'Stay physically active', 'Monitor blood pressure', 'Quit smoking'),
('COPD', 'Avoid smoking', 'Use bronchodilators', 'Get vaccinated', 'Monitor breathing regularly'),
('Edema', 'Elevate legs', 'Limit salt intake', 'Wear compression stockings', 'Drink plenty of water'),
('Arthritis', 'Exercise regularly', 'Use anti-inflammatory medications', 'Manage weight', 'Take warm baths'),
('Sciatica', 'Physical therapy', 'Use hot/cold compresses', 'Avoid heavy lifting', 'Take pain relievers'),
('Chronic Obstructive Pulmonary Disease', 'Quit smoking', 'Use oxygen therapy', 'Avoid pollutants', 'Get flu shots'),
('Anorexia', 'Nutritional therapy', 'Psychological support', 'Regular monitoring', 'Gradual weight gain'),
('Multiple Sclerosis', 'Use disease-modifying drugs', 'Stay physically active', 'Practice good sleep hygiene', 'Monitor symptoms regularly'),
('Cataracts', 'Wear sunglasses', 'Have regular eye check-ups', 'Consider surgery', 'Use proper lighting'),
('Gastroenteritis', 'Stay hydrated', 'Avoid contaminated food', 'Rest well', 'Wash hands regularly'),
('Irritable Bowel Syndrome', 'Eat a balanced diet', 'Avoid trigger foods', 'Manage stress', 'Use fiber supplements'),
('Tuberculosis', 'Take antibiotics', 'Avoid crowded places', 'Get tested regularly', 'Practice good hygiene'),
('Hyperthyroidism', 'Take antithyroid medications', 'Monitor thyroid function', 'Manage stress', 'Eat a balanced diet');

-- Insert corresponding diets into disease_diet_data
INSERT INTO disease_diet_data (disease, diet1, diet2, diet3, diet4) VALUES
('Migraine', 'Fresh fruits', 'Leafy greens', 'Whole grains', 'Low-fat dairy'),
('Flu', 'Hot tea', 'Chicken soup', 'Ginger', 'Citrus fruits'),
('Chronic Fatigue Syndrome', 'Complex carbohydrates', 'Lean proteins', 'Vegetables', 'Healthy fats'),
('Asthma', 'Fish oil', 'Leafy greens', 'Fresh fruit', 'Low-fat dairy'),
('Laryngitis', 'Warm water with honey', 'Herbal tea', 'Ginger', 'Soft foods'),
('Vertigo', 'Hydrating fluids', 'Ginger', 'Leafy vegetables', 'Whole grains'),
('Muscular dystrophy', 'Protein-rich foods', 'Nuts and seeds', 'Fresh vegetables', 'Omega-3 fatty acids'),
('Heart Attack', 'Oats', 'Leafy greens', 'Nuts', 'Fatty fish'),
('COPD', 'Fresh vegetables', 'Lean protein', 'Whole grains', 'Low-fat dairy'),
('Edema', 'Cucumbers', 'Watermelon', 'Celery', 'Leafy greens'),
('Arthritis', 'Omega-3 rich foods', 'Ginger', 'Turmeric', 'Green tea'),
('Sciatica', 'Anti-inflammatory foods', 'Fresh fruit', 'Whole grains', 'Lean meats'),
('Chronic Obstructive Pulmonary Disease', 'Fresh fruit', 'Low-sodium foods', 'Lean protein', 'Oats'),
('Anorexia', 'Small meals', 'High-calorie snacks', 'Protein shakes', 'Healthy fats'),
('Multiple Sclerosis', 'Omega-3 fatty acids', 'Berries', 'Leafy greens', 'Lean proteins'),
('Cataracts', 'Carrots', 'Spinach', 'Eggs', 'Citrus fruits'),
('Gastroenteritis', 'BRAT diet (bananas, rice, applesauce, toast)', 'Clear broths', 'Plain crackers', 'Boiled potatoes'),
('Irritable Bowel Syndrome', 'Low-FODMAP foods', 'Lean meats', 'Rice', 'Bananas'),
('Tuberculosis', 'High-calorie foods', 'Whole grains', 'Fresh vegetables', 'Lean protein'),
('Hyperthyroidism', 'Cruciferous vegetables', 'Whole grains', 'High-protein foods', 'Low-fat dairy');

-- Insert corresponding medicines into disease_medicine_data
INSERT INTO disease_medicine_data (disease, medicine1, medicine2, medicine3, medicine4) VALUES
('Migraine', 'Sumatriptan', 'Ergotamine', 'Ibuprofen', 'Acetaminophen'),
('Flu', 'Oseltamivir', 'Zanamivir', 'Paracetamol', 'Ibuprofen'),
('Chronic Fatigue Syndrome', 'Modafinil', 'Doxepin', 'Antidepressants', 'Stimulants'),
('Asthma', 'Albuterol', 'Fluticasone', 'Salmeterol', 'Montelukast'),
('Laryngitis', 'Hydrocodone', 'Dextromethorphan', 'Ibuprofen', 'Corticosteroids'),
('Vertigo', 'Meclizine', 'Diazepam', 'Scopolamine', 'Dimenhydrinate'),
('Muscular dystrophy', 'Corticosteroids', 'Creatine', 'ACE inhibitors', 'Antidepressants'),
('Heart Attack', 'Aspirin', 'Clopidogrel', 'Nitroglycerin', 'Statins'),
('COPD', 'Bronchodilators', 'Steroids', 'Antibiotics', 'Oxygen therapy'),
('Edema', 'Furosemide', 'Spironolactone', 'Lisinopril', 'Hydrochlorothiazide'),
('Arthritis', 'Methotrexate', 'Ibuprofen', 'Steroids', 'DMARDs'),
('Sciatica', 'Gabapentin', 'Carisoprodol', 'NSAIDs', 'Opioids'),
('Chronic Obstructive Pulmonary Disease', 'Tiotropium', 'Salbutamol', 'Prednisone', 'Oxygen'),
('Anorexia', 'Antidepressants', 'Antipsychotics', 'Nutritional supplements', 'Appetite stimulants'),
('Multiple Sclerosis', 'Interferon beta', 'Glatiramer acetate', 'Natalizumab', 'Ocrelizumab'),
('Cataracts', 'Surgical removal', 'Lens replacement', 'Steroid eye drops', 'Anti-inflammatory drugs'),
('Gastroenteritis', 'ORS (Oral Rehydration Solution)', 'Loperamide', 'Antibiotics', 'Probiotics'),
('Irritable Bowel Syndrome', 'Fiber supplements', 'Antispasmodics', 'Probiotics', 'Antidepressants'),
('Tuberculosis', 'Isoniazid', 'Rifampicin', 'Pyrazinamide', 'Ethambutol'),
('Hyperthyroidism', 'Methimazole', 'Propylthiouracil', 'Beta-blockers', 'Radioactive iodine');

-- Insert corresponding workouts into disease_workout_data
INSERT INTO disease_workout_data (disease, workout1, workout2, workout3, workout4) VALUES
('Migraine', 'Resting in dark room', 'Yoga', 'Breathing exercises', 'Meditation'),
('Flu', 'Resting in bed', 'Gentle stretching', 'Breathing exercises', 'Light walking'),
('Chronic Fatigue Syndrome', 'Gentle yoga', 'Breathing exercises', 'Walking', 'Tai Chi'),
('Asthma', 'Breathing exercises', 'Light walking', 'Stretching', 'Yoga'),
('Laryngitis', 'Resting voice', 'Gentle neck stretches', 'Breathing exercises', 'Gentle yoga'),
('Vertigo', 'Balancing exercises', 'Stretching', 'Breathing exercises', 'Light walking'),
('Muscular dystrophy', 'Physical therapy', 'Strength training', 'Stretching', 'Walking'),
('Heart Attack', 'Cardio exercises', 'Walking', 'Light jogging', 'Stretching'),
('COPD', 'Breathing exercises', 'Walking', 'Yoga', 'Strength training'),
('Edema', 'Leg raises', 'Gentle stretching', 'Swimming', 'Walking'),
('Arthritis', 'Strength training', 'Swimming', 'Stretching', 'Walking'),
('Sciatica', 'Gentle stretching', 'Walking', 'Yoga', 'Strength training'),
('Chronic Obstructive Pulmonary Disease', 'Breathing exercises', 'Walking', 'Yoga', 'Strength training'),
('Anorexia', 'Gentle stretching', 'Walking', 'Strength training', 'Tai Chi'),
('Multiple Sclerosis', 'Physical therapy', 'Stretching', 'Gentle yoga', 'Walking'),
('Cataracts', 'Gentle exercises', 'Stretching', 'Yoga', 'Walking'),
('Gastroenteritis', 'Resting', 'Light walking', 'Gentle stretching', 'Breathing exercises'),
('Irritable Bowel Syndrome', 'Walking', 'Yoga', 'Gentle stretching', 'Strength training'),
('Tuberculosis', 'Breathing exercises', 'Walking', 'Stretching', 'Gentle yoga'),
('Hyperthyroidism', 'Yoga', 'Stretching', 'Strength training', 'Walking');

-- Insert corresponding training data into disease_training_data_data
INSERT INTO disease_training_data_data (symptom1, symptom2, symptom3, symptom4, symptom5, disease) VALUES
('headache', 'fever', 'nausea', 'fatigue', '', 'Migraine'),
('fever', 'chills', 'cough', 'sore_throat', '', 'Flu'),
('fatigue', 'muscle_weakness', 'headache', 'sleep_difficulty', '', 'Chronic Fatigue Syndrome'),
('cough', 'shortness_of_breath', 'chest_pain', 'fatigue', '', 'Asthma'),
('sore_throat', 'cough', 'fever', 'headache', '', 'Laryngitis'),
('dizziness', 'nausea', 'vomiting', 'headache', '', 'Vertigo'),
('muscle_weakness', 'numbness', 'fatigue', 'joint_pain', '', 'Muscular dystrophy'),
('chest_pain', 'shortness_of_breath', 'nausea', 'fatigue', '', 'Heart Attack'),
('shortness_of_breath', 'cough', 'fatigue', 'chest_pain', '', 'COPD'),
('swelling', 'fatigue', 'shortness_of_breath', 'joint_pain', '', 'Edema'),
('joint_pain', 'swelling', 'muscle_weakness', 'fatigue', '', 'Arthritis'),
('back_pain', 'numbness', 'leg_pain', 'weakness', '', 'Sciatica'),
('breathing_difficulty', 'fatigue', 'chest_pain', 'swelling', '', 'Chronic Obstructive Pulmonary Disease'),
('loss_of_appetite', 'weight_loss', 'fatigue', 'nausea', '', 'Anorexia'),
('numbness', 'weakness', 'vision_loss', 'fatigue', '', 'Multiple Sclerosis'),
('blurred_vision', 'headache', 'nausea', 'fatigue', '', 'Cataracts'),
('vomiting', 'diarrhea', 'abdominal_pain', 'fever', '', 'Gastroenteritis'),
('constipation', 'abdominal_pain', 'bloating', 'fatigue', '', 'Irritable Bowel Syndrome'),
('weight_loss', 'fever', 'night_sweats', 'fatigue', '', 'Tuberculosis'),
('fatigue', 'weight_loss', 'tachycardia', 'diarrhea', '', 'Hyperthyroidism');

INSERT INTO symptom_severity_data (symptom, severity) VALUES
('unexplained_weight_loss', 4),
('persistent_cough', 4),
('blood_in_sputum', 5),
('loss_of_balance', 4),
('tremors', 3),
('seizures', 5),
('confusion', 4),
('low_immunity', 4),
('muscle_wasting', 4),
('depression', 4),
('anxiety', 3),
('low_urine_output', 5),
('yellowing_eyes', 4),
('abdominal_swelling', 4),
('hopelessness', 4),
('sadness', 3),
('dry_cough', 3),
('loss_of_taste', 4),
('shortness_of_breath', 5),
('excessive_body_fat', 4);

INSERT INTO disease_description_data (disease, description) VALUES
('Cancer', 'A group of diseases involving abnormal cell growth with potential to invade other parts.'),
('Stroke', 'A medical emergency when blood supply to the brain is interrupted or reduced.'),
('Parkinson’s Disease', 'A nervous system disorder affecting movement and often including tremors.'),
('Epilepsy', 'A neurological disorder marked by recurrent, unprovoked seizures.'),
('HIV/AIDS', 'A virus that attacks the body’s immune system and can lead to AIDS.'),
('Kidney Failure', 'A condition in which the kidneys lose the ability to remove waste and balance fluids.'),
('Cirrhosis', 'A chronic liver disease marked by degeneration of cells and scarring.'),
('Depression', 'A mood disorder causing persistent sadness and loss of interest.'),
('COVID-19', 'A contagious respiratory disease caused by the SARS-CoV-2 virus.'),
('Obesity', 'A condition involving excessive body fat increasing health risk.');

INSERT INTO disease_diet_data (disease, diet1, diet2, diet3, diet4) VALUES
('Cancer', 'High-protein foods', 'Leafy greens', 'Antioxidant-rich fruits', 'Whole grains'),
('Stroke', 'Low-sodium foods', 'Fruits', 'Vegetables', 'Lean protein'),
('Parkinson’s Disease', 'Fiber-rich foods', 'Omega-3 fatty acids', 'Hydration', 'Low-protein in mornings'),
('Epilepsy', 'Ketogenic diet', 'Low-carb vegetables', 'High-fat dairy', 'Nuts and seeds'),
('HIV/AIDS', 'High-calorie foods', 'Lean protein', 'Fruits and vegetables', 'Hydration'),
('Kidney Failure', 'Low-protein foods', 'Low-potassium vegetables', 'Low-sodium', 'Fluid management'),
('Cirrhosis', 'Low-salt foods', 'Fruits', 'Vegetables', 'Lean meat'),
('Depression', 'Omega-3s', 'Whole grains', 'Berries', 'Leafy greens'),
('COVID-19', 'Warm fluids', 'Vitamin C foods', 'Protein-rich meals', 'Hydration'),
('Obesity', 'High-fiber foods', 'Vegetables', 'Lean meats', 'Low-carb fruits');

INSERT INTO disease_medicine_data (disease, medicine1, medicine2, medicine3, medicine4) VALUES
('Cancer', 'Chemotherapy', 'Immunotherapy', 'Radiotherapy', 'Targeted therapy'),
('Stroke', 'Aspirin', 'Thrombolytics', 'Anticoagulants', 'Clopidogrel'),
('Parkinson’s Disease', 'Levodopa', 'Carbidopa', 'Selegiline', 'Amantadine'),
('Epilepsy', 'Valproic acid', 'Phenytoin', 'Carbamazepine', 'Lamotrigine'),
('HIV/AIDS', 'Tenofovir', 'Zidovudine', 'Lamivudine', 'Efavirenz'),
('Kidney Failure', 'Erythropoietin', 'Diuretics', 'Calcium binders', 'Dialysis'),
('Cirrhosis', 'Diuretics', 'Lactulose', 'Beta-blockers', 'Antibiotics'),
('Depression', 'SSRIs', 'SNRIs', 'Tricyclics', 'Bupropion'),
('COVID-19', 'Paracetamol', 'Remdesivir', 'Dexamethasone', 'Azithromycin'),
('Obesity', 'Orlistat', 'Phentermine', 'Liraglutide', 'Metformin');

INSERT INTO disease_precaution_data (disease, precaution1, precaution2, precaution3, precaution4) VALUES
('Cancer', 'Regular screenings', 'Avoid tobacco', 'Eat healthy', 'Exercise regularly'),
('Stroke', 'Control BP', 'Manage diabetes', 'Avoid smoking', 'Exercise'),
('Parkinson’s Disease', 'Medication adherence', 'Balance therapy', 'Avoid falls', 'Eat high-fiber'),
('Epilepsy', 'Take medications', 'Avoid triggers', 'Manage stress', 'Get enough sleep'),
('HIV/AIDS', 'Practice safe sex', 'Avoid sharing needles', 'Take ART daily', 'Regular testing'),
('Kidney Failure', 'Monitor fluid intake', 'Control BP and sugar', 'Limit salt', 'Follow diet plan'),
('Cirrhosis', 'Avoid alcohol', 'Eat liver-friendly foods', 'Limit salt', 'Manage medications'),
('Depression', 'Seek counseling', 'Avoid isolation', 'Exercise regularly', 'Stay on medication'),
('COVID-19', 'Wear mask', 'Isolate if infected', 'Wash hands', 'Get vaccinated'),
('Obesity', 'Exercise regularly', 'Follow diet plan', 'Avoid junk food', 'Track calories');

INSERT INTO disease_workout_data (disease, workout1, workout2, workout3, workout4) VALUES
('Cancer', 'Walking', 'Yoga', 'Breathing exercises', 'Stretching'),
('Stroke', 'Physiotherapy', 'Balance training', 'Light walking', 'Hand coordination drills'),
('Parkinson’s Disease', 'Treadmill walking', 'Tai Chi', 'Stretching', 'Resistance band exercises'),
('Epilepsy', 'Walking', 'Swimming (supervised)', 'Yoga', 'Stretching'),
('HIV/AIDS', 'Light cardio', 'Strength training', 'Yoga', 'Walking'),
('Kidney Failure', 'Light stretching', 'Short walks', 'Breathing exercises', 'Chair yoga'),
('Cirrhosis', 'Walking', 'Stretching', 'Yoga', 'Light balance exercises'),
('Depression', 'Cardio', 'Yoga', 'Dancing', 'Strength training'),
('COVID-19', 'Breathing exercises', 'Light walking', 'Stretching', 'Rest'),
('Obesity', 'Cardio exercises', 'Walking', 'Strength training', 'Aerobics');

INSERT INTO disease_training_data_data (symptom1, symptom2, symptom3, symptom4, symptom5, disease) VALUES
('unexplained_weight_loss', 'persistent_cough', 'fatigue', 'blood_in_sputum', '', 'Cancer'),
('loss_of_balance', 'confusion', 'blurred_vision', 'headache', '', 'Stroke'),
('tremors', 'slowed_movement', 'stiffness', 'balance_problems', '', 'Parkinson’s Disease'),
('seizures', 'confusion', 'staring_spells', 'muscle_stiffness', '', 'Epilepsy'),
('low_immunity', 'weight_loss', 'muscle_wasting', 'fever', '', 'HIV/AIDS'),
('low_urine_output', 'fatigue', 'swelling', 'nausea', '', 'Kidney Failure'),
('yellowing_eyes', 'abdominal_swelling', 'fatigue', 'confusion', '', 'Cirrhosis'),
('sadness', 'hopelessness', 'fatigue', 'anxiety', '', 'Depression'),
('dry_cough', 'fever', 'loss_of_taste', 'shortness_of_breath', '', 'COVID-19'),
('excessive_body_fat', 'fatigue', 'joint_pain', 'shortness_of_breath', '', 'Obesity');

CREATE DATABASE IF NOT EXISTS healthcare_system;
USE healthcare_system;

CREATE TABLE IF NOT EXISTS symptom_severity (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    symptom VARCHAR(100) NOT NULL,
    severity INT
);

INSERT INTO symptom_severity (symptom, severity) VALUES
('itching', 3),
('skin_rash', 4),
('stomach_pain', 5),
('nausea', 2);

CREATE TABLE IF NOT EXISTS disease_description (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease VARCHAR(100) NOT NULL,
    description TEXT
);

INSERT INTO disease_description (disease, description) VALUES
('Fungal infection', 'A fungal infection commonly occurs on the skin.'),
('Common cold', 'A viral infection causing sneezing, chills, and runny nose.');

CREATE TABLE IF NOT EXISTS disease_precaution (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease VARCHAR(100) NOT NULL,
    precaution1 VARCHAR(100),
    precaution2 VARCHAR(100),
    precaution3 VARCHAR(100),
    precaution4 VARCHAR(100)
);

INSERT INTO disease_precaution (disease, precaution1, precaution2, precaution3, precaution4) VALUES
('Fungal infection', 'Maintain hygiene', 'Use anti-fungal cream', 'Avoid damp areas', 'Wear clean clothes'),
('Common cold', 'Drink warm fluids', 'Rest well', 'Use nasal spray', 'Take vitamin C');

CREATE TABLE IF NOT EXISTS disease_diet (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease VARCHAR(100) NOT NULL,
    diet1 VARCHAR(100),
    diet2 VARCHAR(100),
    diet3 VARCHAR(100),
    diet4 VARCHAR(100)
);

INSERT INTO disease_diet (disease, diet1, diet2, diet3, diet4) VALUES
('Fungal infection', 'Fruits', 'Vegetables', 'Probiotics', 'Water'),
('Common cold', 'Warm soup', 'Herbal tea', 'Citrus fruits', 'Spicy food');

CREATE TABLE IF NOT EXISTS disease_medicine (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease VARCHAR(100) NOT NULL,
    medicine1 VARCHAR(100),
    medicine2 VARCHAR(100),
    medicine3 VARCHAR(100),
    medicine4 VARCHAR(100)
);

INSERT INTO disease_medicine (disease, medicine1, medicine2, medicine3, medicine4) VALUES
('Fungal infection', 'Ketoconazole', 'Clotrimazole', 'Fluconazole', 'Itraconazole'),
('Common cold', 'Paracetamol', 'Ibuprofen', 'Antihistamines', 'Cough syrup');

CREATE TABLE IF NOT EXISTS disease_workout (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease VARCHAR(100) NOT NULL,
    workout1 VARCHAR(100),
    workout2 VARCHAR(100),
    workout3 VARCHAR(100),
    workout4 VARCHAR(100)
);

INSERT INTO disease_workout (disease, workout1, workout2, workout3, workout4) VALUES
('Fungal infection', 'Stretching', 'Yoga', 'Light cardio', 'Resistance bands'),
('Common cold', 'Light walking', 'Stretching', 'Breathing exercises', 'Relaxation yoga');

CREATE TABLE IF NOT EXISTS disease_training_data (   
    id INT AUTO_INCREMENT PRIMARY KEY,
    symptom1 VARCHAR(100),
    symptom2 VARCHAR(100),
    symptom3 VARCHAR(100),
    symptom4 VARCHAR(100),
    symptom5 VARCHAR(100),
    disease VARCHAR(100)
);

INSERT INTO disease_training_data (symptom1, symptom2, symptom3, symptom4, symptom5, disease) VALUES
('itching', 'skin_rash', 'nodal_skin_eruptions', 'dischromic_patches', '', 'Fungal infection'),
('continuous_sneezing', 'shivering', 'chills', 'watering_from_eyes', '', 'Common cold'),
('stomach_pain', 'nausea', 'vomiting', 'fatigue', '', 'Gastroenteritis');

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

-- Insert 20 new symptoms into symptom_severity_data
INSERT INTO symptom_severity (symptom, severity) VALUES
('headache', 3),
('fever', 4),
('fatigue', 2),
('cough', 3),
('sore_throat', 3),
('dizziness', 3),
('muscle_weakness', 4),
('chest_pain', 5),
('shortness_of_breath', 5),
('swelling', 4),
('joint_pain', 3),
('back_pain', 3),
('breathing_difficulty', 5),
('loss_of_appetite', 2),
('numbness', 4),
('blurred_vision', 4),
('vomiting', 5),
('constipation', 2),
('diarrhea', 4),
('weight_loss', 3);

-- Insert corresponding disease descriptions into disease_description_data
INSERT INTO disease_description (disease, description) VALUES
('Migraine', 'A severe headache often accompanied by nausea and sensitivity to light.'),
('Flu', 'A viral infection characterized by fever, chills, and body aches.'),
('Chronic Fatigue Syndrome', 'A condition characterized by persistent fatigue and poor sleep.'),
('Asthma', 'A chronic condition where airways are inflamed and breathing becomes difficult.'),
('Laryngitis', 'An inflammation of the larynx causing sore throat and hoarseness.'),
('Vertigo', 'A sensation of spinning or dizziness, often due to inner ear issues.'),
('Muscular dystrophy', 'A group of diseases that cause muscle weakness and degeneration.'),
('Heart Attack', 'A medical emergency where the blood supply to part of the heart is blocked.'),
('COPD', 'Chronic obstructive pulmonary disease, a progressive lung disease.'),
('Edema', 'Swelling caused by fluid retention in tissues of the body.'),
('Arthritis', 'An inflammation of the joints, causing pain and stiffness.'),
('Sciatica', 'Pain along the sciatic nerve, which runs from the lower back to the legs.'),
('Chronic Obstructive Pulmonary Disease', 'A group of lung diseases that block airflow and make it difficult to breathe.'),
('Anorexia', 'An eating disorder characterized by an intense fear of gaining weight.'),
('Multiple Sclerosis', 'A disease that affects the central nervous system, causing nerve damage.'),
('Cataracts', 'Clouding of the lens in the eye, which leads to blurred vision.'),
('Gastroenteritis', 'An inflammation of the stomach and intestines, often causing vomiting and diarrhea.'),
('Irritable Bowel Syndrome', 'A disorder causing abdominal pain, bloating, and changes in bowel habits.'),
('Tuberculosis', 'A bacterial infection that primarily affects the lungs.'),
('Hyperthyroidism', 'A condition where the thyroid gland produces too much thyroid hormone.');

-- Insert corresponding precautions into disease_precaution_data
INSERT INTO disease_precaution (disease, precaution1, precaution2, precaution3, precaution4) VALUES
('Migraine', 'Avoid bright lights', 'Reduce stress', 'Use pain relievers', 'Rest in a quiet room'),
('Flu', 'Stay hydrated', 'Rest well', 'Avoid contact with others', 'Take antiviral medications'),
('Chronic Fatigue Syndrome', 'Prioritize sleep', 'Practice stress management', 'Limit physical exertion', 'Maintain a healthy diet'),
('Asthma', 'Avoid allergens', 'Use inhalers', 'Monitor breathing', 'Stay active'),
('Laryngitis', 'Avoid talking too much', 'Stay hydrated', 'Use throat lozenges', 'Rest your voice'),
('Vertigo', 'Avoid sudden movements', 'Use dizziness medications', 'Rest in a comfortable position', 'Avoid driving'),
('Muscular dystrophy', 'Physical therapy', 'Use assistive devices', 'Manage symptoms with medication', 'Regular exercise'),
('Heart Attack', 'Avoid high-fat foods', 'Stay physically active', 'Monitor blood pressure', 'Quit smoking'),
('COPD', 'Avoid smoking', 'Use bronchodilators', 'Get vaccinated', 'Monitor breathing regularly'),
('Edema', 'Elevate legs', 'Limit salt intake', 'Wear compression stockings', 'Drink plenty of water'),
('Arthritis', 'Exercise regularly', 'Use anti-inflammatory medications', 'Manage weight', 'Take warm baths'),
('Sciatica', 'Physical therapy', 'Use hot/cold compresses', 'Avoid heavy lifting', 'Take pain relievers'),
('Chronic Obstructive Pulmonary Disease', 'Quit smoking', 'Use oxygen therapy', 'Avoid pollutants', 'Get flu shots'),
('Anorexia', 'Nutritional therapy', 'Psychological support', 'Regular monitoring', 'Gradual weight gain'),
('Multiple Sclerosis', 'Use disease-modifying drugs', 'Stay physically active', 'Practice good sleep hygiene', 'Monitor symptoms regularly'),
('Cataracts', 'Wear sunglasses', 'Have regular eye check-ups', 'Consider surgery', 'Use proper lighting'),
('Gastroenteritis', 'Stay hydrated', 'Avoid contaminated food', 'Rest well', 'Wash hands regularly'),
('Irritable Bowel Syndrome', 'Eat a balanced diet', 'Avoid trigger foods', 'Manage stress', 'Use fiber supplements'),
('Tuberculosis', 'Take antibiotics', 'Avoid crowded places', 'Get tested regularly', 'Practice good hygiene'),
('Hyperthyroidism', 'Take antithyroid medications', 'Monitor thyroid function', 'Manage stress', 'Eat a balanced diet');

-- Insert corresponding diets into disease_diet_data
INSERT INTO disease_diet (disease, diet1, diet2, diet3, diet4) VALUES
('Migraine', 'Fresh fruits', 'Leafy greens', 'Whole grains', 'Low-fat dairy'),
('Flu', 'Hot tea', 'Chicken soup', 'Ginger', 'Citrus fruits'),
('Chronic Fatigue Syndrome', 'Complex carbohydrates', 'Lean proteins', 'Vegetables', 'Healthy fats'),
('Asthma', 'Fish oil', 'Leafy greens', 'Fresh fruit', 'Low-fat dairy'),
('Laryngitis', 'Warm water with honey', 'Herbal tea', 'Ginger', 'Soft foods'),
('Vertigo', 'Hydrating fluids', 'Ginger', 'Leafy vegetables', 'Whole grains'),
('Muscular dystrophy', 'Protein-rich foods', 'Nuts and seeds', 'Fresh vegetables', 'Omega-3 fatty acids'),
('Heart Attack', 'Oats', 'Leafy greens', 'Nuts', 'Fatty fish'),
('COPD', 'Fresh vegetables', 'Lean protein', 'Whole grains', 'Low-fat dairy'),
('Edema', 'Cucumbers', 'Watermelon', 'Celery', 'Leafy greens'),
('Arthritis', 'Omega-3 rich foods', 'Ginger', 'Turmeric', 'Green tea'),
('Sciatica', 'Anti-inflammatory foods', 'Fresh fruit', 'Whole grains', 'Lean meats'),
('Chronic Obstructive Pulmonary Disease', 'Fresh fruit', 'Low-sodium foods', 'Lean protein', 'Oats'),
('Anorexia', 'Small meals', 'High-calorie snacks', 'Protein shakes', 'Healthy fats'),
('Multiple Sclerosis', 'Omega-3 fatty acids', 'Berries', 'Leafy greens', 'Lean proteins'),
('Cataracts', 'Carrots', 'Spinach', 'Eggs', 'Citrus fruits'),
('Gastroenteritis', 'BRAT diet (bananas, rice, applesauce, toast)', 'Clear broths', 'Plain crackers', 'Boiled potatoes'),
('Irritable Bowel Syndrome', 'Low-FODMAP foods', 'Lean meats', 'Rice', 'Bananas'),
('Tuberculosis', 'High-calorie foods', 'Whole grains', 'Fresh vegetables', 'Lean protein'),
('Hyperthyroidism', 'Cruciferous vegetables', 'Whole grains', 'High-protein foods', 'Low-fat dairy');

-- Insert corresponding medicines into disease_medicine_data
INSERT INTO disease_medicine (disease, medicine1, medicine2, medicine3, medicine4) VALUES
('Migraine', 'Sumatriptan', 'Ergotamine', 'Ibuprofen', 'Acetaminophen'),
('Flu', 'Oseltamivir', 'Zanamivir', 'Paracetamol', 'Ibuprofen'),
('Chronic Fatigue Syndrome', 'Modafinil', 'Doxepin', 'Antidepressants', 'Stimulants'),
('Asthma', 'Albuterol', 'Fluticasone', 'Salmeterol', 'Montelukast'),
('Laryngitis', 'Hydrocodone', 'Dextromethorphan', 'Ibuprofen', 'Corticosteroids'),
('Vertigo', 'Meclizine', 'Diazepam', 'Scopolamine', 'Dimenhydrinate'),
('Muscular dystrophy', 'Corticosteroids', 'Creatine', 'ACE inhibitors', 'Antidepressants'),
('Heart Attack', 'Aspirin', 'Clopidogrel', 'Nitroglycerin', 'Statins'),
('COPD', 'Bronchodilators', 'Steroids', 'Antibiotics', 'Oxygen therapy'),
('Edema', 'Furosemide', 'Spironolactone', 'Lisinopril', 'Hydrochlorothiazide'),
('Arthritis', 'Methotrexate', 'Ibuprofen', 'Steroids', 'DMARDs'),
('Sciatica', 'Gabapentin', 'Carisoprodol', 'NSAIDs', 'Opioids'),
('Chronic Obstructive Pulmonary Disease', 'Tiotropium', 'Salbutamol', 'Prednisone', 'Oxygen'),
('Anorexia', 'Antidepressants', 'Antipsychotics', 'Nutritional supplements', 'Appetite stimulants'),
('Multiple Sclerosis', 'Interferon beta', 'Glatiramer acetate', 'Natalizumab', 'Ocrelizumab'),
('Cataracts', 'Surgical removal', 'Lens replacement', 'Steroid eye drops', 'Anti-inflammatory drugs'),
('Gastroenteritis', 'ORS (Oral Rehydration Solution)', 'Loperamide', 'Antibiotics', 'Probiotics'),
('Irritable Bowel Syndrome', 'Fiber supplements', 'Antispasmodics', 'Probiotics', 'Antidepressants'),
('Tuberculosis', 'Isoniazid', 'Rifampicin', 'Pyrazinamide', 'Ethambutol'),
('Hyperthyroidism', 'Methimazole', 'Propylthiouracil', 'Beta-blockers', 'Radioactive iodine');

-- Insert corresponding workouts into disease_workout_data
INSERT INTO disease_workout (disease, workout1, workout2, workout3, workout4) VALUES
('Migraine', 'Resting in dark room', 'Yoga', 'Breathing exercises', 'Meditation'),
('Flu', 'Resting in bed', 'Gentle stretching', 'Breathing exercises', 'Light walking'),
('Chronic Fatigue Syndrome', 'Gentle yoga', 'Breathing exercises', 'Walking', 'Tai Chi'),
('Asthma', 'Breathing exercises', 'Light walking', 'Stretching', 'Yoga'),
('Laryngitis', 'Resting voice', 'Gentle neck stretches', 'Breathing exercises', 'Gentle yoga'),
('Vertigo', 'Balancing exercises', 'Stretching', 'Breathing exercises', 'Light walking'),
('Muscular dystrophy', 'Physical therapy', 'Strength training', 'Stretching', 'Walking'),
('Heart Attack', 'Cardio exercises', 'Walking', 'Light jogging', 'Stretching'),
('COPD', 'Breathing exercises', 'Walking', 'Yoga', 'Strength training'),
('Edema', 'Leg raises', 'Gentle stretching', 'Swimming', 'Walking'),
('Arthritis', 'Strength training', 'Swimming', 'Stretching', 'Walking'),
('Sciatica', 'Gentle stretching', 'Walking', 'Yoga', 'Strength training'),
('Chronic Obstructive Pulmonary Disease', 'Breathing exercises', 'Walking', 'Yoga', 'Strength training'),
('Anorexia', 'Gentle stretching', 'Walking', 'Strength training', 'Tai Chi'),
('Multiple Sclerosis', 'Physical therapy', 'Stretching', 'Gentle yoga', 'Walking'),
('Cataracts', 'Gentle exercises', 'Stretching', 'Yoga', 'Walking'),
('Gastroenteritis', 'Resting', 'Light walking', 'Gentle stretching', 'Breathing exercises'),
('Irritable Bowel Syndrome', 'Walking', 'Yoga', 'Gentle stretching', 'Strength training'),
('Tuberculosis', 'Breathing exercises', 'Walking', 'Stretching', 'Gentle yoga'),
('Hyperthyroidism', 'Yoga', 'Stretching', 'Strength training', 'Walking');

-- Insert corresponding training data into disease_training_data_data
INSERT INTO disease_training_data (symptom1, symptom2, symptom3, symptom4, symptom5, disease) VALUES
('headache', 'fever', 'nausea', 'fatigue', '', 'Migraine'),
('fever', 'chills', 'cough', 'sore_throat', '', 'Flu'),
('fatigue', 'muscle_weakness', 'headache', 'sleep_difficulty', '', 'Chronic Fatigue Syndrome'),
('cough', 'shortness_of_breath', 'chest_pain', 'fatigue', '', 'Asthma'),
('sore_throat', 'cough', 'fever', 'headache', '', 'Laryngitis'),
('dizziness', 'nausea', 'vomiting', 'headache', '', 'Vertigo'),
('muscle_weakness', 'numbness', 'fatigue', 'joint_pain', '', 'Muscular dystrophy'),
('chest_pain', 'shortness_of_breath', 'nausea', 'fatigue', '', 'Heart Attack'),
('shortness_of_breath', 'cough', 'fatigue', 'chest_pain', '', 'COPD'),
('swelling', 'fatigue', 'shortness_of_breath', 'joint_pain', '', 'Edema'),
('joint_pain', 'swelling', 'muscle_weakness', 'fatigue', '', 'Arthritis'),
('back_pain', 'numbness', 'leg_pain', 'weakness', '', 'Sciatica'),
('breathing_difficulty', 'fatigue', 'chest_pain', 'swelling', '', 'Chronic Obstructive Pulmonary Disease'),
('loss_of_appetite', 'weight_loss', 'fatigue', 'nausea', '', 'Anorexia'),
('numbness', 'weakness', 'vision_loss', 'fatigue', '', 'Multiple Sclerosis'),
('blurred_vision', 'headache', 'nausea', 'fatigue', '', 'Cataracts'),
('vomiting', 'diarrhea', 'abdominal_pain', 'fever', '', 'Gastroenteritis'),
('constipation', 'abdominal_pain', 'bloating', 'fatigue', '', 'Irritable Bowel Syndrome'),
('weight_loss', 'fever', 'night_sweats', 'fatigue', '', 'Tuberculosis'),
('fatigue', 'weight_loss', 'tachycardia', 'diarrhea', '', 'Hyperthyroidism');

INSERT INTO symptom_severity (symptom, severity) VALUES
('unexplained_weight_loss', 4),
('persistent_cough', 4),
('blood_in_sputum', 5),
('loss_of_balance', 4),
('tremors', 3),
('seizures', 5),
('confusion', 4),
('low_immunity', 4),
('muscle_wasting', 4),
('depression', 4),
('anxiety', 3),
('low_urine_output', 5),
('yellowing_eyes', 4),
('abdominal_swelling', 4),
('hopelessness', 4),
('sadness', 3),
('dry_cough', 3),
('loss_of_taste', 4),
('shortness_of_breath', 5),
('excessive_body_fat', 4);

INSERT INTO disease_description (disease, description) VALUES
('Cancer', 'A group of diseases involving abnormal cell growth with potential to invade other parts.'),
('Stroke', 'A medical emergency when blood supply to the brain is interrupted or reduced.'),
('Parkinson’s Disease', 'A nervous system disorder affecting movement and often including tremors.'),
('Epilepsy', 'A neurological disorder marked by recurrent, unprovoked seizures.'),
('HIV/AIDS', 'A virus that attacks the body’s immune system and can lead to AIDS.'),
('Kidney Failure', 'A condition in which the kidneys lose the ability to remove waste and balance fluids.'),
('Cirrhosis', 'A chronic liver disease marked by degeneration of cells and scarring.'),
('Depression', 'A mood disorder causing persistent sadness and loss of interest.'),
('COVID-19', 'A contagious respiratory disease caused by the SARS-CoV-2 virus.'),
('Obesity', 'A condition involving excessive body fat increasing health risk.');

INSERT INTO disease_diet (disease, diet1, diet2, diet3, diet4) VALUES
('Cancer', 'High-protein foods', 'Leafy greens', 'Antioxidant-rich fruits', 'Whole grains'),
('Stroke', 'Low-sodium foods', 'Fruits', 'Vegetables', 'Lean protein'),
('Parkinson’s Disease', 'Fiber-rich foods', 'Omega-3 fatty acids', 'Hydration', 'Low-protein in mornings'),
('Epilepsy', 'Ketogenic diet', 'Low-carb vegetables', 'High-fat dairy', 'Nuts and seeds'),
('HIV/AIDS', 'High-calorie foods', 'Lean protein', 'Fruits and vegetables', 'Hydration'),
('Kidney Failure', 'Low-protein foods', 'Low-potassium vegetables', 'Low-sodium', 'Fluid management'),
('Cirrhosis', 'Low-salt foods', 'Fruits', 'Vegetables', 'Lean meat'),
('Depression', 'Omega-3s', 'Whole grains', 'Berries', 'Leafy greens'),
('COVID-19', 'Warm fluids', 'Vitamin C foods', 'Protein-rich meals', 'Hydration'),
('Obesity', 'High-fiber foods', 'Vegetables', 'Lean meats', 'Low-carb fruits');

INSERT INTO disease_medicine (disease, medicine1, medicine2, medicine3, medicine4) VALUES
('Cancer', 'Chemotherapy', 'Immunotherapy', 'Radiotherapy', 'Targeted therapy'),
('Stroke', 'Aspirin', 'Thrombolytics', 'Anticoagulants', 'Clopidogrel'),
('Parkinson’s Disease', 'Levodopa', 'Carbidopa', 'Selegiline', 'Amantadine'),
('Epilepsy', 'Valproic acid', 'Phenytoin', 'Carbamazepine', 'Lamotrigine'),
('HIV/AIDS', 'Tenofovir', 'Zidovudine', 'Lamivudine', 'Efavirenz'),
('Kidney Failure', 'Erythropoietin', 'Diuretics', 'Calcium binders', 'Dialysis'),
('Cirrhosis', 'Diuretics', 'Lactulose', 'Beta-blockers', 'Antibiotics'),
('Depression', 'SSRIs', 'SNRIs', 'Tricyclics', 'Bupropion'),
('COVID-19', 'Paracetamol', 'Remdesivir', 'Dexamethasone', 'Azithromycin'),
('Obesity', 'Orlistat', 'Phentermine', 'Liraglutide', 'Metformin');

INSERT INTO disease_precaution (disease, precaution1, precaution2, precaution3, precaution4) VALUES
('Cancer', 'Regular screenings', 'Avoid tobacco', 'Eat healthy', 'Exercise regularly'),
('Stroke', 'Control BP', 'Manage diabetes', 'Avoid smoking', 'Exercise'),
('Parkinson’s Disease', 'Medication adherence', 'Balance therapy', 'Avoid falls', 'Eat high-fiber'),
('Epilepsy', 'Take medications', 'Avoid triggers', 'Manage stress', 'Get enough sleep'),
('HIV/AIDS', 'Practice safe sex', 'Avoid sharing needles', 'Take ART daily', 'Regular testing'),
('Kidney Failure', 'Monitor fluid intake', 'Control BP and sugar', 'Limit salt', 'Follow diet plan'),
('Cirrhosis', 'Avoid alcohol', 'Eat liver-friendly foods', 'Limit salt', 'Manage medications'),
('Depression', 'Seek counseling', 'Avoid isolation', 'Exercise regularly', 'Stay on medication'),
('COVID-19', 'Wear mask', 'Isolate if infected', 'Wash hands', 'Get vaccinated'),
('Obesity', 'Exercise regularly', 'Follow diet plan', 'Avoid junk food', 'Track calories');

INSERT INTO disease_workout (disease, workout1, workout2, workout3, workout4) VALUES
('Cancer', 'Walking', 'Yoga', 'Breathing exercises', 'Stretching'),
('Stroke', 'Physiotherapy', 'Balance training', 'Light walking', 'Hand coordination drills'),
('Parkinson’s Disease', 'Treadmill walking', 'Tai Chi', 'Stretching', 'Resistance band exercises'),
('Epilepsy', 'Walking', 'Swimming (supervised)', 'Yoga', 'Stretching'),
('HIV/AIDS', 'Light cardio', 'Strength training', 'Yoga', 'Walking'),
('Kidney Failure', 'Light stretching', 'Short walks', 'Breathing exercises', 'Chair yoga'),
('Cirrhosis', 'Walking', 'Stretching', 'Yoga', 'Light balance exercises'),
('Depression', 'Cardio', 'Yoga', 'Dancing', 'Strength training'),
('COVID-19', 'Breathing exercises', 'Light walking', 'Stretching', 'Rest'),
('Obesity', 'Cardio exercises', 'Walking', 'Strength training', 'Aerobics');

INSERT INTO disease_training_data (symptom1, symptom2, symptom3, symptom4, symptom5, disease) VALUES
('unexplained_weight_loss', 'persistent_cough', 'fatigue', 'blood_in_sputum', '', 'Cancer'),
('loss_of_balance', 'confusion', 'blurred_vision', 'headache', '', 'Stroke'),
('tremors', 'slowed_movement', 'stiffness', 'balance_problems', '', 'Parkinson’s Disease'),
('seizures', 'confusion', 'staring_spells', 'muscle_stiffness', '', 'Epilepsy'),
('low_immunity', 'weight_loss', 'muscle_wasting', 'fever', '', 'HIV/AIDS'),
('low_urine_output', 'fatigue', 'swelling', 'nausea', '', 'Kidney Failure'),
('yellowing_eyes', 'abdominal_swelling', 'fatigue', 'confusion', '', 'Cirrhosis'),
('sadness', 'hopelessness', 'fatigue', 'anxiety', '', 'Depression'),
('dry_cough', 'fever', 'loss_of_taste', 'shortness_of_breath', '', 'COVID-19'),
('excessive_body_fat', 'fatigue', 'joint_pain', 'shortness_of_breath', '', 'Obesity');