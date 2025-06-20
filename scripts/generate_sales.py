# scripts/generate_sales.py
import pandas as pd
from faker import Faker
import random

fake = Faker()

data = []
for _ in range(500):
    date = fake.date_between(start_date="-1y", end_date="today")
    country = random.choice(['France', 'Allemagne', 'Espagne', 'Italie', 'UK'])
    product = random.choice(['Ordinateur', 'Téléphone', 'Casque', 'Chargeur', 'Clavier'])
    quantity = random.randint(1, 5)
    unit_price = random.choice([49.99, 99.99, 149.99, 299.99, 499.99])
    revenue = quantity * unit_price
    channel = random.choice(['Retail', 'E-commerce'])

    data.append([date, country, product, quantity, unit_price, revenue, channel])

df = pd.DataFrame(data, columns=["date", "country", "product", "quantity", "unit_price", "revenue", "channel"])
df.to_csv("data/sales_data.csv", index=False)
