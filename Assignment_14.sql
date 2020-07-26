show tables;
/* 1) Write a command that puts the following values, in their given order, into the
salespeople table: city – San Jose, name – Blanco, comm – NULL, cnum – 1100.*/
   
    insert into salespeople(city,sname,comm,snum) values('San Jose','Blanco',NULL,1100);
    
 -- 2) Write a command that removes all orders from customer Clemens from the Orders table. --
    
	delete from orders where cnum IN (select tempp.cnum from ( select cnum from  customers where cname='clemens') as tempp);
    -- or -- 
     DELETE FROM orders WHERE cnum IN(SELECT cnum FROM customers WHERE cname='Clemens');
 
-- 3) Write a command that increases the rating of all customers in Rome by 100.--
       select city, rating + 100 as "Increase rating" from customers where city='rome';
       
-- 4) Salesperson Serres has left the company. Assign her customers to Motika.--
	
UPDATE customers SET snum=(SELECT snum FROM salespeople WHERE sname='motika') WHERE snum = (SELECT snum FROM salespeople WHERE sname='serres');

