create database assignments;
use assignments;
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
desc orders;
create table SALESPEOPLE
(
Snum int(4) primary key,
Sname Varchar(10),
City Varchar(10),
Comm Float(3,2)
);
Insert into salespeople values(1001,'PEEL','London',.12);
Insert into salespeople values(1002,'Serres','San Jose',.13);
Insert into salespeople values(1004,'Motika','London',.11);
Insert into salespeople values(1007,'Rifkin','Barcelona',.15);
Insert into salespeople values(1003,'Axelrod','New York ',.10);
commit;
select *from salespeople;
Insert into customers values(2001,'Hoffman ','London',100,1001);
 Insert into customers values(2002,'Giovanni','Rome',200,1003);
 Insert into customers values(2003,'Liu','San Jose',200,1002);
 Insert into customers values(2004,'Grass ','Berlin',300,1002);
 Insert into customers values(2006,'Clemens ','London',100,1001);
 Insert into customers values(2008,'Cisneros','San Jose',300,1007);
 Insert into customers values(2007,'Pereira ','Rome',100,1004);
 select *from customers;
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
commit;
select *from orders;
-- Assignments 6 --
-- 1) Write two different queries that would produce all orders taken on October 3rd or 4 th, 1990. -- 
  select * from orders where odate='1990-10-03' or odate='1990-10-04';
  SELECT * FROM orders WHERE odate BETWEEN '1990-10-03' AND '1990-10-04';
 --  2) Write a query that selects all of the customers serviced by Peel or Motika.
    -- (Hint: the snum field relates the two tables to one another). --
    SELECT * FROM customers WHERE snum IN (SELECT snum FROM salespeople WHERE sname='Peel' OR sname='Motika');
    -- 3) Write a query that will produce all the customers whose names begin with a letter from ‘A’ to ‘G’. -- 
    
    select *from customers where cname like 'a%' or cname like 'b%'or cname like 'c%' or cname like 'd%' or cname like 'e%' or cname like 'f%' or cname like 'g%';
   -- 4) Write a query that selects all customers whose names begin with the letter ‘C’.--
           select *from customers where cname like 'c%';
    --  5) Write a query that selects all orders except those with zeroes or NULLs in the amt field. -- 
           select * from orders where amt !=' ';
           -- or --
           select * from orders where amt is not NULL; 
           
commit ;
   
    
