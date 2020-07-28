/* 1) Create the Orders table so that all onum values as well as all combinations of
cnum and snum are different from one another, and so that NULL values are
excluded from the date field.*/

   desc orders;
        create table new_orders1
         (
          onum int(4),
          odate date NOT NULL,
          cnum int(4),
          snum int(4),
          primary key(onum,snum,cnum)
          );
          
        
      desc new_orders1;

/* 2) Create the Salespeople table so that the default commission is 10% with no
NULLS permitted, snum is the primary key, and all names fall alphabetically
between A and M, inclusive (assume all names will be uppercase).*/
    select *from  salespeople;
	select *from customers;
    select *from orders;
     
   CREATE TABLE salespeople7
   (
   comm int(3) DEFAULT 10, 
   snum int(4) PRIMARY KEY, 
   sname varchar(10) check(substr(upper(sname),1,1) BETWEEN 'A' AND 'M')
   );

insert into salespeople7 (snum,sname) values ('2','Aam');
select *from salespeople7;


      

/* 3) Create the Orders table, making sure that the onum is greater than the cnum, and
the cnum is greater that the snum. Allow no NULLS in any of these three fields.*/
      
      CREATE TABLE orders12 (
      onum int(4), 
      amt int(7),
      odate date,
      cnum int(4),
      snum int(4),
      CONSTRAINT on_cn_sn check(onum>cnum AND cnum>snum)
      );
 insert into orders12 values(3,12,'2020-12-23',1,2);
 insert into orders12 values(2,12,'2020-12-23',3,1);

    create table orders2 (onum int(4) NOT NULL,cnum int(4) NOT NULL,snum int(4) NOT NULL ,constraint on_cn_sn check(onum > cnum and cnum > snum));
    desc orders2;
    INSERT INTO orders2 VALUES(15,10,5); 
     select *from orders2;
  
  
