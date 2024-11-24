import mysql.connector
import faulthandler
import pymysql

if __name__ == "__main__":
    try:
        faulthandler.enable()
        db_connection = pymysql.connect(host="localhost", user="weintek", password="7a3zkmor", database="weintekdatabase")
        print("ASDDSA")
        db_cursor = db_connection.cursor()
    except Exception as e:
        print(e)
    query = f"SELECT * FROM zlecenia"
    db_cursor.execute(query)
    rows = db_cursor.fetchall()
    print("ASD")
    print(rows)