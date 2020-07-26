use assignments;
-- 1) Write a query that selects all customers whose ratings are equal to or greater than ANY of Serres’.--
      
	select * from customers where rating >= ANY (select rating from customers where snum = (select snum from salespeople where  sname='serres'));
    
    
/* 2) Write a query using ANY or ALL that will find all salespeople who have no
customers located in their city.*/

      select * from salespeople where city != all (select city from customers);
      select * from salespeople where (snum,city) != all (select snum,city from customers);
     
-- 3) Write a query that selects all orders for amounts greater than any for the customers in London.--
      
       select *from customers;
      select *from orders;
      select *from salespeople;
      select *from orders where amt > ANY (select amt from orders where cnum IN ( select cnum from customers where city='London'));
	
      
-- 4) Write the above query using MIN or MAX. --
       select *from orders where amt > (select min(amt) from customers natural join orders where city='London');
	select * from orders where amt > (select min(amt) from orders where cnum In  (select cnum from customers where city ='London'));