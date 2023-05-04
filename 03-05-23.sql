select * from manager1;


-- finding second largest salary in the table manager1

select name,salary from manager1 order by salary desc limit 1,1;

select  name,max(salary) from manager1 group by name  limit 1,1;


-- finding first largest salary

select name,salary from manager1 order by salary desc limit 0,1;

select  max(salary) from manager1 ;

-- displaying max salary  that is group by name

select  name,max(salary) from manager1 group by name ;


-- finding second min salary in the table

select name,salary from manager1 order by salary  limit 1,1;

-- finding first min salary 

select min(salary) from manager1;

select min(salary) from manager1 limit 1;

select name,salary from manager1 order by salary limit 0,1;



create table order1( ord_id int, ord_Date Date, customer_id int);

create table customer1 (cust_id int, cust_Name varchar(30), cont_Name varchar(30),country varchar(30));

insert into order1 values(110,"2023-04-01",221),(112,"2023-04-02",224),(111,"2023-04-03",222),(125,"2023-04-05",226),(127,"2023-04-08",228);

insert into customer1 values(221,"varma","sharma","US"),(222,"Kavya","Navya","India"),(223,"Varsha","Harsha","US"),(224,"Anju","Manju","INDIa"),(226,"Tina","Dina","US");

select * from order1;
select * from customer1;

-- JOIN
SELECT ORDER1.ORD_ID,CUSTOMER1.CUSt_NAME,ORDER1.ORD_DATE FROM ORDER1
INNER JOIN CUSTOMER1 ON ORDER1.CUSTOMer_ID=CUSTOMER1.CUSt_ID;


SELECT ORDER1.ORD_ID,CUSTOMER1.CUSt_NAME,ORDER1.ORD_DATE,customer1.cust_id FROM ORDER1
INNER JOIN CUSTOMER1 ON ORDER1.CUSTOMer_ID=CUSTOMER1.CUSt_ID;

--        displays items which has cutomer_id similar in both tables






