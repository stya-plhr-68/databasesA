CREATE OR REPLACE VIEW EMPLOYEES_VU
AS SELECT employee_id, last_name AS EMPLOYEE, department_id
FROM employees;

DROP VIEW EMPLOYEES_VU;

SELECT * 
FROM EMPLOYEES_VU;

SELECT EMPLOYEE, department_id
FROM EMPLOYEES_VU;

CREATE OR REPLACE VIEW DEPT10
AS SELECT employee_id AS EMPNO, last_name EMPLOYEE, department_id DEPT10
FROM employees 
WHERE department_id = 10
with check option;

SELECT *
FROM DEPT10;

UPDATE DEPT10
SET DEPT10 = 50
WHERE DEPT10 = 10;

SELECT *
FROM DEPT10;

DROP VIEW DEPT10;

CREATE OR REPLACE VIEW  SALARY_VU 
AS SELECT last_name AS EMPLOYEE , department_name DEPARTMENT , salary SALARY, grade_level GRADE
FROM   employees e
JOIN  departments d
ON e.department_id = d.department_id
JOIN job_grades j
ON e.salary <= j.highest_sal
AND e.salary >= j.lowest_sal;

SELECt *
FROM SALARY_VU;




SELECT *
FROM SALARY_VU;

SELECT last_name
FROM employees
ORDER BY salary DESC
FETCH FIRST 5 ROWS ONLY;

SELECT last_name, ROWNUM
FROM ( SELECT last_name, salary FROM employees ORDER BY salary DESC)
WHERE ROWNUM <= 5;