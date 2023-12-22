/*DAY-4 joins*/

create database joins;
use joins;
create table Department(deptno int primary key,dname varchar(20),location varchar(20));     /*Parent table*/
insert into Department values(10,'DBA','HYD'),(20,'SAP','MUMBAI'),(30,'HR','PUNE');
insert into Department values(40,'DS','TN')
select *from Department;

create table Employee1(empid int,ename varchar(20),salary money,deptno int);   /*Child table*/
insert into Employee1 values(101,'ADAMS',56000,10),(102,'JAMES',45000,20);
insert into Employee1 values(103,'SCOTT',23000,30)
insert into Employee1 values(104,'CURY',66000,10),(105,'STALIN',46000,20);
insert into Employee1 values(106,'R.K',86000,50)/*error*/
drop table Employee1;

select *from Department;
select *from Employee1;

/*Equi join*/
SELECT *FROM Department dept, Employee1 emp
WHERE dept.deptno=emp.deptno;
/*Another method of equi join*/
SELECT *FROM Department dept
join Employee1 emp on dept.deptno=emp.deptno;


select *from Department;
select *from Employee1;

/*Non-equi join*/
SELECT *FROM Department dept
join Employee1 emp on dept.deptno>emp.deptno;

/*Inner join*/
select * from Department dept
join Employee1 emp
on dept.deptno=emp.deptno;

/*left outer join*/
select dept.deptno,dept.dname,emp.empid,emp.ename from Department dept 
left outer join Employee1 emp
on dept.deptno=emp.deptno;

select *from Department;
select *from Employee1;


/*Right outer join*/
select *from Department dept 
right outer join Employee1 emp
on dept.deptno=emp.deptno;

select *from Department;
select *from Employee1;

/*Full outer join*/
select *from Department dept 
full outer join Employee1 emp
on dept.deptno=emp.deptno

/*Cross join*/
select * from Department dept
cross join Employee1 emp;


/*String Functions*/
SELECT ascii('AB');  /*It returns the  numeric value of left-most character. In this se it returns the value of A as 65.*/
SELECT char(66)      /*Returns B, the character equivalent to the ASCII c*/
SELECT len('WIDESKILLS')   /*Returns 10 as the number of characters present in the expression*/
SELECT lower('JOHN')       /*Returns ‘john’ after converting the expression into lower case*/
SELECT REPLACE('country','y','ies'); /*Returns ‘countries’ after replacing the ‘y’ with ‘ies’*/
SELECT reverse('PATH')     /*Returns ‘HTAP’ after reversing the expression*/
SELECT str(134.56,8,4)     /*Returns ‘134.56, converts numeric to character*/
SELECT upper('Peter')      /*Returns ‘PETER’ by converting the characters to upper case*/

/*Using Date Functions*/
SELECT getdate()
SELECT dateadd(mm,2,'2010-02-03') /*Returns 2010-04-03 by adding 2 months*/
SELECT datediff(year,convert(datetime,'2005-05-06'),convert(datetime,'2009-01-01'))   /*Returns 4, calculating the number of date parts between two dates*/
SELECT datepart(year,'2008-01-01')  /*Retruns 2008, the year value*/
SELECT day('2010-03-21')
SELECT month('2010-03-21')
SELECT year('2010-03-21')


/*Using Mathematical Functions*/
SELECT abs (-77)       /*Returns 77, an absolute value.*/
SELECT sin(1.5)        /*Returns the angle in radians.*/
SELECT ceiling (14.45) /*Returns 15, the smallest or greater than or equal to the specified value.*/
SELECT exp (4.5)       /*Returns 90.017, the exponential value of the specified parameter.*/
SELECT floor (15.55)   /*Returns 15, the largest or less than or equal to the specified value.*/   
SELECT log (5.4)       /*Returns 1.6869, the logarithm of the parameter*/

/*Using Rank Functions*/

select *from sys.tables;
create table Emp(eid int,ename varchar(20),salary money);
select *from Emp;
 /*using ROW_NUMBER*/
 SELECT eid,ename,salary,ROW_NUMBER() over(order by salary desc)as rank from Emp;  /*different ranks are allocated for same salaries*/

 /*using RANK()*/
 SELECT eid,ename,salary,RANK() over(order by salary desc)as rank from Emp; /*SAME ranks are given for same values but it skips one value*/

 /*USING DENSE_RANK()*/
 SELECT eid,ename,salary,DENSE_RANK() over(order by salary desc)as rank from Emp; /*AME ranks are given for same values and does not skips any value*/

 /*using ntile()*/
  SELECT eid,ename,salary,ntile(2) over(order by salary desc)as rank from Emp where salary>50000;


  /*Using System Functions*/
select HOST_ID();
SELECT HOST_NAME() as 'HOSTNAME';     /*Returns the current computer name*/
SELECT suser_id()
SELECT user_id()
SELECT db_name()