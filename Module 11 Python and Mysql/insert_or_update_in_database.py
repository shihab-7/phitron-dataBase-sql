import mysql.connector

db_name = "python_test_db"

mydbconnection = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="password",
    database=db_name
) # database ta track rakha same vabei kora hoilo

mycursor = mydbconnection.cursor() #abr new query likhte ei fnc neowa

sqlquery = """
            INSERT INTO Student(Roll, Name)
            VALUES('101', 'Kawshik Kumar Paul')
            """ #multiline query
mycursor.execute(sqlquery) # execute to hoy but kisu update korte chaile commit() fnc use korte hobe
mydbconnection.commit() # joto update related query likhbo sob kisutei commit() use hobe

# database er j konokisu change er query hoilei commit() use hobe 

print("Insert table successful")