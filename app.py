from flask import Flask, render_template
import psycopg2
import os
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)

def get_db_connection():
    conn = psycopg2.connect(
        dbname=os.getenv('POSTGRES_DB', 'mining_db'),
        user=os.getenv('POSTGRES_USER', 'postgres'),
        password=os.getenv('POSTGRES_PASSWORD', 'postgres'),
        host=os.getenv('POSTGRES_HOST', 'localhost'),
        port=os.getenv('POSTGRES_PORT', '5432')
    )
    return conn

@app.route('/')
def index():
    conn = get_db_connection()
    cur = conn.cursor()
    
    # Получаем все данные из таблицы
    cur.execute('SELECT * FROM mining_data ORDER BY year, rock_type;')
    mining_data = cur.fetchall()
    
    # Получаем сводную статистику
    cur.execute('''
        SELECT year, rock_type, SUM(amount_tonnes) as total_amount
        FROM mining_data
        GROUP BY year, rock_type
        ORDER BY year, total_amount DESC;
    ''')
    stats = cur.fetchall()
    
    cur.close()
    conn.close()
    
    return render_template('index.html', 
                         mining_data=mining_data,
                         stats=stats)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=True)
