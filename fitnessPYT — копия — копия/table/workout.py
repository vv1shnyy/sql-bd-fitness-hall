from tabulate import tabulate
import sqlite3
with sqlite3.connect('sqlite.db') as con:
    cursor = con.cursor()
    cursor.execute('SELECT * FROM workout')
    
    a = cursor.fetchall()
    
    h = ['id','client_id','begin_coaching','end_coaching']
    print(tabulate(a,headers = h,tablefmt = 'github'))