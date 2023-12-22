
--Analytical Functions
create database analyticalfunc;
use analyticalfunc;

create table Demo(productid int,customerid int,customername varchar(20),purchasedate datetime,salesamount int);

insert into Demo values(1,1,'Ravi','20120104',14),(2,1,'Ravi','20120204',45),(3,2,'Sreenu','20120304',71),(4,2,'sreenu','20120404',32),(5,2,'Sreenu','20120504',98),
(6,3,'Gopi','20120604',43),(7,3,'Gopi','20120704',12),(8,4,'Srinu','20120804',78)

select *from Demo;

select *,
lead(salesamount) over(order by purchasedate) as nextvalue from Demo;

select *,
lead(salesamount,1,0) over(order by purchasedate) as nextvalue from Demo;

select *,
lead(salesamount,2,0) over(order by purchasedate) as nextvalue from Demo;

select *,
lead(salesamount) over(partition by customerid order by purchasedate) as nextvalue from Demo;

select *,
lag(salesamount) over(order by purchasedate) as previousvalue from Demo;

select *,
lag(salesamount,1,0) over(order by purchasedate) as previousvalue from Demo;

select *,
lead(salesamount) over(partition by customerid order by purchasedate) as previousvalue from Demo;

select *,
first_value(salesamount) over(order by purchasedate desc) as firstvalue from Demo;

select *,
first_value(salesamount) over(partition by customerid order by purchasedate) as firstvalue from Demo;

select *,
first_value(salesamount) over(partition by customerid order by purchasedate rows between unbounded preceding and current row) as firstvalue from Demo;

select *,
last_value(salesamount) over(order by purchasedate) as lastvalue from Demo;

select *,
last_value(salesamount) over(order by purchasedate rows between unbounded preceding and unbounded following) as lastvalue from Demo;

select *,
last_value(salesamount) over(partition by customerid order by purchasedate rows between unbounded preceding and unbounded following) as lastvalue from Demo;

select *,
sum(salesamount) over(order by purchasedate) as sumofsales from Demo;

select *,
sum(salesamount) over(partition by customerid order by purchasedate) as sumofsales from Demo;

select *,
max(salesamount) over(order by purchasedate) as maxvalue from Demo;

select *,
max(salesamount) over(order by purchasedate rows between unbounded preceding and unbounded following) as maxvalue from Demo;

select *,
max(salesamount) over(partition by customerid order by purchasedate rows between unbounded preceding and unbounded following) as maxvalue from Demo;

select *,
min(salesamount) over(order by purchasedate rows between unbounded preceding and unbounded following) as minvalue from Demo;

select *,
avg(salesamount) over(order by purchasedate rows between unbounded preceding and unbounded following) as avgvalue from Demo;

select *,
avg(salesamount) over(partition by customerid order by purchasedate rows between unbounded preceding and unbounded following) as avgvalue from Demo;

select *,
count(salesamount) over(order by purchasedate rows between unbounded preceding and unbounded following) as countrows from Demo;














