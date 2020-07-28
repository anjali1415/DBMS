use assignments;
-- 1) Create a view that shows all of the customers who have the highest ratings. --
        select *from customers;
      create view cus_v1 as select * from customers where rating = ( select max(rating) from customers);
      drop view v1;
	  select *from cus_v1;
      
-- 2) Create a view that shows the number of salespeople in each city. --
       select *from salespeople;
       create view salesp_v2 as select city, count(sname) as"Number of salespeople" from salespeople group by city; 
       select *from salesp_v2;
       
       
-- 3) Create a view that shows the average and total orders for each salesperson after his or her name. Assume all names are unique.
        
        select *from orders;
        create view ord_v3 as select s.sname, avg(o.onum) as "Average" ,count(o.odate) as "Total ord"  from orders o,salespeople s where s.snum=o.snum group by o.snum;
        select * from ord_v3;
       
-- 4) Create a view that shows each salesperson with multiple customers. --
        select *from salespeople;
        select *from customers;
        create view cus_v4 as select s.snum, c.cname  from salespeople s,customers c where s.snum=c.snum ; 
        select *from cus_v4;
        drop view cus_v4;
        