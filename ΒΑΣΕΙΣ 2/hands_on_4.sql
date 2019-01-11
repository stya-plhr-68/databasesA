SELECT ' '|| last_name||' earns '||
TO_CHAR(salary,'$99G999D99')||' monthly but wants '||
TO_CHAR(3*salary,'$99G999D99') AS "DREAM SALARIES"
FROM employees;

SELECT last_name, hire_date,
' Monday, the '||
ADD_MONTHS(hire_date, 6)  AS "REVIEW"
FROM employees;

SELECT TO_CHAR(hire_date,'DAY-MON-RRRR')
FROM employees;


SELECT last_name, TO_CHAR(hire_date,'FXDD-MON-YYYY') AS hire_date, 'Monday, the '||
TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6), 'Δευτέρα'), 'fmDDSPTH')||' of '||
TO_CHAR(ADD_MONTHS(hire_date, 6), 'fmMonth')||', '||TO_CHAR(ADD_MONTHS(hire_date, 6), 'YYYY') "Review" 
FROM employees;


SELECT sysdate, 
TO_CHAR(sysdate+1, 'DAY/MON/YY'), TO_CHAR(sysdate+1,'D'),
TO_CHAR(sysdate+1, 'DAY/MON/YY'), TO_CHAR(sysdate,'D') 
FROM dual;

SELECT last_name, hire_date, 
TO_CHAR(hire_date, 'fmDay') AS "DAY"
FROM employees
order by MOD(TO_CHAR(hire_date, 'D') + 6, 7);

SELECT last_name, job_id, 
   DECODE (job_id, 'AD_PRES', 'A',
                   'ST_MAN', 'B',
                   'IT_PROG', 'C',
                   'SA_REP', 'D',
                   'ST_CLERK', 'E',
           '0')
   "GRADE"
FROM employees
ORDER BY GRADE ASC;
   
   SELECT last_name, job_id, 
   CASE job_id WHEN 'AD_PRES' THEN 'A'
               WHEN   'ST_MAN'THEN 'B'
               WHEN   'IT_PROG'THEN 'C'
               WHEN  'SA_REP'THEN 'D'
               WHEN  'ST_CLERK'THEN 'E'
           
   ELSE '0' END "GRADE"
FROM employees
ORDER BY GRADE ASC;