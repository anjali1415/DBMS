use exercise;
show tables;
select *from s;
-- 1. Display all the Supplier names with the initial letter capital. --
Select CONCAT(UPPER(SUBSTRING(sname,1,1)),LOWER(SUBSTRING(sname,2))) AS Name from s;

-- 2 Display all the Supplier names in upper case. --
select upper(sname) from s;

 -- 3. Display all the Supplier names in lower case. -- 
 select lower(sname) from s;

-- 4 Display all the Supplier names padded to 25 characters, with spaces on the left. --
  select lpad (sname,25,' ') from s;
  
  -- 5. Display all the Supplier names (with ‘la’ replaced by ‘ro’). HINT: REPLACE. -- 
  select replace(sname,'la','ro')from s;
  
  -- 6. Implement the above command such that ‘l’ is replaced with ‘r’ and ‘a’ is replaced with ‘o’. --
   select replace(replace(sname,'l','r'),'a','o') as "Sname" from s;
   
  -- 7. Display the Supplier names and the lengths of the names. --
  select sname,length(sname) as "lengths" from s;
  
  -- 8 Use the soundex function to search for a supplier by the name of ‘BLOKE’.--
   select *from s where soundex(sname) = soundex('BLOKE');
   select * from s where soundex(sname) = soundex('johnn');
   
   -- 9.Display the Supplier name and the status (as Ten, Twenty, Thirty, etc.). --
          select *from s;
          
	select case 
    when status= 10 then 'Ten'
    when status= 20 then 'Twenty'
    when status= 30 then 'Thirty'
    when status= 50 then 'fifty'
    else 'others'
    end  Status,sname
    from s;

     -- 10.  Display the current day (e.g. Thursday). --
     SELECT DAYNAME('2020-07-20');
     -- or --
     SELECT DAYNAME(CURDATE());
     

 
 

