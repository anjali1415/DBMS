use assignments;
/* 1) Write a query that uses a subquery to obtain all orders for the customer named
Cisneros. Assume you do not know his customer number (cnum).*/
  
  select onum  "All orders" from orders where cnum=(select cnum from customers where cname="Cisneros");
  
/* 2) Write a query that produces the names and ratings of all customers who have above-average orders.*/
  
   select cname,rating from customers where cnum IN (select cnum from orders where amt > (select avg(amt) from orders));
   
   
/* 3) Write a query that selects the total amount in orders for each salesperson for
      whom this total is greater than the amount of the largest order in the table.*/
    select *from orders;
	select *from customers;
       select snum,sum(Amt) from orders group by snum having sum(Amt) > (select max(Amt) from orders);