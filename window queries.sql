CREATE TABLE employee (
 emp_no NUMBER(10),
 dep_no NUMBER(10),
 emp_name VARCHAR(25),
 salary NUMBER(10),
 comm NUMBER(10),
 job VARCHAR(25),
 bdate DATE 
);


INSERT INTO employee VALUES (101, 10, 'sanket', 22000, 10000, 'assistent', TO_DATE('1990-01-15', 
'YYYY-MM-DD'));
INSERT INTO employee VALUES (102, 10, 'josh', 22000, 2000, 'assistent', TO_DATE('1991-02-20', 
'YYYY-MM-DD'));
INSERT INTO employee VALUES (103, 20, 'hendry', 22000, 1000, 'CLERK', TO_DATE('1992-03-25', 
'YYYY-MM-DD'));
INSERT INTO employee VALUES (104, 70, 'sanket cha papa', 22000, 1000, 'manager', TO_DATE('1989-04-
30', 'YYYY-MM-DD'));
INSERT INTO employee VALUES (105, 10, 'abhay', 22000, 1000, 'assistent', TO_DATE('1993-05-05', 
'YYYY-MM-DD'));
INSERT INTO employee VALUES (106, 50, 'james', 22000, 5000, 'CLERK', TO_DATE('1988-06-10', 
'YYYY-MM-DD'));
INSERT INTO employee VALUES (107, 10, 'bond', 22000, 1000, 'CLERK', TO_DATE('1990-07-15', 
'YYYY-MM-DD'));
INSERT INTO employee VALUES (108, 10, 'hardik', 22000, 3000, 'assistent', TO_DATE('1994-08-20', 
'YYYY-MM-DD'));
INSERT INTO employee VALUES (109, 70, 'rohit', 22000, 1000, 'manager', TO_DATE('1987-09-25', 
'YYYY-MM-DD'));
INSERT INTO employee VALUES (110, 90, 'rishab', 22000, 7000, 'CLERK', TO_DATE('1995-10-30', 
'YYYY-MM-DD'));




SELECT emp_no, emp_name, salary, NVL(comm, 1000) AS new_comm FROM     employee ORDER BY NVL(comm, 1000) DESC;

SELECT emp_no, emp_name, job, salary FROM ( SELECT emp_no, emp_name, job, salary,RANK() OVER (PARTITION BY dep_no ORDER BY salary) AS Lower FROM employee) WHERE Lower = 1;

SELECT emp_no, emp_name, salary, dep_no,  SUM(salary) OVER (PARTITION BY dep_no ORDER BY salary ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS salary_sum FROM employee
ORDER BY dep_no;

SELECT emp_no,emp_name,  salary, SUM(salary) OVER (PARTITION BY dep_no ORDER BY salary  ROWS BETWEEN 3 PRECEDING AND 1 FOLLOWING) AS salary_sum FROM employee ORDER BY dep_no, salary;

SELECT emp_no,emp_name, dep_no, salary, SUM(salary) OVER (PARTITION BY dep_no ORDER BY salary ROWS UNBOUNDED PRECEDING) AS salary_sum FROM employee ORDER BY dep_no, salary;

 

SELECT dep_no, emp_name,  salary, MIN(bdate) KEEP (DENSE_RANK FIRST ORDER BY bdate) AS earliest_hire_date FROM employee GROUP BY dep_no, emp_name, salary ORDER BY dep_no;

SELECT dep_no, emp_name,  salary, MIN(bdate) KEEP (DENSE_RANK FIRST ORDER BY bdate) AS first_hire_date  FROM employee GROUP BY dep_no, emp_name, salary ORDER BY dep_no;

