use exercise;

-- 1. Display the Supplier name and the Quantity sold. --
select sname,qty from s,spj where s.`s#`=spj.`s#`; 
-- 2. Display the Part name and Quantity sold. --
select pname,qty from p,spj where p.`p#`=spj.`p#`; 
-- 3. Display the Project name and Quantity sold. --
select jname,qty from j,spj where j.`j#`=spj.`j#`; 
-- 4. Display the Supplier name, Part name, Project name and Quantity sold.--
 select sname,pname,jname,qty from s,p,j,spj where J.`J#` = SPJ.`J#` and S.`S#`=SPJ.`S#` and P.`P#` = SPJ.`P#` ;
 -- 5 Display the Supplier name, Supplying Parts to a Project in the same City. --
   select sname,pname,jname,s.city from s,p,j,spj where S.city=J.city and SPJ.`J#`=J.`J#` and S.`S#`=SPJ.`S#` and P.`P#`= SPJ.`P#` ;
-- 6.Display the Part name that is ‘Red’ is color, and the Quantity sold.  --
    select pname,qty from p,spj where p.`p#`= spj.`p#` and p.color='red';
-- 7. Display all the Quantity sold by Suppliers with the Status = 20. --
   select s.`s#`,spj.qty from s,spj where s.`s#`=spj.`s#` and status=20; 
-- 8.Display all the Parts and Quantity with a Weight > 14. --
	select pname,qty,weight from p,spj where p.`p#`=spj.`p#` and weight >14;
    
-- 9.Display all the Project names and City, which has bought more than 10 Parts. 
     select jname, j.city,qty from j,spj where j.`j#`=spj.`j#` and spj.qty >10;
     select  jname, j.city,qty from j,spj where qty > (select qty from spj where qty >10);
-- 10 Display all the Part names and Quantity sold that have a Weight less than 15. --
      select pname,qty,weight from p,spj where p.`p#`=spj.`p#` and weight < 15;
 

