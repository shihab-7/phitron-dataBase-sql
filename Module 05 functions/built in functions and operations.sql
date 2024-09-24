/*select and where operations */
select *
from departments;
select *
from countries;
select *
from employees;

select first_name ,last_name
from employees;

select *
from employees
where department_id = 60 or salary <= 8000;
select *
from employees
where department_id = 60 and salary <= 8000;

/*arithmetic operations*/

select first_name , salary , salary + 10000 
from employees
where department_id = 100;

select * 
from employees
where salary < 6000;

select distinct job_id -- akoi jinish bar bar thakle baki gula baad diye akta kore dekhay
from employees;

select *
from employees
order by salary desc ; -- descending sort kore dey , chaile ascending vabeo kora jay 

select *
from employees
order by salary desc -- eita 1st 5 ta data dekhay sudhu limit use korle
limit 5;

select *
from employees
order by salary desc
limit 4 , 5; -- eikhane samner jotota baad dibo oita age r j koyta dekhbo oita pore dite hoy

select *
from employees
order by salary desc
limit 5
offset 4; -- uporer moto same kaj , offset a oi value dibo jeta diye bujhabe j koya baad dibo

select *
from employees
where last_name like 'green%'; -- angshik kono keyword diye search korte chaile like + '%str%' age piche r o kisu thake r 'str%' pore kisu thakle r '%str' age kisu thakle

select first_name as name , salary , salary+10000 as 'increase salary'
from employees; -- as diye kono topic er nam define kore dite pari , majhe space diye likhle string akare likhte hoy 'str' er vitor

/* built in functions upper= sob letter upper case kore dey, lower= lower case kore, abs = j kono value er mod output dey
degrees( radian value) = otput degree value , radian(degree value) = output radian value, cos(eikhane radian value dite hoy) = value othoba direct
lekha jay cos(radian(degree)), acos() = cos inverse, same for sin(),asin(),tan(),atan() r sob angular output radian a pabo */

/* ceil kono dosomik er upper value dibe r floor lower ta dibe jemon ceil(25.6)=26 r floor(25.6)=25 , div lekha hoy value div value jemon 10/2 or 10 div 2 same , 
exp(value) eita e^value hishab kore jemon exp(10) = e^10 , exp(-10)= e^-10*/

/*greatest(value list) max value ta output dibe r least(value list) min value dibe, LN(value),log(value) eigula math er moto same output dibe r 2 or 10 base log chaile simply
log2(value) or log10(value) dilei hobe*/

/*mod vagsesh dibe jemon 5 mod 2 , pi() pi er man dibe , pow() function jemon 2^5 k lekha jay pow(2,5), rand() random value dibe 0-1 er moddhe , round() jemon 12.568 round(12.568) output dibe 12.57, sqrt(value) root kore dey,
truncate(value) jodi doshomikk er por 2 ghor er man same rakhte chai na baray tahoile eita use kora hoy
jemon truncate(12.578) dile 12.57 dibe 1 barat .58 korbe na */

select upper(first_name)
from employees;

select cos(radians(90));
select acos(1);
select pi();
select round(12.6789,3); -- doshomik er por koy ghor dekhbo oita , diye pore bole deowa jay

/*group functions : max(),min(),count(),sum(),avg() eigula akta particuler group er upor chalano hoy*/
use dummydb;
select max(salary)
from employees;

select min(salary)
from employees;

select avg(salary)
from employees;

select count(salary)
from employees;

select count(employee_id) -- j value er count ber korbo oitar kono data null thakle oita count hoy na
from employees;  

select count(*) -- row count korbe 
from employees;

/*group by, having = group functions er e akta ongsho, */

select department_id , max(salary) -- protita department er maximum salary er employee k dekhabe jodio similler value thake aktai dekhabe 
from employees
group by department_id;

select department_id, count(*)
from employees
group by department_id; -- eita diye prottek group er under a kotojon employee asa oita dekhabe

-- having = group function er upor applied condition , where r having duita vinno jinish

select department_id , max(salary)
from employees
where department_id <> 20 -- not likhte != or <> duitar j kono akta use kora jay
group by department_id; -- where deowa mane puro group er upor condition deowa

select department_id , max(salary) 
from employees
where department_id != 20
group by department_id
having max(salary) > 5000; -- having deowa mane operation er upor condition deowa

select department_id , max(salary) as maximum_salary
from employees
where department_id != 20
group by department_id
having maximum_salary > 5000; -- uporer operation ta eivabeo lekha jay

/*alter table query = table er structural change , eita update, delete er moto same na*/
/*alter table diye new column add korte = alter table + table er nam + add column+
column name + data type
column baad dite delete na kore drop kora hoy, eita korte = alter table + table name + 
drop column + column name
column modify korte = alter table + table name + modify column + column name + j data type a change korte chai oita
*/
