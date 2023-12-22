
--Data Cleaning

create database datacleaning;
use datacleaning

create table companies(id int,name varchar(30),industry varchar(30),year_founded int,employees int);
insert into companies values(1,'Over-Hex','Software',2006,25),(2,'Unimattax','IT Services',2009,36),(3,'Lexila','Real Estate',2032,38),(4,'Greenfax','Retail',2012,320),(5,'Saoace','Energy',2009,24),
(6,'Donplus','Advertising & Marketing',2009,26),(7,'Blacklane','IT Services',2011,9),(8,'Toughtam','Logistics & Transportation',2011,20),(9,'Toughtam','Logistics & Transportation',2011,20),
(10,'Quotelane','Advertising & Marketing',NULL,4),(11,'Ganzzap','Advertising & Marketing',2011,133),(12,'Yearflex',NULL,2013,45)


drop table companies;

select *from companies;
/*Getting duplicate data*/
SELECT name,count(name)
FROM companies
GROUP BY name
HAVING(count(name)> 1)

/*Assigning rank to the rows*/
SELECT name,
     ROW_NUMBER() OVER(order BY name) AS rn
FROM companies

/*Deleting duplicate values based on the rank*/
DELETE
FROM (
SELECT name,
        ROW_NUMBER() OVER(order BY name) AS rn
FROM companies
)                                                   /*error*/
WHERE rn > 1

 
delete FROM companies
where count(name)> 1                                 /*error*/


/*finding null values*/
SELECT
*FROM companies
WHERE year_founded IS NULL

/*Removing null values*/
DELETE
FROM companies
WHERE year_founded IS NULL

/*Finding null values*/
SELECT *
FROM companies
WHERE industry IS NULL

/*Put a Meaningful Label for NULL Values*/
UPDATE companies
SET industry = 'Other'
WHERE industry IS NULL

select *from companies;

/*Fix the Capitalization of Values*/
update companies set industry=upper(industry)


/*correcting logical errors*/
SELECT *FROM companies
WHERE year_founded > 2023;

UPDATE companies
SET year_founded = 2012
FROM companies
WHERE id = 3



select year_founded,employees from companies;
/*Lag analytical function*/
select year_founded,employees,lag(employees,3,0) over(order by year_founded) as year from companies;

/*Lead analytical function*/
select year_founded,employees,lead(employees,3,0) over(order by year_founded) as year from companies;