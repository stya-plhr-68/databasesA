REM ********************************************************************
REM Create the JOB_GRADES table that will show different SALARY GRADES 
REM depending on employee's SALARY RANGE

Prompt ******  Creating JOB_GRADES table ....

CREATE TABLE job_grades (
grade_level 		CHAR(1),
lowest_sal 	NUMBER(8,2) NOT NULL,
highest_sal	NUMBER(8,2) NOT NULL
);

ALTER TABLE job_grades
ADD CONSTRAINT jobgrades_grade_pk PRIMARY KEY (grade_level);

REM ***************************insert data into the JOB_GRADES table

Prompt ******  Populating JOB_GRADES table ....

INSERT INTO job_grades VALUES 
	('A'
	,1000
	,2999
	);

INSERT INTO job_grades VALUES 
	('B'
	,3000
	,5999
	);

INSERT INTO job_grades VALUES 
	('C'
	,6000
	,9999
	);

INSERT INTO job_grades VALUES 
	('D'
	,10000
	,14999
	);

INSERT INTO job_grades VALUES 
	('E'
	,15000
	,24999
	);

INSERT INTO job_grades VALUES 
	('F'
	,25000
	,40000
	);

COMMIT;
REM ********************************************************************
Prompt ******  END OF SCRIPT ....
