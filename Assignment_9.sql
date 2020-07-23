use assignments;
select *from orders;

-- 1) Write a query that lists each order number followed by the name of the customer who made the order.--
      select onum,cname from customers c,orders o where c.cnum=o.cnum;

-- 2) Write a query that gives the names of both the salesperson and the customer for
--  each order along with the order number.--
     select sname,cname,onum from salespeople s,customers c, orders o WHERE s.snum=c.snum AND c.snum=o.snum;
     -- or -- 
     SELECT sname,cname,onum FROM orders o,customers c,salespeople s WHERE o.snum=c.snum AND o.snum=s.snum;
     
-- 3) Write a query that produces all customers serviced by salespeople with a commission above 12% Output the customer’s name, the 
      --  salesperson’s name, and the salesperson’s rate of commission.--
      select cname,s.snum ,comm *100 as "Rate of commision"  from customers c,salespeople s where c.snum=s.snum and s.comm > .12;
      
-- 4) Write a query that calculates the amount of the salesperson’s commission on each 
--  order by a customer with a rating above 100. --
      select *from customer;
      select amt,comm from orders A,customers B, salespeople C
      where A.snum = C.snum AND A.snum = B.snum AND rating > 100;
      
      