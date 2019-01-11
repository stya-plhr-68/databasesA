CREATE USER GUEST_HR
IDENTIFIED BY GUEST_PASSWD;    /* thelei os sys*/

GRANT CREATE session to GUEST_HR; /* thelei os sys*/
GRANT SELECT ON departments TO GUEST_HR;

INSERT INTO departments (department_id, department_name) 
VALUES (500, 'Education');


CREATE USER GUEST_HR2    /* thelei os sys*/
IDENTIFIED BY GUEST_PASSWD2;

GRANT SELECT ON employees TO GUEST_HR WITH GRANT OPTION;
GRANT SELECT ON employees TO GUEST_HR2;

REVOKE SELECT ON employees FROM GUEST_HR;



GRANT SELECT ON employees TO GUEST_HR WITH GRANT OPTION;
GRANT SELECT ON employees TO GUEST_HR2 WITH GRANT OPTION;


