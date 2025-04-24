import mysql.connector
from mysql.connector import pooling, Error

db_config = {
    "host": "localhost",
    "user": "root",
    "password": "Ajit@0909",
    "database": "healthcare_system",
    "pool_name": "medicine_pool",
    "pool_size": 10   
}


try:
    connection_pool = mysql.connector.pooling.MySQLConnectionPool(**db_config)
    print("Database connection pool created successfully!")
except Error as e:
    print(f"❌ Error creating connection pool: {str(e)}")
    connection_pool = None


def get_mysql_connection():
    if connection_pool is None:
        print("❌ Connection pool not available")
        return None
    
    try:
        connection = connection_pool.get_connection()
        
        if connection.is_connected():
            connection.autocommit = True   
            print("Got database connection from pool")
            return connection
    except Error as e:
        print(f"❌ Error getting connection from pool: {str(e)}")
    
    return None
