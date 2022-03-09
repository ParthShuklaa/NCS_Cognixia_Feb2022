Use NCS2020;
CREATE TABLE Persons (
ID int NOT NULL,
LastName varchar(25) NOT NULL,
FirstName varchar(25),
Age int CHECK (AGE>=18));

--Inserting value in Persons
INSERT INTO Persons VALUES (
01,'Holland','Tom',15);-- This Gives us Error as Age is less than 18

INSERT INTO Persons VALUES (
01,'Hemsworth','Chris',25);

--Displaying content of the table 
SELECT * FROM Persons;

--IMplement CHECK Constraint so that 
--Age > 18 and Country = 'Singapore'
--in above table
--First We Alter the table for Country Column and 
--then We Will Add CHECK Constraint 


alter table Persons 
add country varchar(50) 
check (country = 'Singapore');

ALTER TABLE PersonsADD CHECK (Age>18 AND country='Singapore');

insert into Persons values(2,'Samuel','Pete', 56, 'Canada');

insert into Persons values(2,'Samuel','Pete', 56, 'singapore');

ALTER TABLE Persons
DROP CONSTRAINT Age;

--Giving Name to Constraint so that later we cxan drop it 
ALTER TABLE PersonsADD CONSTRAINT CHECK_AGE_COUNTRY CHECK (Age>18 AND country='Singapore');

--Now we can Drop Constraint with the help of its name
ALTER TABLE Persons 
DROP CONSTRAINT CHECK_AGE_COUNTRY;

--Lets Chcek if the constraint is removed from the table 
insert into Persons values(2,'Samuel','Pete', 56, 'Canada');

insert into Persons values(2,'Samuel','Pete', 17, 'singapore');

SELECT * FROM Persons;

-- DROP the table
--Run All SQL Queries Again this time with CHECK COnstraint name 

DROP TABLE Persons;