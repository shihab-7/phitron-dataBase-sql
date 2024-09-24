#CREATE database phitron; 

#USE phitron

CREATE Table Student(
Roll CHAR(4),
Name VARCHAR(50),
Email VARCHAR(50),
Address VARCHAR(100),
Age int
);

/*  eigula kisu sorto set kora jay eigula ke constrains bola hoy
 primary key emnitei unique hoy jonno unique define kore dite hoy na
 check (condition) kora jay */
CREATE Table Student1(
Roll CHAR(4) PRIMARY KEY ,
Name VARCHAR(50) NOT NULL,
Email VARCHAR(50) UNIQUE,
Address VARCHAR(100),
Age int CHECK(Age > 10)
);
#DROP Table Student;

/*eita 2nd tecnique eivabeo create kora jay*/
CREATE Table Student(
Roll CHAR(4),
Name VARCHAR(50) NOT NULL,
Email VARCHAR(50) ,
Address VARCHAR(100),
Age INT,
PRIMARY KEY(Roll),
UNIQUE(Email),
CHECK(Age>10)
);

/*eivabe 3rd system a o create kora jay , constraint er por nam diye track rakha jay
j konta k ki hishabe set korsi */
CREATE Table Student2(
Roll CHAR(4) ,
Name VARCHAR(50) NOT NULL,
Email VARCHAR(50) ,
Address VARCHAR(100),
Age INT,
constraint pk_rule PRIMARY KEY(Roll),
constraint unique_rule UNIQUE(Email),
constraint checking_rule CHECK(Age > 10)
);

/*eikhane student2 table er primary key k library table er foreign key
hishabe set kora hoise + 2 ta table connect kora hoise */
CREATE Table library(
Bookname VARCHAR(50),
WhohiredRoll CHAR(4),
FOREIGN KEY (WhohiredRoll) REFERENCES Student2(Roll)
);

INSERT INTO Student2(Roll, Name, email, Address, Age) VALUES ('0001', 'shihab', 'shihab@gmail.com', 'Dhaka', 23);
INSERT INTO library(Bookname, WhohiredRoll) VALUES ('English', '0001');

/*constraint er nam set korle direct error ber korte subidha hoy*/

/* composite key toiri */
CREATE Table course(
courseName CHAR(4),
University VARCHAR(50),
Credit INT,

-- alada alada kore pashe primary key likhle error dibe tai tuple er moto likhte hobe
PRIMARY KEY (courseName , University)
);

-- 3 system a comment kora jay sql a = for multiline(/**/) , for single line(# , --)
-- arithmetic and comparisn operators in sql : 
SELECT *
FROM Student2
WHERE Roll = '0001';

SELECT Age + 2 , Age - 2, Age * 2, Age/2, Age%2
FROM Student2;

SELECT *
FROM Student2
WHERE Age <> 23 ; # eita not equal sign sql a 

SELECT *
FROM Student2
WHERE Age = 23 ;

SELECT *
FROM Student2
WHERE Age > 23 ;

SELECT *
FROM Student2
WHERE Age < 23 ;

SELECT *
FROM Student2
WHERE Age >= 23 ;

SELECT *
FROM Student2
WHERE Age <= 23 ;

/* select er por * sign dile sob key kei add kora bujhay kew chaile akta akta kore 
likhe o define korte pare , abr specific kono key er operation korte chaile sudhu oitao likha jay
from er modhhe table er nam dite hoy r joto operation sob select r where portion a korte hoy
*/

# logical operator AND , OR :

CREATE Table office(
Name VARCHAR(50) NOT NULL,
id INT PRIMARY KEY,
Salary INT,
Age int
);

INSERT INTO office(Name , id , Salary , Age) VALUES ('Rahim' , 00100 , 20000 , 25);
INSERT INTO office(Name , id , Salary , Age) VALUES ('karim' , 00200 , 10000 , 23); 
INSERT INTO office(Name , id , Salary , Age) VALUES ('hamim' , 00300 , 9000 , 21);
INSERT INTO office(Name , id , Salary , Age) VALUES ('mim' , 00400 , 12000 , 20); 

-- now checking in the office whose age is less than 25 and salary greater than 8000

SELECT Name 
FROM office
WHERE Age < 25 AND Salary > 8000;

-- now checking age greater than 21 or salary greater than 10000

SELECT Name , id
FROM office 
WHERE Age > 21 OR Salary > 10000 
/* ja ja information dekhte chai seigula select a likhlei output a oisob e dekhabe condition wise */


