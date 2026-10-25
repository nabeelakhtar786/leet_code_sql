/*select max(salary) as secondhighestsalary
- from Employee
-- where salary<(select max(salary)from employee);

====================
===================================
select 
(select distinct salary
from employee
order by salary desc
limit 1 offset 1) as SecondHighestSalary;


select 
(
    select distinct salary
from 
        (select salary, dense_rank() over (order by salary desc) as rnk
         from employee)
as rankedsalary
where rnk =2
) as SecondHighestSalary;
*/

select
(
   select distinct salary 
   from 
      (
        select salary,dense_rank() over(order by salary desc) as rankk  
        from employee 
      ) as highestsalary
    where rankk =2
) as SecondHighestSalary;