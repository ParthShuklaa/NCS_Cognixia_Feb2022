
CREATE TABLE Persons (
ID int NOT NULL,
LastName varchar(25) NOT NULL,
FirstName varchar(25));

INSERT INTO Persons VALUES (
01,'Hemsworth','Chris');

alter table Persons 
add country varchar(50);

Alter TABLE Persons
add Age varchar(20);

SELECT * FROM Persons;

insert into Persons values(
DROP CONSTRAINT CHECK_AGE_COUNTRY;