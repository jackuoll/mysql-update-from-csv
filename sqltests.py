import mysql.connector
from sql import sqlscript

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="password",
  database="mysqltest"
)

mydb.autocommit = True

cursor = mydb.cursor()

sqlscript.create_subscriber_table(cursor)
sqlscript.run_first_subscriber_import(cursor)
sqlscript.run_subscriber_table_update(cursor)
cursor.execute("select * from `subscribers` where updated=true;")

result = cursor.fetchall()

for x in result:
    print(x)

sqlscript.drop_subscriber_table(cursor)
