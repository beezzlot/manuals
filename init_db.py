import psycopg2
from psycopg2 import sql
import os
from dotenv import load_dotenv

load_dotenv()

# Подключение к PostgreSQL
def init_db():
    conn = psycopg2.connect(
        dbname=os.getenv('POSTGRES_DB', 'mining_db'),
        user=os.getenv('POSTGRES_USER', 'postgres'),
        password=os.getenv('POSTGRES_PASSWORD', 'postgres'),
        host=os.getenv('POSTGRES_HOST', 'localhost'),
        port=os.getenv('POSTGRES_PORT', '5432')
    )
    
    with conn.cursor() as cur:
        # Создаем таблицу, если она не существует
        cur.execute("""
            CREATE TABLE IF NOT EXISTS mining_data (
                id SERIAL PRIMARY KEY,
                year INTEGER NOT NULL,
                rock_type VARCHAR(50) NOT NULL,
                amount_tonnes NUMERIC(10, 2) NOT NULL,
                location VARCHAR(100),
                company VARCHAR(100)
        """)
        
        # Очищаем таблицу перед заполнением новыми данными
        cur.execute("TRUNCATE TABLE mining_data")
        
        # Генерируем тестовые данные для 45 лет (1980-2024)
        rock_types = ['Granite', 'Marble', 'Basalt', 'Limestone', 'Sandstone', 
                     'Quartzite', 'Slate', 'Gneiss', 'Diorite', 'Gabbro']
        locations = ['Ural Mountains', 'Siberia', 'Far East', 'Caucasus', 
                    'Altai', 'Kola Peninsula', 'Karelia', 'Central Russia']
        companies = ['MiningCo', 'RockExtract Ltd', 'GeoResources', 'Stones Inc', 
                    'Mountain Gems', 'Earth Minerals']
        
        import random
        from datetime import datetime
        
        data = []
        for year in range(1980, 2025):
            for _ in range(random.randint(3, 8)):  # 3-8 записей на каждый год
                rock = random.choice(rock_types)
                amount = round(random.uniform(1000, 50000), 2)
                location = random.choice(locations)
                company = random.choice(companies)
                
                data.append((year, rock, amount, location, company))
        
        # Вставляем данные
        insert_query = sql.SQL("""
            INSERT INTO mining_data (year, rock_type, amount_tonnes, location, company)
            VALUES (%s, %s, %s, %s, %s)
        """)
        
        cur.executemany(insert_query, data)
    
    conn.commit()
    conn.close()
    print("Database initialized with test data.")

if __name__ == '__main__':
    init_db()
