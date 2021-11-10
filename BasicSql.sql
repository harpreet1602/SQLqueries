-- Database: Practice Sql

-- DROP DATABASE "Practice Sql";

CREATE DATABASE "Practice Sql"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
-- 	1st class
create table employee(
	ecode int primary key,
	name char(20),
	salary int default 9000,
	prevsalary int check(prevsalary>5000)
);	

drop table employee;
select * from employee;
insert into employee values(1,'Harpreet Singh',100000,5001);
insert into employee values(null,'Charandeep Singh',120000);
insert into employee values(1,'Harpreet Singh'),
(2,'Charandeep Singh'),
(3,'Harjas Singh');


create table stu (
	name varchar(20) not null,
	id int unique not null
);

select * from stu;
insert into stu(id) values(1);
insert into stu(id,name) values(2,'Happy');
insert into stu(name) values('Happy1');

drop table stu;

create table emp(name varchar,ecode varchar);
select * from emp;
insert into emp values('a',1),('b',2);

create table emp_bkp(name varchar,ecode varchar);
insert into emp_bkp(select * from emp);
select * from emp_bkp;


-- 2nd class

--create table
create table student(name varchar(20));
--display table
select * from student;
--add column
alter table student add column marks int;
select * from student;
--drop column
alter table student drop column marks;
select * from student;
--rename table
alter table student rename to stu;
select * from stu;
--add constraint
alter table stu alter column name set not null;
--violate not null constraint
insert into stu values(null);
--drop constraint
alter table stu alter column name drop  not null;
--dob of type data add column
alter table stu add column dob date;
select * from stu;

--check constraint
alter table stu add constraint age check(dob>'2010-01-01');
--violate check constraint
insert into stu(dob) values('2009-01-01');

-- pending




-- run nhi kar rhe
--alter table and primary key
delete from stu;
alter table stu add column id int;
alter table stu student add primary key(id);

select * from stu;
insert into stu(name,id) values('Harpreet',1);

create table schools (name varchar);

alter table schools add column id int primary key;

alter table stu add colmn school_id int;

alter table stu add constraint fk foreign key (school_id) references schools(id);

select * from student;
--all rows delete
delete from stu;

insert into stu values('Harpreet','2000-02-02',1,1);
select * from stu;
insert into schools values('pep school',1);
select * from schools;
--violates foreign key constraint
insert into stu values('Harpreet','2000-02-02',1,10);



-- 3rd class

-- 4th class

