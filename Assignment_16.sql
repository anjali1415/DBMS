use assignments;
-- 1) Write a command that will enable a user to pull orders grouped by date out of the Orders table quickly.--

	  create index ord_index on orders(odate);
      show indexes from orders;
      
-- 2) If the Orders table has already been created, how can you force the onum field to be unique (assume all current values are unique)?--
	    
        desc orders;
        alter table orders ADD PRIMARY KEY(onum);
       
-- 3) Create an index that would permit each salesperson to retrieve his or her orders grouped by date quickly.-- 
 
         create index sale_date on orders(odate); -- on  one table only one index is allowed in mysql --

-- 4) Let us assume that each salesperson is to have only one customer of a given rating, and that this is currently the case.
--  Enter a command that enforces it.--
 
         
         alter table customers ADD PRIMARY KEY(rating);
         