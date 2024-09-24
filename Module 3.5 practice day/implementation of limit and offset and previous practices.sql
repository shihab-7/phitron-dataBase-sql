# part 1
CREATE DATABASE new_assignment;

USE new_assignment;

CREATE TABLE Employee(
EmpId INT NOT NULL,
EmpName VARCHAR(50) NOT NULL,
JoiningYear YEAR NOT NULL,
BirthDay DATE ,
Dsignation VARCHAR(50),
Salary INT NOT NULL,

constraint checking_rule CHECK(BirthDay <= '2000-12-31'),
constraint pk_rule PRIMARY KEY (EmpId, JoiningYear)
);

INSERT INTO Employee(EmpId , EmpName , JoiningYear , BirthDay , Dsignation , Salary ) 
VALUES (100 , 'A' , '2000' , '1970-12-17' , 'Adminstrator' , 21000);
INSERT INTO Employee(EmpId , EmpName , JoiningYear , BirthDay , Dsignation , Salary ) 
VALUES (101 , 'B' , '1970' , '1960-12-22' , 'Manager' , 150000);
INSERT INTO Employee(EmpId , EmpName , JoiningYear , BirthDay , Dsignation , Salary )
VALUES (102 , 'C' , '1990' , '1971-04-04' , 'IT operator' , 30000);
INSERT INTO Employee(EmpId , EmpName , JoiningYear , BirthDay , Dsignation , Salary ) 
VALUES (103 , 'D' , '2001' , '1930-06-06' , 'Director' , 25000);
INSERT INTO Employee(EmpId , EmpName , JoiningYear , BirthDay , Dsignation , Salary ) 
VALUES (104 , 'E' , '2003' , '1940-11-03' , 'Seniour Director' , 200000);
INSERT INTO Employee(EmpId , EmpName , JoiningYear , BirthDay , Dsignation , Salary ) 
VALUES (105 , 'F' , '2002' , '1960-05-04' , 'Marcketer' , 16000);
INSERT INTO Employee(EmpId , EmpName , JoiningYear , BirthDay , Dsignation , Salary ) 
VALUES (106 , 'G' , '2000' , '1970-07-11' , 'Cleaner' , 7000);
INSERT INTO Employee(EmpId , EmpName , JoiningYear , BirthDay , Dsignation , Salary ) 
VALUES (107 , 'H' , '1995' , '1965-07-21' , 'Juniour employee' , 10000);
INSERT INTO Employee(EmpId , EmpName , JoiningYear , BirthDay , Dsignation , Salary ) 
VALUES (108 , 'I' , '2002' , '1971-12-08' , 'Juniour employee' , 10000);
INSERT INTO Employee(EmpId , EmpName , JoiningYear , BirthDay , Dsignation , Salary ) 
VALUES (109 , 'J' , '2000' , '1973-12-12' , 'Juniour employee' , 10000);
INSERT INTO Employee(EmpId , EmpName , JoiningYear , BirthDay , Dsignation , Salary ) 
VALUES (110 , 'K' , '1999' , '1925-09-01' , 'Advisor' , 25000);

SELECT * FROM Employee LIMIT 5;

SELECT * FROM Employee LIMIT 2 OFFSET 7; -- OFFSET diye table er upor theke mot koto row baad porbe oita define kora hoy r limit diye koyta show korte hobe oita define kora hoy
-- eita direct limit diyei implement kora jay
SELECT * FROM Employee ORDER BY EmpId LIMIT 7,2; 

SELECT * 
FROM Employee
ORDER BY JoiningYear ASC; -- eita specific key er data onushare asccending order a sort kore 

SELECT * 
FROM Employee
ORDER BY JoiningYear DESC; -- eita specific key er data onushare desccending order a sort kore 

# part 2

CREATE TABLE Employee2(
EmployeeId INT PRIMARY KEY,
EmployeeName VARCHAR(50) NOT NULL,
EmployeeSalary INT,
JoiningDate DATE NOT NULL
);

INSERT INTO Employee2(EmployeeId , Employeename , EmployeeSalary , JoiningDate)
VALUES (101 , 'AKIB' , 15000 , '2000-12-12');
INSERT INTO Employee2(EmployeeId , Employeename , EmployeeSalary , JoiningDate)
VALUES (201 , 'RAKIB' , 16000 , '1993-01-07');
 
DELETE FROM Employee2
WHERE EmployeeId = 201; -- deleted table data

SELECT * FROM new_assignment.employee2; -- to print or show data
