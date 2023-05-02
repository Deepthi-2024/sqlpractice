drop table test;
 create table car (
 car_no int primary key,car_name varchar(30),car_price int , car_quantity int);
 Insert into car values(111,"BMW",4500000,4),(124,"Rolls royce",5000000,6),(134,"Audi",4500000,8),(145,"Acura",3500000,5);

Insert into car values(121,"TATA",4000000,5),(131,"Martin",4800000,7),(141,"Benz",4200000,4);

select * from car;

select count(car_name),car_price from car group by car_price;

select count(car_name) as count_no,car_price from car group by car_price;

select * from car;

select count(car_name) from car group by car_price having car_price >= 4000000;
      --  group by work only when we use function (we canot use * to get entire list of the list)
      
select count(*) from car group by car_price having car_price >= 5000000;
      
      
-- creating  a table to know visitors 

create table visitors( Entry_Date Date, Price int, Duration int);

Insert into visitors values("2023-05-01",3000,6),("2023-04-29",2000,4),("2023-05-06",8000,4),("2023-04-28",5500,5),("2023-04-27",6000,2);

select * from visitors;

select Entry_date ,count(*) from visitors group by Entry_Date;

select Extract(year from Entry_Date) as year , Extract(month from Entry_Date) as Month,Round(Avg(price),3) from visitors group by extract(Year from Entry_Date),Extract(month from Entry_Date);

SELECT count(*),EXTRACT(YEAR FROM ENTRY_DATE) AS YEAR ,
EXTRACT(MONTH FROM ENTRY_DATE) AS MONTH,
EXTRACT(DAY FROM ENTRY_DATE) AS DAY,
ROUND(AVG(PRICE),3) FROM VISITORS
GROUP BY EXTRACT(YEAR FROM ENTRY_DATE),EXTRACT(MONTH FROM ENTRY_DATE),
EXTRACT(DAY FROM ENTRY_DATE)
ORDER BY EXTRACT(YEAR FROM ENTRY_DATE),EXTRACT(MONTH FROM ENTRY_DATE);


SELECT * FROM VISITORS;

SELECT ENTRY_DATE, ROUND(AVG(PRICE),3) AS AVG_PRICE FROM VISITORS GROUP BY ENTRY_DATE HAVING COUNT(*) > 1 ORDER BY ENTRY_DATE;

SELECT ENTRY_DATE, ROUND(AVG(PRICE),3) AS AVG_PRICE FROM VISITORS GROUP BY ENTRY_DATE HAVING COUNT(*) > 2 ORDER BY ENTRY_DATE;

-- without group by it wont work 
 
 SELECT ENTRY_DATE, ROUND(AVG(PRICE),3) AS AVG_PRICE FROM VISITORS WHERE DURATION >5
 GROUP BY ENTRY_DATE HAVING COUNT(*) > 1 ORDER BY ENTRY_DATE ;
 
 
 select * from exercise.customer;
 
 SELECT CITY,COUNT(*) AS CUSTOMER_CITY FROM exercise.CUSTOMER GROUP BY CITY; 
 
 CREATE TABLE EMPLOYEE(
EMP_ID INT, NAME VARCHAR(25), AGE INT,COUNTRY VARCHAR(30)
);

insert into employee values(201,"varan",29,"INdia"),(207,"Vicky",35,"India"),(205,"Varsha",32,"America"),(207,"vikram",40,"Dubai"),(214,"Venkat",31,"America"),(210,"Vikranth",37,"India");

select * from employee;

SELECT COUNT(COUNTRY) AS COUNTRY_NO,COUNTRY FROM EMPLOYEE GROUP BY COUNTRY HAVING COUNT(COUNTRY)>=2;

SELECT COUNTRY,COUNT(COUNTRY) FROM EMPLOYEE GROUP BY COUNTRY HAVING max(AGE) >= 30;

SELECT COUNTRY,COUNT(COUNTRY) FROM EMPLOYEE GROUP BY COUNTRY HAVING MIN(AGE) >= 30;



CREATE TABLE MANAGER(
ID INT,NAME VARCHAR(30),GENDER VARCHAR(20),SALARY INT);

select * from manager;

DROP TABLE MANAGER;

CREATE TABLE MANAGER(
ID INT,NAME VARCHAR(30),GENDER VARCHAR(20), Age int,SALARY INT);

drop table manager;

CREATE TABLE MANAGER1(
ID INT,NAME VARCHAR(30),GENDER VARCHAR(20), Age int,SALARY INT);

insert into manager1 values(14,"kamal","male",32,22000),(12,"Raju","male",24,35000),(18,"Rani","Female",23,40000),(11,"Rahul","male",28,32000),(16,"Varsha","FEMale",25,25000);

select * from manager1;

select name, sum(sALARY) from manager1 where salary > 25000 group by name order by name;

SELECT NAME,SUM(SALARY) AS TOTAL_SALARY FROM MANAGER1 GROUP BY NAME HAVING SUM(SALARY) >25000 ORDER BY NAME;

-- 94 and 96 lines query gets the same output (without using having clause)

insert into manager1 values (18,"KAmal","male",35,28000);

select name, sALARY from manager1 where salary > 25000 order by name;

SELECT AGE FROM MANAGER1 GROUP BY AGE HAVING COUNT(AGE) >2;

SELECT AGE FROM MANAGER1 GROUP BY AGE HAVING COUNT(AGE) >1;

SELECT GENDER,MAX(SALARY) AS MAX_SALARY FROM MANAGER1 GROUP BY GENDER HAVING MAX(SALARY) >30000;

SELECT GENDER,MIN(SALARY) AS MIN_SALARY FROM MANAGER1 GROUP BY GENDER HAVING MIN(SALARY)<30000;

DELIMITER // 
CREATE PROCEDURE GetManagerInfo()
  BEGIN
	select * from MANAGER1;
  END //

CALL GetManagerInfo()

DELIMITER // 
CREATE PROCEDURE GetManagerAge1()
  BEGIN
	select * from MANAGER1  where age=24;
  END //
  
CALL GetManagerAge1();

select * from manager1;

SELECT NAME FROM MANAGER1 ORDER BY RAND() LIMIT 2;


