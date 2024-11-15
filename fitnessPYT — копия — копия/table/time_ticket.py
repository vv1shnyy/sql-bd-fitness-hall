from tabulate import tabulate
import sqlite3
with sqlite3.connect('sqlite.db') as con:
    cursor = con.cursor()
    cursor.execute('SELECT * FROM time_ticket')
    
    a = cursor.fetchall()
                      
    h = ['id','one_traning', 'month','year']
    print(tabulate(a,headers = h,tablefmt = 'github'))