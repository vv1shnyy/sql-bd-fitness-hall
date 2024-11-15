from tabulate import tabulate
import sqlite3
with sqlite3.connect('sqlite.db') as con:
    cursor = con.cursor()
    cursor.execute('SELECT * FROM client')
    
    a = cursor.fetchall()
    
    h = ['id','full_name', 'hall_id','begin_ticket','end_ticket']
    print(tabulate(a,headers = h,tablefmt = 'github'))