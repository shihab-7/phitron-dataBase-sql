/*
primary key : unique value in a table to find a row
foreign key : A value come from another table , foreign key is used to put only valid data in a table
*/

CREATE DATABASE MODULE9;
USE MODULE9;

CREATE TABLE student
(
	s_roll varchar(4) PRIMARY KEY ,
    name varchar(50),
    phone varchar(11)
);

CREATE TABLE courseEnroll
(
	courseName varchar(11) PRIMARY KEY ,
    c_roll varchar (4),
    FOREIGN KEY (c_roll) REFERENCES student (s_roll) -- making foreign key
);

drop table student,courseenroll;

-- foreign key on delete operation 

CREATE TABLE student
(
	s_roll varchar(4) PRIMARY KEY ,
    name varchar(50),
    phone varchar(11)
);

CREATE TABLE course
(
	courseNo varchar(5) PRIMARY KEY ,
    couseName varchar (50)
);

CREATE TABLE Enroll
(
	roll varchar(4),
	courseNo varchar(5),
    date DATE,
    FOREIGN KEY (roll) REFERENCES student (s_roll) ON DELETE CASCADE,
    FOREIGN KEY (courseNo) REFERENCES course(courseNo) ON DELETE CASCADE
);
/*ON delete CASCADE use korle foreign key delete korte r somossa hoy na main table er key ta delete korlei sob jaygar foreign key
auto delete hoye jay , akhon delete data tar position a jodi null assign korte chai tahoile just cascade na likhe set null likhlei hobe*/

-- SET IN SQL

/* set a unique data sort akare thake similar data baad jay 
mysql a set er 4 ta operation asa :
1) union : sob data combine kore uniquely sequenced hobe
2) union all : sob datai thakbe emonki repetative datao
3) intersection : just common data gula thakbe
4) minus : jeigula common oigula baad diye jegula baki thakbe oigula nibe 
*/

USE DUMMYDB;

-- union operation
SELECT * -- eikhane ja likhbo
FROM EMPLOYEES
WHERE SALARY > 10000
UNION
SELECT * -- eikhaneo tai likhte hobe 
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 100;

-- intersection operation
SELECT * -- eikhane ja likhbo
FROM EMPLOYEES
WHERE SALARY > 10000
INTERSECT -- eita thik e asa but error dekhaileo result dibe
SELECT * -- eikhaneo tai likhte hobe 
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 100;

-- union all operation
SELECT * -- eikhane ja likhbo
FROM EMPLOYEES
WHERE SALARY > 10000
UNION ALL
SELECT * -- eikhaneo tai likhte hobe 
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 100;

-- minus operation

SELECT * -- eikhane ja likhbo
FROM EMPLOYEES
WHERE SALARY > 10000
MINUS -- maybe eita amr install kora version a kaj kore na but higher version a kaj korar kotha
SELECT * -- eikhaneo tai likhte hobe 
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 100;

-- minus er kaj onno vabe kora jay AND diye

SELECT * -- eikhane ja likhbo
FROM EMPLOYEES
WHERE SALARY > 10000 AND DEPARTMENT_ID != 100;

-- problem solve from leetcode 

-- problem no 182.dublicate emails
SELECT EMAIL
FROM PERSON
GROUP BY EMAIL
HAVING COUNT(EMAIL) > 1;

-- problem no 181. employee earning more than manager
SELECT E.NAME AS EMPLOYEE
FROM EMPLOYEE AS E , EMPLOYEE AS M
WHERE E.MANAGERID = M.ID AND E.SALARY > M.SALARY;

-- problem no 183.customer who never order
SELECT CUSTOMERS.NAME AS CUSTOMERS
FROM CUSTOMERS
	LEFT JOIN ORDERS
		ON CUSTOMERS.ID = ORDERS.CUSTOMERID
GROUP BY CUSTOMERS.ID
HAVING COUNT(ORDERS.ID) = 0 ;
