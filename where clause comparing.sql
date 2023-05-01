create table student ( 
id int primary key not null,
name varchar(30) not null,
marks int not null
);
INSERT into student VALUES (1000,"Ram",98);
INSERT into student VALUES (1001,"Arjun",83);
INSERT into student VALUES (1002,"Varun",78);
INSERT into student VALUES (1003,"Dharam",87);
INSERT into student Values (1004,"Nani",91);
INSERT into student Values (1005,"Gopi",94);
Insert into student values(1006,"Nikhil",85);
Insert into student values(1007,"Nithin",87);
Insert into student values(1008,"Teja",75);
insert into student values(1009,"Tarak",83);
 
 select * from student;
 
 select * from student where marks<=85;
 
  select * from student where marks>=85;
 
 select * from student where marks < 85;
 
  select * from student where marks>85;
 
  select * from student where marks=85;

 select * from student where marks!=85;
 
 select * from student where marks<>85;
  
select * from student where marks between 85 and 99;

select * from student where marks between 85 and 99 order by marks;    

select * from student where marks between 85 and 99 order by marks;

select * from student where marks between 85 and 99 order by marks ASC;

select * from student where marks between 85 and 99 order by marks desc;

select DISTINCT  address from rgm;

select COUNT(distinct address) from rgm;

select count(distinct marks) from student;

select * from student where NOT marks = 87 and NOT marks = 91;

select * from rgm limit 2;

select * from rgm where college = "RGMCET" limit 2;

select * from rgm where address = "AMERICA" limit 2;

select * from rgm where college = "RGMCET" order by id limit 5;

select * from rgm where college = "RGMCET" order by id  desc limit 5;

select count(address),address from rgm group by address;

create table dob ( 
date DATE not null
);

insert into dob values("2023-04-30");
insert into dob values("2023-05-01");
insert into dob values ("2023-04-29");


 select * from dob;
