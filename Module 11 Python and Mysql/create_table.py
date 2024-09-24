import mysql.connector

db_name = "python_test_db" # database er namta save kore rakhlam

mydbconnection = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="password",
    database=db_name # bole deowa holo kothay connect hobo
)

mycursor = mydbconnection.cursor() # abr query likhte cursor() function

sqlquery = """
            CREATE TABLE Student
            (
                Roll varchar(4),
                Name varchar(50)
            )
            """ # multiline string er vitor sql query ta likhlam then variable tay save rakhlam

mycursor.execute(sqlquery) # query save kora variable ta exicute kore dilam
print("Create table successful") # compiler a run korar por eita print hole bujha jabe j sob thik e asa

#erpor mysql workbench check korlei dekha jabe

""" protibar code gulo run korte compiler a .\venv\Scripts\activate command
diye enviourment active kore then python .\code_name.py diye run kora jabe 
nahole error dibe  """