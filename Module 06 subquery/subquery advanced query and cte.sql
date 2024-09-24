/*sub-query means query inside a query*/
use dummydb;

select *
from employees
where salary > 5000; -- eikhane jodi akta nirdisto employeer salary theke compare korte chai tahole 5000 er jaygay oi query ta likhlei oita subquery hoye jabe

select *
from employees
where salary > (select salary from employees where name = 'steven'); -- eitai sub query

/*chaile select(subquery), from(subquery) othoba where(subquery) database a chalano jay*/

select *
from employees
where first_name = 'peter';

select *
from employees 
where employee_id = 144;

select *
from employees
where salary < (select salary
				from employees 
                where employee_id = 144) ; -- jar id 144 tar theke kom salary jara pay

select *
from employees
where salary = (select max(salary)
				from employees);    -- jar salary sobche beshi takey dekhabe 


select *
from employees 
where department_id = 20; -- akhon jodi department id jana na tahek tahole subquery diye ber kore nibo

select *
from employees
where department_id = ( select department_id
						from departments
						where department_name = 'marketing'
						); -- ei subquery ta departments table theke department id khuje niye ashse

select avg(salary)
from employees 
where department_id = (select department_id
						from departments
                        where department_name = 'marketing'); -- average salary ber kore dibe 

/*to chaile eivabe max,min sob group functions use kora jay*/
select count(*) as members
from employees 
where department_id = (select department_id
						from departments
                        where department_name = 'it'); -- kono department er mot members dekhte chaile eivabe kora jay  

select sum(salary) as total_salary
from employees
where job_id = (select job_id
				from jobs
                where job_title = 'programmer'); -- programmer der mot salary koto ? ber korbo
                
/*advanced subquery */
use dummydb;

select salary
from employees
order by salary desc -- second highest salary jar take dekhte 1st a descending order a sajay niye 2nd value ta ofset diye ber kora hoise 
limit 1
offset 1;

-- 2nd method
select *
from employees
where salary = (select salary
				from employees
				order by salary desc
				limit 1
				offset 1); -- eitao subquery but valo approach na
-- 3rd approach
select max(salary)
from employees
where salary < (select max(salary)
				from employees
                );
                
-- employee k dekhte chaile 
select *
from employees
where salary = (select max(salary) 
				from employees 
                where salary <
							(select max(salary) 
							from employees)
				); -- nested subquery
                
-- who get more salary than manager
select *
from employees as emp
where salary > (select salary
				from employees as mgr
                where emp.manager_id = mgr.employee_id
                ); -- advanced subquery
                
-- who works same as manager
select *
from employees as emp
where job_id = (select job_id
				from employees as mgr
                where emp.manager_id = mgr.employee_id
                ); -- j j employee er job field same as manager er job field

/*CTE = common table expressions (with as), akta query k akta variable a save kore rekhe pore use kora k cte bole*/
/* cte banaite chaile WITH + j nam dite chai oita + AS + (j query ta pore use korte chai) pore oita use korte chaile 
SELECT * FROM + WITH er por j nam a variable ta banaisi oita */

with tmp as( -- tmp a query ta save kore rakhlam
	select *
	from employees
	limit 5
	)
    
select *
from tmp; -- tmp theke save kora query ta use korlam

-- examples of CTE

with avg_it as
	(
		select avg(salary) as sal1 -- it department
		from employees
		where department_id = 60
	),
	markting as -- bar abr with na likhe akbar likehi comma diye diye sob set kora jay
	(
		select max(salary) as sal2
		from employees
		where department_id = 20 -- marketing department
	)
    
    select *
    from employees
    where salary > (select sal1 from avg_it) and salary < (select sal2 from markting);
