use exercise;
-- 1 Display the minimum Status in the Supplier table. --
select *from s;
   select min(status) from s;
   
-- 2.Display the maximum Weight in the Parts table.--
   select max(weight) from p;
   
-- 3. Display the average Weight of the Parts -- 
   select avg(weight) from p;
   
-- 4.Display the total Quantity sold for part ‘P1’. --
     select *from spj;
     select count(qty) from spj where `p#`='p1';
     
   
-- 5.Display the total Quantity sold for each part. 
      select `p#`,qty from spj;
      select `p#`,count(qty) from spj group by `p#`; 
-- 6 Display the average Quantity sold for each part. --
    select `p#`,avg(qty) from spj group by `p#`;
   
-- 7. Display the maximum Quantity sold for each part, provided the maximum Quantity is greater than 800. --
  select `p#`,max(qty) from spj where qty > 8 group by `p#` ;
  
  -- 8. Display the Status and the count of Suppliers with that Status. -- 
  select count(sname),status,sname from s group by sname;
  
  -- 9. Display the count of Projects going on in different cities. --
    
     select count(jname),city from j group by jname;
     
-- 10 What is the difference between COUNT(Status) and COUNT(*) ? --
     select count(status) from s; -- It wiil not consider NULL values while counting --
     select count(*) from s;-- It will consider nul values wjile counting --
  /* 11  11. Display the Status and the Count of Suppliers with that Status in the following format
             as shown below:-

         Status Count
          Ten     1
		Twenty    2
        Thirty    3 */
        select *from s; 
        update s set status=50 where `s#`='s3';
	select case
    when status=10 then 'Ten'
    when status=20 then 'Twenty'
    when status=50 then 'fifty'
    else 'others'
    END status,count(sname)
    from s group by status ;
    