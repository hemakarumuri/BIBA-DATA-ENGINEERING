/*DAY-3*/
use batch2;
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS VALUES 
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00),
(2, 'Khilan', 25, 'Delhi', 1500.00),
(3, 'Kaushik', 23, 'Kota', 2000.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00),
(5, 'Hardik', 27, 'Bhopal', 8500.00),
(6, 'Komal', 22, 'Hyderabad', 4500.00),
(7, 'Muffy', 24, 'Indore', 10000.00);

SELECT * FROM CUSTOMERS;
/*Commit */
begin transaction;
DELETE FROM CUSTOMERS WHERE AGE = 25;
COMMIT;

begin transaction;
INSERT INTO CUSTOMERS VALUES (2, 'Khilan', 25, 'Delhi', 1500.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00);
ROLLBACK;

begin transaction;
INSERT INTO CUSTOMERS VALUES (8, 'Chakri', 24, 'MYDK', 150000.00);
save transaction s1;
begin transaction;
INSERT INTO CUSTOMERS VALUES (9, 'Chandu', 25, 'AP', 140000.00);
save transaction s2;
begin transaction;
INSERT INTO CUSTOMERS VALUES (10, 'Ravi', 26, 'MP', 130000.00);
save transaction s3;
begin transaction;
INSERT INTO CUSTOMERS VALUES (11, 'Indra', 26, 'TN', 120000.00);
rollback transaction s3;

select *from customers;

begin transaction;
DELETE FROM CUSTOMERS WHERE AGE = 25;
ROLLBACK;

CREATE TABLE CUSTOMERS2 (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS2 VALUES 
(1, 'Anil', 31, 'Ahmedabad', 400.00),
(2, 'Kiran', 25, 'Delhi', 1600.00),
(3, 'Raju', 24, 'Kota', 2100.00),
(4, 'Mani', 25, 'Mumbai', 6800.00),
(5, 'Paani', 27, 'Bhopal',8500.00),
(6, 'Shekhar', 21, 'Hyderabad', 4500.00);

INSERT INTO CUSTOMERS2 VALUES (7, 'Muffy', 24, 'Indore', 10000.00);

/*Set operations*/
SELECT * FROM CUSTOMERS;
select *from customers2;
SELECT *FROM customers UNION SELECT *FROM customers2;

SELECT *FROM customers UNION ALL SELECT *FROM customers2; 

SELECT *FROM customers intersect SELECT *FROM customers2; 

SELECT *FROM customers except select *FROM customers2; 
/*Default constraint*/
Create table Demo(Id int,name varchar(50),Salary int default 15000)
insert into Demo(Id,name) values(100,'Chakri');
insert into Demo(Id,name) values(101,'Paani');
delete from Demo where Salary=50000;
select *from Demo;

/*unique constraint*/
Create table demo1(id int unique,name varchar(50),price int unique);
insert into demo1 values(1,'Chandu',1000);
insert into demo1 values(2,'Ravi',1000); /* will throw an error b/c price is taken as unique attribute and cannot allow the duplicate values*/

/*Not Null constraint*/
Create table Demo2(id int not  null, age int);
insert into Demo2 values(1,21);
insert into Demo2(age) values(20);/* will throw an error b/c id is taken as not null and cannot be empty*/

/*check constraint*/
Create table demo4(id int, Age int check(Age between 18 and 24));
insert into demo4 values(1,20);
insert into demo4 values(1,25);/* will throw an error b/c age is not within the range*/

/*Primary key*/
Create table demo5(id int primary key, salary money);
insert into demo5 values(1,20);
insert into demo5(salary) values(20000);/*error as primary key should not be null*/

/*Composite primary key*/
create table demo6(id int,name varchar(50),primary key(id,name));
insert into demo6 values(1,'Giri');

/*Foreign key*/
Create table employee(id int primary key,name varchar(50),age int);
Create table company(email varchar(50),address varchar(50),id int foreign key references employee(id));
select *from employee;
select *from company;

insert into employee values(1,'Chakri',21);

insert into company values('chandu@gmail.com','AP',2);
insert into company values('ravi@gmail.com','AP',1);
alter table company add age int;
update company set address='kdp' where id=1;   /*2 rows updated*/
update company set id=2;




/*Aggregate Functions*/
SELECT * FROM CUSTOMERS;
/*AVG)*/
select avg(salary) as avgsalary from customers;
/*SUM)*/
select sum(id) as Totalid from customers;
/*MIN)*/
select min(salary) as minsalary from customers;
/*Max)*/
select max(salary) as maxsalary from customers;
/*count)*/
select count(name) from customers;


/*Foreign key constraint*/
create table Department(deptno int primary key,dname varchar(20),location varchar(20));     /*Parent table*/
insert into Department values(10,'DBA','HYD'),(20,'SAP','MUMBAI'),(30,'HR','PUNE');
select *from Department;

create table Employee1(empid int,ename varchar(20),salary money,deptno int foreign key references Department(deptno) );   /*Child table*/
select *from Employee1;
insert into Employee1 values(101,'ADAMS',56000,10),(102,'JAMES',45000,20);
insert into Employee1 values(101,'ADAMS',56000,40)   /*Error generated*/
insert into Employee1 values(103,'SCOTT',23000,30)

delete from Department where deptno=30;   /*error*/
update Department set deptno=40 where deptno=30;  /*error*/
/* To avoid those errors use on delete cascade and on update cascade */