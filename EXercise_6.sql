use exercise;
show tables;
-- 1. Display all the Suppliers with the same Status as the supplier, ‘CLARK’. --
      select sname from s where status IN (select status from s where sname='clerk');
      
-- 2. Display all the Employees in the same department as the employee ‘MILLER’. --
      
       update semp set empname='miller' where empno=3;
  select empname from semp where deptno=( select deptno from semp where empname='miller');
  
-- 3.Display all the Parts which have more Weight than all the Red parts. --
      select pname,weight from p where weight > ANY (select weight from p where color='red');
      
 -- 4. Display all the Projects going on in the same city as the project ‘TAPE’. 
       select jname,city from j where city=( select city from j where jname='tape');
       
 -- 5.. Display all the Parts with Weight less than all the black parts. --
         select *from p where weight < All (select weight from p where color='black');
	
 -- 6. Display the name of the Supplier who has sold the maximum Quantity (in onesale). 
       select sname, max(qty) from s,spj where s.`s#`=spj.`s#` group by qty order by qty desc limit 1;
   -- Display the name of the Supplier who has sold the maximum overall Quantity (sumof Sales). --
  --  7. Display the name of the Employee with the minimum Salary.-- 
        
       select empname,min(basic) from semp  group by basic order by  basic limit 1;
       
-- 8. Display the name of the Supplier who has sold the maximum overall Quantity (sum of Sales).--
      select sname, max(qty) from s,spj where s.`s#`=spj.`s#` group by qty order by qty desc limit 1;
     
  -- 9. Display the name of the Department with the maximum number of Employees. --
        select *from semp;
       select *from sdept;
       select deptname,count(s1.deptno) from  semp s1,sdept s2 where s2.deptno=s1.deptno group by deptname having count(s1.deptno)=(select max(ans) 
       from (select count(s1.deptno) ans from semp group by deptno) as tempp );
       
select *from s;
select *from p;
select *from j;
select *from spj;