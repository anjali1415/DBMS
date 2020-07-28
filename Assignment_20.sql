
--  1) Which of these views are updateable (will allow DML operations)?
-- #1 --
Create View Dailyorders
as Select Distinct cnum, snum, onum, odate from Orders;
 --  Ans we cant update the view which has distinct keyword.

-- #2 --
Create View Custotals
as Select cname, Sum (amt) Sum_Amt from Orders, Customers
where Orders.cnum=Customers.cnum
Group by cname;
-- ANS If we create view from multiple tables then not able to update that view.

-- #3 --
Create view Thirdorders
as Select * from Dailyorders where
odate=’1990-10-03’;
-- yes --

-- #4 --

Create view Nullcities
as Select snum, sname, city
from Salespeople
where city is NULL
OR sname BETWEEN ‘A’ and ‘MZ’; 

-- yes --

/* 2) Create a view of the Salespeople table called Commissions. This view will include
only the snum and comm fields. Through this view, someone could enter or change
commissions, but only to values between .10 and .20. */
use assignments;
select *from salespeople;
desc salespeople;
create view commissions as select snum,comm from salespeople where comm between .10 and .20 WITH CHECK OPTION;
select *from commissions;
insert into commissions values(1008,.19);

 /* 3) Some SQL implementations have a built-in constant representing the current date,
sometimes called “CURDATE” or “SYSDATE”. The word SYSDATE can
therefore be used in a SQL statement, and be replaced by the current date when the
value is accessed by commands such as Select or Insert. We will use a view of the
Orders table called Entryorders to insert rows into the Orders table. Create the
Orders table, so that SYSDATE is automatically inserted for odate if no value is
given. Then create the Entryorders view so that no values can be given. */

create view Entryorders as select onum,odate from orders default sysdate(); 