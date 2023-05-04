create database Employee;

create table Employee_Details(
Emp_id int primary key ,
Emp_Name varchar(20),
Job_Name varchar(30),
Manager_Id varchar(30),
Hire_Date Date,
Salary int,
Dep_Id int
);

INsert into Employee_Details values(101,"Ravi","Software","M151","2023-04-01",200000,1001);
INsert into Employee_Details values(102,"Ram","Manager","M156","2023-04-03",350000,1003);
INsert into Employee_Details values(103,"Raj","Actor","M159","2023-04-08",200000,1005);
INsert into Employee_Details values(104,"Rahul","Dancer","M152","2023-04-16",300000,1007);
INsert into Employee_Details values(105,"Rakesh","Software","M158","2023-05-03",250000,1009);
INsert into Employee_Details values(106,"Rama","Developer","M153","2023-04-03",150000,1002);
INsert into Employee_Details values(107,"Ramu","Actress","M154","2023-04-08",300000,1004);
INsert into Employee_Details values(108,"Ramya","Dancer","M156","2023-05-14",400000,1006);
INsert into Employee_Details values(109,"Ruks","President","M161","2023-05-06",350000,1008);
INsert into Employee_Details values(110,"Rafi","Actor","M169","2023-05-10",150000,1010);
INsert into Employee_Details values(111,"Raghu","Software","M172","2023-04-16",300000,1011);


select * from Employee_Details;


select Emp_Name,salary from EMployee_Details;

select job_name,count(Job_name) from EMployee_details group by JOB_name having count(JOB_Name)<=1;


update employee_details set salary = 400000 where emp_name = "raj";



create database Football;

create table Football_venue ( 
venue_id int primary key,
venue_name varchar(30),
city_id int,
capacity int
);

Insert into football_venue values (951,"FRance",10001,40000);
Insert into football_venue values (953,"Japan",10011,25000);
Insert into football_venue values (957,"NEpal",10021,35000);
Insert into football_venue values (959,"japan",10031,35000);
Insert into football_venue values (952,"ITaly",10041,40000);
Insert into football_venue values (954,"FRance",10051,35000);
Insert into football_venue values (956,"Srilanka",10061,25000);
Insert into football_venue values (958,"Australia",10071,45000);
Insert into football_venue values (963,"FRance",10081,50000);
Insert into football_venue values (962,"Nepal",10091,20000);
Insert into football_venue values (968,"Australia",10110,50000);

select * from Football_venue;

select count(venue_name) from football_venue;

select venue_name as Location,capacity as Volume from football_venue ;

delete from football_venue where venue_name="Australia";


