use batch3;
select *from Employee1;
/*creating a stored procedure*/
CREATE PROCEDURE allrecords
AS
select *from Employee1
GO;
/*Executing a procedure*/
exec allrecords;

/*Stored procedure with one parameter*/
CREATE PROCEDURE allrecords1 @deptno integer
AS
select *from Employee1 where deptno=@deptno

exec allrecords1 @deptno=10;

/*Stored procedure with multiple parameter*/
CREATE PROCEDURE allrecords3 @deptno integer, @ename varchar(20)
AS
select *from Employee1 where deptno=@deptno or ename=@ename
Go

exec allrecords3 @deptno=10,@ename='JAMES';