from tabulate import tabulate
import sqlite3
with sqlite3.connect('sqlite.db') as con:
    cursor = con.cursor()
    cursor.execute('SELECT * FROM season_ticket')
    
    a = cursor.fetchall()
    
    h = ['id','time_ticket_id', 'hall_id']
    print(tabulate(a,headers = h,tablefmt = 'github'))