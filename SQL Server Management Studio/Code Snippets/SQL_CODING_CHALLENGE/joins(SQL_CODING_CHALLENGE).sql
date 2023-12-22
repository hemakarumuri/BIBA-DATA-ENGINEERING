--working with joins and subqueries
create database assessment;
use assessment

--creating a parent table 
create table Dept(deptno int primary key,dname varchar(20),location varchar(20));
--insert values into tables
insert into Dept values(10,'DBA','HYD'),(20,'SAP','MUMBAI'),(30,'HR','PUNE'),(40,'DS','TN');
--Retrieving data from table
select *from Dept;

--creating a child table 
create table Emp(empid int,ename varchar(20),salary money,deptno int);   /*Child table*/
insert into Emp values(101,'JOHN',45000,10)
insert into Emp values(102,'HOCKS',66000,20)
insert into Emp values(103,'ADAMS',55000,30)
insert into Emp values(104,'CURY',40000,40)
insert into Emp values(105,'PLATO',70000,10);
insert into Emp values(106,'HOBBES',60000,50)


select *from Dept;
select *from Emp;

--INNER JOIN
select *from Dept d inner join Emp e on d.deptno=e.deptno;

--right outer join
select *from Dept d right outer join Emp e on d.deptno=e.deptno;

insert into Dept values(70,'BA','MP'),(80,'FSD','HYD')

--Left outer join
select *from Dept d left outer join Emp e on d.deptno=e.deptno;

--full outer join
select *from Dept d full outer join Emp e on d.deptno=e.deptno;

select *from Emp;

---subqueries
select *from Emp where empid=(select empid from Emp where salary=(select max(salary) from Emp))

select  *from Dept where exists (select deptno from Emp where Dept.deptno=Emp.deptno AND salary<50000);

select *from Dept where exists(select Emp.deptno from Emp where exists(select salary from Emp where Dept.deptno=Emp.deptno));