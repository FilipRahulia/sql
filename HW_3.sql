-- Part 1 - mywork database
-- Write sql 
-- 	1. Create TABLE mywork.EMPLOYEE with next columns: EMPLOYEE_ID, FIRST_NAME, LAST_NAME, ADDRESS, COUNTRY, STATE, ZIP_CODE, PHONE, HIREDATE, SALARY

create database if not exists mywork;
-- drop database if exists mywork;
create table if not exists mywork.employee (
employee_id int not null,
first_name varchar (50),
last_name varchar (50),
address varchar (100),
country varchar (30),
state varchar (30),
zip_code varchar (20),
phone varchar (20),
hiredate date,
salary decimal (8, 2),
primary key (employee_id));

--  2. Create dept table with next columns: deptno, dname, loc. Insert several lines
create table if not exists mywork.dept (
deptno int not null,
dname varchar (15),
loc varchar (30),
primary key (deptNo));

insert into mywork.dept values (1,'ACCOUNTING','ST LOUIS');
insert into mywork.dept values (2,'RESEARCH','NEW YORK');
insert into mywork.dept values (3,'SALES','ATLANTA');
insert into mywork.dept values (4,'OPERATIONS','SEATTLE');

--  3. Add column 'country' to dept table in mywork database
alter table mywork.dept add column country varchar (30);
-- alter table mywork.dept drop column country;

-- 	4. Rename column 'loc' to 'city'
alter table mywork.dept rename column loc to city;

-- 	5. Add three more departments: HR, Engineering, Marketing
insert into  mywork.dept (deptno, dname, city) values 
(5, 'HR', 'San Francisko'),
(6, 'engeneering', 'New York'),
(7, 'marketing', 'San Diego');
-- select * from mywork.dept;
-- 

-- 	6. Write sql statement to show which department is in Atlanta
select * from mywork.dept where city = 'Atlanta';
--     Save your work 


-- Part 2  - library_simple database
-- Run library_simple.sql script  (takes a few minutes)
-- (source: https://github.com/amyasnov/stepic-db-intro/tree/2650f9a7f9c72e1219ea93cb4c4e410cca046e54/test)

-- Look at table relationships in EER Diagram

-- Write sql 
-- 	1. What is the first name of the author with the last name Swanson?
select first_name, last_name from library_simple.author
where last_name = 'Swanson';

-- 	2. How many pages are in Men Without Fear book?
select name, page_num from library_simple.book
where name = 'Men Without Fear';

-- 	3. Show all book categories that start with with letter 'W'
select * from library_simple.category
where name like 'w%';