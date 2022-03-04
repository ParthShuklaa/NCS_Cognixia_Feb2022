CREATE DATABASE NCS2020;
USE NCS2020;
CREATE TABLE EMPLOYEE (
PersonId int,
LastName varchar(25),
Firstname varchar(25),
Address varchar(150),
City varchar(100)
);

-- Displaying content of the table 
Select * from EMPLOYEE;
--Inserting Rows in table Employee
INSERT INTO EMPLOYEE VALUES  (
'007','BECKHAM','DAVID','MANCHASTER','lONDON');
insert INTO EMPLOYEE VALUES ('009','MESSI','lIONEL','ARGENTINA','CAIRO');