show databases;
create database demo;
use demo;
show databases;
create database day1;
use day1;
show databases;
show databases;
Use day1;
desc salespeople;
create table CUSTOMERS
(
Cnum int(4),
Cname Varchar(10),
City Varchar(10),
Rating int(4),
Snum int(4)
);
desc customers;
create table ORDERS
(
Onum int(4),
Amt float(7,2),
Odate date,
Cnum int(4),
Snum int(4)
);	
desc ORDERS;
create table SALESPEOPLE
(
Snum int(4) primary key,
Sname Varchar(10),
City Varchar(10),
Comm Float(3,2)
);
desc SALESPEOPLE;
Insert into salespeople values(1001,'PEEL','London',.12);
Insert into salespeople values(1002,'Serres','San Jose',.13);
Insert into salespeople values(1004,'Motika','London',.11);
Insert into salespeople values(1007,'Rifkin','Barcelona',.15);
Insert into salespeople values(1003,'Axelrod','New York ',.10);
 select *from SALESPEOPLE;
 
 Insert into customers values(2001,'Hoffman ','London',100,1001);
 Insert into customers values(2002,'Giovanni','Rome',200,1003);
 Insert into customers values(2003,'Liu','San Jose',200,1002);
 Insert into customers values(2004,'Grass ','Berlin',300,1002);
 Insert into customers values(2006,'Clemens ','London',100,1001);
 Insert into customers values(2008,'Cisneros','San Jose',300,1007);
 Insert into customers values(2007,'Pereira ','Rome',100,1004);
 create table CUSTOMERS
(
Cnum int(4),
Cname Varchar(10),
City Varchar(10),
Rating int(4),
Snum int(4)
);
desc CUSTOMERS;
 Insert into customers values(2001,'Hoffman ','London',100,1001);
 Insert into customers values(2002,'Giovanni','Rome',200,1003);
 Insert into customers values(2003,'Liu','San Jose',200,1002);
 Insert into customers values(2004,'Grass ','Berlin',300,1002);
 Insert into customers values(2006,'Clemens ','London',100,1001);
 Insert into customers values(2008,'Cisneros','San Jose',300,1007);
 Insert into customers values(2007,'Pereira ','Rome',100,1004);
 select *from customers;
 select *from orders; 
 Insert into orders values(3001,18.69,'1990-10-03',2008,1007);
Insert into orders values(3003,767.19,'1990-10-03',2001,1001);
Insert into orders values(3002,1900.10,'1990-10-03',2007,1004);
Insert into orders values(3005,5160.45,'1990-10-03',2003,1002);
Insert into orders values(3006,1098.16,'1990-10-03',2008,1007);
Insert into orders values(3009,1713.23,'1990-10-04',2002,1003);
Insert into orders values(3007,75.75,'1990-10-04',2004,1002);
Insert into orders values(3008,4723.00,'1990-10-05',2006,1001);
Insert into orders values(3010,1309.95,'1990-10-06',2004,1002);
Insert into orders values(3011,9891.88,'1990-10-06',2006,1001);
 select *from orders;
 /*Assignment 4 */
 select onum,amt,odate from orders;
 select *from customers where snum='1001';
  select city,sname,snum,comm from salespeople;
  select rating from customers where city='san jose';
  select *from salespeople;
  SELECT DISTINCT snum FROM salespeople ORDER BY snum;
  
  /*Assignment 5*/
  select *from orders where amt>=1000;
  select *from salespeople;
  select sname,city from salespeople where city='london' and comm >.10;
   select *from customers where rating >100 or  city='rome'; 
  Select * from Orders where (amt < 1000 OR NOT (odate = '1990-10-03' AND cnum > 2003)); 
  Select * from Orders
 where NOT ((odate = '1990-10-03' OR snum
 >1006) AND amt >= 1500); 
SELECT snum,sname,city,comm FROM Salespeople WHERE (comm > .12 OR comm <.14);
select *from salespeople;
select *from customers;
select *from orders;



  
  
  

