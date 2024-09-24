import mysql.connector

# mysql er server er sathe connect hoye thaklam
mydbconnection = mysql.connector.connect(  
    host="localhost",
    user="root",
    passwd="password"
)

#print(mydbconnection) check kore dekhlam j kaj kore ki na , successfully print hoile kaj sesh

""" python diye database toiri """

db_name = "python_test_db" #eita database er nam

mycursor = mydbconnection.cursor() # sql command likhte protibar cursor() function nite hobe

sqlQuery = "CREATE DATABASE " + db_name # nam soho database toiri hoilo

mycursor.execute(sqlQuery) # query sql server a exicute hobe

# mysql workbench a check korle dekhajabe query create hoye gese