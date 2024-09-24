# CREATE database programminghero ;

USE programminghero;

/* creat use kore table creat kora hoy 
tar agey use likhe ager create kora database define kore dite hoy
database create korar jonno create database likhe nam dilei create
hoye jay
*/

CREATE Table Student(
Roll CHAR(4) PRIMARY KEY,
Name VARCHAR(50),
Marks DOUBLE
);

# DROP Table Student;
/* drop use kore table remove kora hoy*/

/*table a data insert korte insert into + table name (Elments type) +
values (parameters)
*/

INSERT INTO 
Student(Roll, Name, Marks) VALUES (1, 'shihab', 99.9);

/*data base dekhte chaile database a click kore table a dhuke
table er nam er upor right click korlei view korar option paowa jabe */
INSERT INTO Student
(Roll, Name) VALUES (2, 'rahim');

/*primary key use korle automatic dublicate value nibe na*/

/*kono kisu update korte chaile update table name  + set element name =
value + where primary key  = key , eikhane primary key use na korle jesob similer
element exist kore sob e update hoye jabe tai unique value where a dite hoy
*/

/*UPDATE Student
SET Name = 'Shihab Shariar'
WHERE Roll = 1 ;  
eita update kora jabe na karon database security er 
jonno default vabe eta off thake , update korte chaile safe mood off korte hobe
*/

SET SQL_SAFE_UPDATES = 0;
UPDATE Student
SET Name = 'Shihab Shariar'
WHERE Roll = 1;
SET SQL_SAFE_UPDATES = 1;
/*eikhane 1st a safe update off kore ja korar kore kaj sesh a abr 
on kore deowa holo , akhon ei portion tuku mark kore run dile update 
hoye jabe */

/*kisu delete korte chaile delete from + table name dile sob data delete hoye jabe 
tai where = key name dile sudhu oi row tai delete hoye jabe but delete korar jonno
abr safe mood off kore kaj sesh a abr on kore dite hobe */
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Student
WHERE Roll = 2;
SET SQL_SAFE_UPDATES = 1;


