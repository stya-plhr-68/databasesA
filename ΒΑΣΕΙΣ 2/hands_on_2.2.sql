CREATE SEQUENCE DEPT_ID_SEQ
                INCREMENT BY 10
                START WITH 200
                MAXVALUE 1000
                NOCACHE
                NOCYCLE;
                
INSERT INTO departments (department_id, department_name, location_id)
VALUES (DEPT_ID_SEQ.NEXTVAL,'education',1700);

INSERT INTO departments (department_id, department_name, location_id)
VALUES(DEPT_ID_SEQ.NEXTVAL,'administration',1800);
   
COMMIT;

CREATE INDEX last_name_idx
ON employees(last_name);

CREATE SYNONYM EMP_SYN 
FOR employees;

SELECT last_name

FROM EMP_SYN
WHERE employee_id = 174;
