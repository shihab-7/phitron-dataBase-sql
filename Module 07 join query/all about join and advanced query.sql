use dummydb;

/*duita alada alada table er data akta single table a dekhanor jonno join use kora hoy
but chaile join sarao kora jay , JOIN DIYE KORLE TIME KOM LAGE + EFFICIENT HOY */
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

SELECT EMPLOYEES.FIRST_NAME , DEPARTMENTS.DEPARTMENT_NAME 
FROM EMPLOYEES , DEPARTMENTS
WHERE EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID; -- JOIN USE SARA

SELECT EMPLOYEES.FIRST_NAME , DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES
	JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;
    -- eita join use kore kora. select + ja ja combine kore dekhbo oigular key + from 1st table tar name + join + je table ta join korbo oitar name + on + ki condition er vittite join korbo oita

SELECT EMPLOYEES.FIRST_NAME , DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES
	JOIN DEPARTMENTS USING (DEPARTMENT_ID); -- EIVABEO KORA JAY but eitar osubidha holo jodi duta table a vinno nam deowa thake ake jinish er jonno tai (join -- on) er structure tai best.

/*ineer join acts like intersection in set common data gulo niye join kore , 
left join holo j table tar sathe join join korbo oitar sob datai thakbe kintu onno table a same row er data na thakle oita auto null boshe jabe,
 right join holo left join er ulta,
 cross join a sob e thakbe*/   
 
 USE DUMMYDB;
 
SELECT EMPLOYEES.FIRST_NAME , DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES
	INNER JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;
 
 -- structure same sudhu join er moto but just inner,left,right or cross j join korbo oita join er samne likhe dilei hobe

SELECT EMPLOYEES.FIRST_NAME , DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES
	LEFT JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

SELECT EMPLOYEES.FIRST_NAME , DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES
	RIGHT JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID; 

SELECT EMPLOYEES.FIRST_NAME , DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES
	CROSS JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

/*self join holo oi table er sathe or nijer e join */
SELECT E.FIRST_NAME , M.SALARY 
FROM EMPLOYEES AS E
	JOIN EMPLOYEES AS M ON E.EMPLOYEE_ID = M.EMPLOYEE_ID; -- eikhane same table duita vinno nam a track rekhe join kora holo


-- examples =====>>
# print employee's first name with manager name in a same table
SELECT m.FIRST_NAME , e.FIRST_NAME
FROM EMPLOYEES AS e
	JOIN EMPLOYEES AS m
    ON e.EMPLOYEE_ID = m.MANAGER_ID;

# emon department er nam show korte hobe jekhane kono employee nai
SELECT DEPARTMENTS.DEPARTMENT_NAME
FROM DEPARTMENTS
	LEFT JOIN EMPLOYEES
		ON DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID
WHERE EMPLOYEES.DEPARTMENT_ID IS NULL;

# DUITA table ER employee er first name, salary ebong tar dept. er average salary er cheye se koto kom salary paay

SELECT 
	EMPLOYEES.FIRST_NAME , 
    EMPLOYEES.SALARY , 
    (SELECT AVG(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID)-EMPLOYEES.SALARY
FROM EMPLOYEES
	JOIN DEPARTMENTS
		ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

#seisob dept er nam show korte hobe jader minimum salary 5000 er beshi

SELECT DEPARTMENT_NAME , MIN(SALARY), AVG(SALARY)
FROM EMPLOYEES as e
	JOIN DEPARTMENTS as d
		ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY DEPARTMENT_NAME
HAVING MIN(SALARY) > 5000;




