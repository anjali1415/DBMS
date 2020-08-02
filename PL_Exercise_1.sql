/* 1. Write a program that computes the perimeter and the area of a rectangle. Define
your own values for the length and width. (Assuming that L and W are the length
and width of the rectangle, Perimeter = 2*(L+W) and Area = L*W. */
create table rectangle
(
area float(7,2),
perimeter float(7,2)
);
delimiter //
create procedure rectan()
begin
     declare length int(2) default 12;
     declare width int(2) default 5;
     declare area float(7,2);
     declare perimeter float(7,2);
     set area = length * width ;
     set perimeter = 2*(Length+Width);
     insert into rectangle values(area,perimeter);
End; //
delimiter ;
drop procedure rect;
call rectan();
select *from rectangle;

/*2. Write a program that declares an integer variable called num, assigns a value to it,
and computes and inserts into the tempp table the value of the variable itself, its
square, and its cube. */
create table tempp1
(
  num int,
  square int,
  Cubee int
  );
delimiter //
create procedure math()
begin
      declare num int default 10;
      declare c int ;
      declare s int;
      set s=num *num;
      set c=num * num *num;
      insert into tempp1 values(num,s,c);
end;//
delimiter ;
call math();
select *from tempp1;
 
/* 3  Convert a temperature in Fahrenheit (F) to its equivalent in Celsius (C) and vice
versa. The required formulae are:- C= (F-32)*5/9
F= 9/5*C + 32 */
create table tempr
(
  f float(3,2),
  c float(3,2)
  );
  alter table tempr  modify column c float(7,2);
  desc tempr;
delimiter //
create procedure temp_conversion2(f float(7,2),c float(7,2))
begin
      declare celc float(7,2);
      declare fer float(7,2);
      set celc= (F-32)*5/9;
      set Fer= 9/5*C + 32;
      insert into tempr values(fer,celc);
end;//
delimiter ;
call temp_conversion2(100,100);
select *from tempr;

/* 4.Convert a number of inches into yards, feet, and inches. For example, 124 inches
equals 3 yards, 1 foot, and 4 inches. */
create table feet
(
  inch int(4),
  yard int(4),
  feet int(4)
  );

delimiter //
create procedure divi3()
begin
      declare i int(4) default 48;
      declare y int(4);
      declare f int(4);
	   set f= i/12;
       set y=f / 3;
       set f = f MOD 3;
       set i=i MOD 12;
      insert into feet values(i,y,f);
end ; //
delimiter ;
call divi3();
select *from feet; 

-- 6. Your block should read in two real numbers and tell whether the product of the two numbers is equal to or greater than 100.
desc feet; 
alter table feet modify column feet varchar(10);

delimiter //
create procedure real_num2()
begin
     declare r1 int default 10;
     declare r2 int default 11;
	 if r1*r2 = 100 then
         insert into feet values(r1,r2,'Equal');
	elseif r1*r2 > 100 then
         insert into feet values(r1,r2,'Greter');
	end if;
End ; //
delimiter ;
call real_num2();
select *from  feet;


      
      
      




  
  

/*5. Write a program that enables a user to input an integer. The program should then
state whether the integer is evenly divisible by 5.*/
create table q_4
(
    num int(4),
    result  char(3)
    );
delimiter //
create procedure divi1()
begin
      declare var int(4) default 1;
      while var <= 10 do
          if mod(var,5) = 0 then
             insert into q_4 values(var,'yes');
          else
              insert into q_4 values(var,'NO');
		  end if;
		 set var=var+1;
	  end while;
end ; //
delimiter ;
call divi1();
select *from q_4;
commit;
use labpractice;

      
      
      
      
      