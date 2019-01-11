SELECT manager_id, job_id, SUM(salary)
FROM employees 
WHERE manager_id < 120
GROUP BY CUBE( manager_id, job_id);

SELECT manager_id, job_id, SUM(salary),
     GROUPING(manager_id) GPR_MNG
FROM employees
WHERE manager_id < 120
GROUP BY CUBE(manager_id, job_id);

SELECT manager_id, job_id, SUM(salary) AS SALARY
FROM employees
WHERE manager_id < 120
GROUP BY CUBE(manager_id,(job_id, SALARY))
ORDER BY manager_id;

SELECT manager_id, job_id, SUM(salary) AS SALARY,
       GROUPING (manager_id) GRP_MNG
FROM employees
WHERE manager_id < 120
GROUP BY CUBE(manager_id,(job_id, SALARY))
ORDER BY manager_id;

SELECT department_id, manager_id, job_id, SUM(salary)
FROM employees
WHERE manager_id < 120
GROUP BY GROUPING SETS ((department_id, manager_id, job_id),(department_id,job_id),(manager_id, job_id))
ORDER BY manager_id;





