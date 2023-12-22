
--Data manupulation using group by and having clause

use assessment;

select *from Emp;

--using group by clause
select deptno,count(deptno) as totalcount
from Emp
group by deptno;

--using group by along with having clause
select deptno,count(deptno) as totalcount
from Emp
group by deptno having count(deptno)>0;

--Data manupulation 
select *from Emp;
select *from Emp where ename='PLATO';
select empid,ename,salary from Emp where deptno=10;

--Data manupulation using insert statement
insert into Emp values(106,'Bill',51000,40);
insert into Emp values(102,'JOCK',45000,20);
insert into Emp values(103,'stalin',65000,60);
insert into Emp values(108,'Hitler',40000,80);

--Data manupulation using update statement
UPDATE Emp SET deptno = 50 where ename='HOBBES';
UPDATE Emp SET empid = 109 where salary=40000;

--Data manupulation using delete statement
delete from Emp where empid=106;
delete from Emp where salary=45000;