CREATE TABLE sal_history (employee_id, hire_date, salary)
AS SELECT employee_id, hire_date, salary
 FROM employees
WHERE 1=2;

CREATE TABLE mgr_history (employee_id, manager_id, salary)
AS SELECT employee_id, manager_id, salary
FROM employees
WHERE 1=2;

CREATE TABLE special_sal (employee_id, salary)
AS SELECT employee_id, salary
FROM employees
WHERE 1=2;

SELECT employee_id, hire_date, manager_id, salary
FROM employees 
WHERE employee_id < 125 AND salary<20000;

SELECT employee_id,  salary
FROM mgr_history
WHERE employee_id < 125;

rollback;
INSERT ALL
  WHEN SAL < 20000 THEN 
    INTO special_sal VALUES(EMPID, SAL)
  WHEN SAL < -1 THEN   
    INTO sal_history VALUES (EMPID, HIDA, SAL)
    INTO mgr_history VALUES (EMPID, MNG, SAL)
    SELECT employee_id EMPID, salary SAL, manager_id MNG, hire_date HIDA
    FROM employees
    WHERE employee_id < 125; 
  
CREATE TABLE SALES_SOURCE_DATA 
(employee_id NUMBER (6), WEEK_ID NUMBER(2),
SALES_MON NUMBER(8,2), 
SALES_TUE NUMBER(8,2),
SALES_WED NUMBER(8,2),
SALES_THUR NUMBER(8,2),
SALES_FRI NUMBER(8,2));

INSERT INTO SALES_SOURCE_DATA VALUES
(178, 6,1750, 2200, 1500, 1500, 3000);
commit;

CREATE TABLE SALES_INFO
(employee_id NUMBER(6),
WEEK NUMBER(2), 
SALES NUMBER(8,2));

INSERT ALL 
   INTO SALES_INFO  VALUES(EMPID,WEID,MON)
   INTO SALES_INFO  VALUES(EMPID,WEID,TUE)
   INTO SALES_INFO  VALUES(EMPID,WEID,WED)
   INTO SALES_INFO  VALUES(EMPID,WEID,THUR)
   INTO SALES_INFO  VALUES(EMPID,WEID,FRI)
   SELECT employee_id EMPID,  WEEK_ID WEID,
          SALES_MON MON, SALES_TUE TUE,SALES_WED WED, SALES_THUR THUR, SALES_FRI FRI
   FROM SALES_SOURCE_DATA;    
   
SELECT employee_id,week, sales
FROM SALES_INFO;

CREATE TABLE emptemp
AS SELECT *
FROM employees
WHERE rownum <10;

UPDATE emptemp 
SET first_name = 'Maria';

MERGE INTO emptemp c
  USING employees e
  ON (c.employee_id = e.employee_id)
WHEN MATCHED  THEN 
  UPDATE SET
  c.first_name = e.first_name,
  c.last_name = e.last_name,
  c.email = e.email,
  c.phone_number = e.phone_number,
  c.hire_date = e.hire_date,
  c.job_id = e.job_id,
  c.salary = e.salary,
  c.commission_pct = e.commission_pct, 
  c.manager_id = e.manager_id,
  c.department_id = e.department_id  /* an thelo mono tis 9 den kano apo edo kai kato*/
  WHEN NOT MATCHED THEN 
INSERT VALUES (e.employee_id, e.first_name, 
e.last_name, e.email, e.phone_number,
e.hire_date, e.job_id, e.salary,
e.commission_pct, e.manager_id, 
e.department_id);

SELECT *
FROM emptemp
minus
SELECT * 
FROM employees;
