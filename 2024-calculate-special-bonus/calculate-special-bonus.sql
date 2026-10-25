select employee_id,
if (employee_id %2!=0 and name not regexp '^M', salary ,0) AS Bonus
from employees
order by employee_id;