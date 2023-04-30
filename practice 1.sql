-- create database practice1 ;
create table salesman (
id int primary key not null,
name varchar(20) not null, 
city varchar(30) not null, 
commission varchar(20) not null
);

INSERT INTO salesman values (5001,"James Hoog","New York","0.15");
INSERT INTO salesman values (5002,"Nail Knite","Paris","0.13");
INSERT INTO salesman values (5005,"Pit Alex","London","0.13");
INSERT INTO salesman values (5006,"Mc Lyon","Paris","0.14");
INSERT INTO salesman values (5007,"Paul Adam","Rome","0.13");
INSERT INTO salesman values (5003,"Lauson Hen","San Jose","0.12");

select name , commission from salesman;

select name , commission from salesman order by id;


create table orders (
ord_no int primary key not null,
purch_amt varchar(20) not null,
order_date varchar(20) not null,
customer_id int not null,
salesman_id int not null
);
insert into orders values(70001,"150.5","2012-10-05",3005,5002);
insert into orders values(70009,"270.65","2012-09-10",3001,5005);
insert into orders values(70002,"65.26","2012-10-05",3002,5001);
insert into orders values(70004,"110.5","2012-08-17",3009,5003);
insert into orders values(70007,"948.5","2012-09-10",3005,5002);
insert into orders values(70005,"2400.6","2012-07-27",3007,5001);
insert into orders values(70008,"5760","2012-09-10",3002,5001);
 
 select ord_no, purch_amt from orders order by ord_no;

