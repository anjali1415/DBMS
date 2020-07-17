create database Exercise;
use exercise;
show databases;
/*Exercise 1*/
create table SEMP
(
EMPNO CHAR(4),
EMPNAME CHAR(20),
BASIC FLOAT(9,2),
DEPTNO CHAR(2),
DEPTHEAD CHAR(4) 
);
desc semp;
create table SDEPT
(
  DEPTNO CHAR(2),
DEPTNAME CHAR(15) 
);
desc sdept;

insert into SDEPT values ('10', 'Development'),
                         ('20', 'Training'); 
select *from sdept;
insert into semp(Empno,Empname,basic,deptno) values(0001,'Sunil',6000,10);
insert into semp(Empno,Empname,basic,deptno) values(0002,'Hiren',8000,20);
insert into semp(Empno,Empname,basic,deptno,depthead) values(0003,'Ali',4000,10,0001);
insert into semp(Empno,Empname,basic,depthead) values(0004,'George',6000,0002);
select *from semp;
create table S
(
  `S#` char(5),
  Sname varchar(20),
  Status int(2),
  City varchar(10)
  );
  desc s;
  create table P
(	
	`P#` char(2),
	Pname char(20),
    Color char(10),
    Weight int(3),
    City char(2)
);
desc P;
create table J
(	
	`J#` char(2),
	Jname char(20),
    City char(2)
);
desc j;

create table SPJ
(	
	`S#` char(2),
	`P#` char(2),
	`J#` char(2),
    Qty int(3)
);
desc spj;
show tables;
insert into s values('s1','john',10,'London');
insert into s values('s3','sunny',30,'delhi');
insert into s values('s4','monty',20,'paris');
insert into s values('s5','lamao',50,'athens');
-- 5. Display all the data from the S table.--
select * from s;
insert into p values('p1','keyboard','black',30,'delhi');
Alter table p modify city char(10);
insert into p values('p2','mouse','blue',20,'mumbai');
insert into p values('p3','ram','black',5,'goa');
select * from p;
insert into j values('j1','abc','delhi');
desc j;
Alter table j modify city char(10);
insert into j values('j1','abc','delhi');
insert into j values('j2','pqr','mumbai');
insert into j values('j3','xyz','goa');
insert into j values('j4','lmn','athens');
insert into j values('j5','efg','paris');
select *from j;
insert into spj values('s1','p2','j1',10);
insert into spj values('s2','p1','j3',15);
insert into spj values('s3','p3','j2',5);
select * from spj;
-- 6. Display only the S# and SNAME fields from the S table.--
select `s#`,sname from s;
-- 7.Display the PNAME and COLOR from the P table for the CITY=â€delhiâ€.--
select * from p;

select pname,color from p where city='delhi';
-- 8. Display all the Suppliers from London.--
select *from s where city='london';
-- 9. Display all the Suppliers from Paris or Athens.--
select * from s where CITY='Paris' or CITY='Athens';

-- 10. Display all the Projects in Athens.--
select * from j where city="athens";
-- 11. Display all the Partnames with the weight between 12 and 14 (inclusive of both).--
select Pname,weight from p where weight between 12 and 14;
-- 12. Display all the Suppliers with a Status greater than or equal to 20.--
select sname,staus from s where staus>=20;

-- 13. Display all the Suppliers except the Suppliers from London. --
select * from s where city != "London";

-- 14. Display only the Cities from where the Suppliers come from. --
select city from s;

-- 15. Assuming that the Part Weight is in GRAMS, display the same in MILLIGRAMS and KILOGRAMS. --
select weight*1000 from p;    -- ->for milligrams--
select weight/1000 from p; 	 -- ->for kilograms--

-- Exercise 2 --
-- 1. Display the Supplier table in the descending order of CITY. --
select *from s order by city desc;
-- 2. Display the Part Table in the ascending order of CITY and within the city in the ascending order of Part names. --
select * from p order by city,pname;
-- 3. Display all the Suppliers with a status between 10 and 20. --
select *from s where status between 10 and 20; 
-- 4. Display all the Parts and their Weight, which are not in the range of 10 and 15. --
select *from p;
select pname,weight from p where weight not  between 10 and 15;
-- 5  Display all the Part names starting with the letter ‘S’.--
select *from p where pname like 'k%'; -- or s% --
- -6.  Display all the Suppliers, belonging to cities starting with the letter ‘L’.--
 select *from s where city like 'l%';
 -- 7. Display all the Projects, with the third letter in JNAME as ‘n’.--
 select * from j;
 select *from j where jname like '__n%';
 
 














