from tabulate import tabulate
import sqlite3
with sqlite3.connect('sqlite.db') as con:
    cursor = con.cursor()
    cursor.execute('SELECT * FROM fitness_room')
    
    a = cursor.fetchall()
    
    h = ['id','client_id', 'hall_id','season_ticket','coach']
    print(tabulate(a,headers = h,tablefmt = 'github'))