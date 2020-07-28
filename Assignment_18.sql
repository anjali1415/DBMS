--            Maintaining the Integrity of your Data.--
/* 1) Create a table called Cityorders. This will contain the same onum, amt and snum
fields as the Orders table, and the same cnum and city fields as the Customers
table, so that each customer’s order will be entered into this table along with his
or her city. Onum will be the primary key of Cityorders. All of the fields in
Cityorders will be constrained to match the Customers and Orders tables. Assume
the parent keys in these tables already have the proper constraints.*/
        use assignments;
       create table cityorders select onum,amt,snum,cnum,city  from orders natural join customers;
       desc cityorders;
       -- or --
       create table cityorders1 select o.onum,o.amt,o.snum,c.cnum,c.city  from orders o,customers c where o.cnum=c.cnum;
       
       alter table cityorders add primary key (onum);
       alter table cityorders drop primary key;
          

/* 2) Redefine the Orders table as follows:- add a new column called prev, which will
identify, for each order, the onum of the previous order for that current customer.
Implement this with a foreign key referring to the Orders table itself. The foreign
key should refer as well to the cnum of the customer, providing a definite
enforced link between the current order and the one referenced.*/