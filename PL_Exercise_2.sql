/* 1. Select from any table a number and determine whether it is within a given range (for
example, between 1 and 10). */

desc emp_cur;
delimiter //
create procedure q_1()
begin
     declare n1 int;
     declare r1 int default 1;
     declare r2 int default 10;
     select eno into n1 from  emp_cur where ename='B';
     if n1  between r1 and r2 then
         insert into feet values (r1,r2,'yes');
	 else
         insert into feet values (r1,r2,'NO');
	 end if;
end ; //
delimiter ;
call q_1();
select *from feet;
commit;
/* 2. Select from any table three positive integers representing the sides of a triangle, and
determine whether they form a valid triangle. Hint: In a triangle, the sum of any two
sides must always be greater than the third side. */
      create table tur
        (
           a int(2),
           b int(2),
           c int(2)
		);
        truncate table tempp;
        insert into triangle values(2,3,6),(3,4,5);
           
           desc triangle;
           desc tempp;
           select *from triangle;
	delimiter ?
    create procedure Ex_3()
    begin
          declare x int(2);
          declare y int(2);
          declare z int(2);
          declare c int(2);
          declare lp int(2) default 0;
          declare tra_cur cursor for select *from triangle;
          select count(*) into c from triangle;
          open tra_cur;
          while lp < c do
               fetch tra_cur into x,y,z;
               if (x+y) > z then
                  insert into tempp values(lp,'tri');
				else
                   insert into tempp values(lp,'not tri');
				end if;
			set lp=lp+1;
		end while;
	close tra_cur;
	end;?
    delimiter ;
    -- drop procedure trian; --
	call Ex_3();
    select *from tempp;
               
        
/* 3. Check if a given a year is a leap year. The condition is:- year should be (divisible by 4
and not divisible by 100) or (divisible by 4 and divisible by 400.). The year should be
Selected from some table.*/
    create table yr
    (
        y int(4)
	);
    insert into yr values(2020),(1916),(1998),(1993);
    select *from yr;
delimiter ?
create procedure L_year5()
begin
    declare a int(4);
   declare lp int(1) default 0;
   declare cont int(2);
    declare yr_cur cursor for select *from yr;
    select count(*) into cont from yr; 
    open yr_cur;
       while lp < cont do
           fetch yr_cur into a;
             if (mod(a,4)=0 or mod(a,400)=0) and mod(a,100) !=0  then 
               insert into tempp values(a,'Leap');
			 else
               insert into tempp values(a,' Not Leap');
			 end if;
             set lp=lp+1;
		end while;
	  close yr_cur;
  end; ?
  delimiter ;
call L_year5();
select *from tempp;
truncate table tempp;
drop procedure L_year;

/* 4. Write a program that Selects from any table two character strings. Your program should
then determine if one character string exists inside another character string. */

    delimiter ?
create procedure L_year3()
begin
    declare a int(4);
    