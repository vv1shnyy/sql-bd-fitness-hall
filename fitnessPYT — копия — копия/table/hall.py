from tabulate import tabulate
import sqlite3
with sqlite3.connect('sqlite.db') as con:
    cursor = con.cursor()
    cursor.execute('SELECT * FROM hall')
    
    a = cursor.fetchall()
    
    h = ['id','gym', 'dance','box']
    print(tabulate(a,headers = h,tablefmt = 'github'))