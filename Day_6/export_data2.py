import mysql.connector
from openpyxl import Workbook

db = mysql.connector.connect(
    host = 'localhost',
    port = 3306,
    user = 'root',
    password = '12345678',
    database = 'golf_want_to_buy'
)

cursor = db.cursor()
sql = '''
    SELECT p.id, p.title, p.price, c.title AS category
    FROM products AS p
    LEFT JOIN categories AS c
    ON p.category_id = c.id
'''
cursor.execute(sql)
products = cursor.fetchall() #ดึงข้อมูลทั้งหมด

workbook = Workbook()
sheet = workbook.active
sheet.append(['ID', 'ชื่อสินค้า', 'ราคา', 'ประเภทสินค้า'])

for p in products:
    print(p)
    sheet.append(p)

workbook.save(filename = 'Export_Data2.xlsx')

#ปิดการเชื่อมต่อ
cursor.close()
db.close()
