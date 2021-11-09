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



