/*DAY-5*/
use joins;
select *from Department;
select *from Employee1;
/*Sub queries using select statement*/
select *from Department where deptno in (select  deptno from Employee1 where salary>50000);
select *from Department where deptno in (select  deptno from Employee1 where salary>50000);
/*Sub queries using insert statement*/
insert into Department(deptno,dname)(select deptno,ename from Employee1 where empid=106);
/*Sub queries using delete statement*/
delete from Department where dname=(select ename from Employee1 where Department.dname=Employee1.ename);
update Employee1 set deptno=60 where salary=(select max(salary) from Employee1);

select *from Department;
select *from Employee1;

/*EXISTS Operator*/
select  *from Department 
where exists (select deptno from Employee1 where Department.deptno=Employee1.deptno AND salary<50000);

/*Any operator*/
select *from Department
select *from Department where Department.deptno = all(select deptno from Employee1 where salary>50000);

select deptno from Employee1 where salary>50000

select *from Employee1;

/*All operator*/
select *from Department 
where deptno<all(select deptno from Employee1 where salary>10000);

/*Correlated query using exists*/
select *from Department
select *from Employee1
select  *from Department where exists (select deptno from Employee1 where Department.deptno=Employee1.deptno AND salary<50000);

/*Correlated query using exists*/
select *from Department
select *from Employee1
select  *from Department where not exists (select deptno from Employee1 where Department.deptno=Employee1.deptno AND salary<50000);

/*Nested subqueries*/
select *from Department where exists(select Employee1.deptno from Employee1 where exists(select salary from Employee1 where Department.deptno=Employee1.deptno));