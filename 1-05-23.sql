show databases;
select * from rgm;

update rgm set name = "sravs" where contact = 45567111;
   
update rgm set SESSION = "PYTHON",ADDRESS = "Canada"  where contact = 48576011;

create table test (
id int primary key,
name varchar(30),
college varchar(30), session varchar(30), contact int, address varchar(30));      --  creating a test table 

select * from test;   --   test table is empty

insert into test select * from rgm;  --  copy the data in test table from rgm table

truncate table test;  -- deletes the data from table

select * from student;    
 
 delete from student where name = "Nithin";   --  deletes the entire row of named nithin in the student table

drop table test;   -- deletes the table

Alter table student rename column id to stu_id;    --  changing the column name from id to stu_id

alter table student rename to RGM_student;    --  changing the table name from student to RGM_student

select * from student;     -- shows does not exist table name

select * from RGM_student;

create database db;

 show databases;
 
 drop database db;  --   deletes the  database db 
 
 alter table RGM_student add address varchar(30);   --  adding new column in already existing table
 
 update RGM_student set address="HYD" where stu_id = 1004;
 
 select * from RGM_student;
 
 Alter table  RGM_student modify column address varchar(50);
 
alter table practice1.salesman modify column  commission float;

select * from practice1.salesman;

alter table RGM_student drop column address;

select min(marks) from RGM_student;

select max(marks) from RGM_student;

select avg(marks) from RGM_student;

select sum(marks) from RGM_student;

select count(marks) from RGM_student;

select sum(marks) as total from RGM_student;





create database exercise;

create table customer (cust_id int primary key ,Name varchar(30) ,city varchar(30),grade int ,salesman_id int);


INsert into customer values(1001,"Raj","Banglore",120,2001),(1002,"Raghav","Hyderabad",250,2004),(1005,"Ramu","Chennai",95,2002),(1006,"Ramakrishna","Hyderabad",100,2004),(1003,"Raghavendra","Banglore",240,2007),(1007,"Ravi","Mumbai",140,2009),(1008,"Raghu","Delhi",180,2006);
  
select *from customer;

select * from customer where grade > 100;

select * from customer where grade <= 100;

select * from customer where grade >=100 order by grade;

select * from  customer where city = "Hyderabad" and grade >=100; 


select * from  customer where city = "Hyderabad" or grade >=100; 



select * from  customer where  not city = "Hyderabad" or grade >100; 


select * from  customer where not city = "Mumbai" and grade >200; 

select * from  customer where not city = "Mumbai" or grade >200; 









