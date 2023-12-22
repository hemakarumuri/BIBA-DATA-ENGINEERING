CREATE DATABASE batch2;
CREATE DATABASE batch3;
DROP DATABASE batch3;
CREATE DATABASE pet_adoption;
USE pet_adoption;

/*performing all DDL & DML commands*/
CREATE TABLE animals (id int NOT NULL, name varchar(20), breed varchar(20), color varchar(20), gender varchar(20), status INTEGER);
CREATE TABLE birds (id int NOT NULL, name varchar(20), breed varchar(20), color varchar(20), gender varchar(20), status INTEGER);
CREATE TABLE adoptions (animal_id int NOT NULL, name varchar(20), contact varchar(20), date TIMESTAMP);

truncate table birds;
select *from birds;

CREATE TABLE adoptions (animal_id int NOT NULL, name varchar(20), contact varchar(20), date TIMESTAMP);


INSERT INTO animals (id, name, breed, color, gender, status) VALUES (1, 'Bellyflop', 'Beagle', 'Brown', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES (2, 'Snowy', 'Husky', 'White', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES (3, 'Princess', 'Pomeranian', 'Black', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES (4, 'Cricket', 'Chihuahua', 'Brown', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES (5, 'Princess', 'Poodle', 'Purple', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES (6, 'Spot', 'Dalmation', 'Black and White', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES (7, 'snowy', 'Dalmation', 'Black and White', 'Female', 0);

SELECT * FROM animals;
select distinct *from animals;
SELECT name,breed FROM animals;
SELECT name FROM animals WHERE gender = 'Female';
SELECT id FROM animals WHERE status = 0;

UPDATE animals SET color = 'Brown' where id=4;

delete from animals where name='spot';

UPDATE animals SET status = 1 WHERE id = 2;

UPDATE animals SET status = 1 WHERE id =4

INSERT INTO adoptions(animal_id,name,contact,date) values(2,'charan','charan@gmail.com','2/12/2023');
INSERT INTO adoptions(animal_id,name,contact,date) values(4,'chakri','chakri24mail.com','3/12/2023');

truncate table adoptions;

alter table adoptions DROP COLUMN date;

alter table adoptions add date date;

SELECT * FROM adoptions;
SELECT * FROM animals;

delete from adoptions where animal_id=4;

/*for getting all the tables available in our current database*/
Select *from sys.tables;

CREATE TABLE adoptionofbirds (animal_id int NOT NULL, name varchar(20), contact varchar(20), date date);

INSERT INTO adoptionofbirds(animal_id,name,contact,date) values(2,'ravi','ravi@gmail.com',current_timestamp);
INSERT INTO adoptionofbirds(animal_id,name,contact,date) values(4,'chandu','chandu24mail.com',current_timestamp);

select *from adoptionofbirds;

select distinct *from animals;
/*Group by clause*/
select name,count(name) as totalcount
from animals
group by name;

/*Having clause*/
select name,count(name) as totalcount
from animals
group by name having count(name)>3;

select distinct *from animals order by name ;
select *from animals order by name;

select distinct *from animals where color in ('White','Purple','Black');

select *from animals;

select *from animals where color='White' and gender='Female';

select *from animals where color='White' or status=1;

select distinct *from animals where id between 2 and 5;

select distinct *from animals where name like 'S%';

select distinct *from animals where name like 'S%';

select distinct *from animals where name like '%p';

select distinct *from animals where name like '%w%';

select distinct *from animals as A;


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

/*Performing TCL operations*/
begin transaction;
DELETE FROM CUSTOMERS WHERE AGE = 25;
COMMIT;

begin transaction;
ROLLBACK;

INSERT INTO CUSTOMERS VALUES (2, 'Khilan', 25, 'Delhi', 1500.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00);

begin transaction;
DELETE FROM CUSTOMERS WHERE AGE = 25;
ROLLBACK;









