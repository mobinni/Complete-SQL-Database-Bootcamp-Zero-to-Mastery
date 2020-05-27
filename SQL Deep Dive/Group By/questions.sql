SELECT DISTINCT a.hire_date, count(b.hire_date) as "amount"
from employees as a, employees as b
where a.hire_date = b.hire_date
GROUP BY a.hire_date
order by "amount" DESC;
