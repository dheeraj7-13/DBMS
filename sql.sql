CREATE TABLE employee (

emp_no NUMBER(10),

dep_no NUMBER(10),

emp_name VARCHAR(25),

salary NUMBER(10),

comm NUMBER(10),

job VARCHAR(25)

);


insert into employee VALUES (101,10,'sanket',22000,1000,'assistent');

insert into employee VALUES (102,10,'josh',22000,1000,'assistent');

insert into employee VALUES (103,20,'hendry',22000,1000,'CLERK');

insert into employee VALUES (104,70,'sanket cha papa',22000,1000,'manager');

insert into employee VALUES (105,10,'abhay',22000,1000,'assistent');

insert into employee VALUES (106,50,'james',22000,1000,'CLERK');

insert into employee VALUES (107,10,'bond',22000,1000,'CLERK');

insert into employee VALUES (108,10,'hardik',22000,1000,'assistent');

insert into employee VALUES (109,70,'rohit',22000,1000,'manager');

insert into employee VALUES (110,90,'rishab',22000,1000,'CLERK');


select dep_no,job,count(*),sum(salary) from employee group by

rollup (dep_no,job);
SELECT COUNT(8)     FROM employee;

  


set pagesize 1000
set linesize 1000

