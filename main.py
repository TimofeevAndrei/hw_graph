import psycopg2
from settings import PASS
conn = psycopg2.connect(database='Music_Server', user='postgres', password=PASS)
cur = conn.cursor()

conn.close()