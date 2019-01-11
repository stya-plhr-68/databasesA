alter user hr identified by hr_psswd;
SELECT sysdate from dual;

SELECT employee_id, last_name, salary, ROUND(0.155 *salary + salary,0) as new_salary
FROM employees;

SELECT employee_id, last_name, salary, ROUND(0.155 *salary + salary,0) as new_salary, 0.155 *salary Increase
FROM employees;

SELECT last_name as NAME, LENGTH(last_name) Length
FROM employees
WHERE last_name LIKE '%M%' OR last_name LIKE '%A%' OR last_name LIKE '%J%';

SELECT last_name, ROUND(MONTHS_BETWEEN( sysdate ,hire_date),0) AS months_worked
FROM employees
ORDER BY months_worked ASC;

SELECT  last_name,LPAD(salary,15,'$') AS salary
FROM employees;

SELECT  ' '||SUBSTR(last_name,1,8)||' '|| RPAD(' ', LENGTH(salary), '*') AS Employees_and_their_salaries
FROM employees
ORDER BY salary DESC;

SELECT last_name, round((sysdate - hire_date)/7) as TENURE
FROM employees
WHERE department_id=90
ORDER BY TENURE DESC;

SELECT  ' '||SUBSTR(CONCAT(SUBSTR(last_name,1,8), SUBSTR( RPAD(' ', salary, '*'),0, LENGTH(salary) +1)),1,9) AS Employees_and_their_salaries
FROM employees
ORDER BY salary DESC;
