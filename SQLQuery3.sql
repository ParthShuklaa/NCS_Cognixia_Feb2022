Use NCS2020;
Select * from EMPLOYEE;
INSERT INTO EMPLOYEE VALUES (
'11','Sunil','Chettri','INDIA','KOLAKATA');

--Adding a record with even No of ID
INSERT INTO EMPLOYEE VALUES (
'10','Ronaldo','C','Portgul','Portgul');

INSERT INTO EMPLOYEE VALUES (
'15','S','C','INDONASIA','KOLAKATA');

DELETE FROM EMPLOYEE WHERE Address = 'INDIA'; 
--DELETE FROm TABLE Where CONDITION
DELETE FROM EMPLOYEE WHERE Address = 'INDIA'; 

--Delete Should be Done on a Column 
--Value which always have UNique Values 
DELETE FROM EMPLOYEE WHERE Address = 'india'; 

--We can specifying list of colums in SELECT 
SELECT LastName, Firstname 
FROM EMPLOYEE;

--How to Return Distinct values for a Particular colums

SELECT DISTINCT City FROM EMPLOYEE;
--How to Return every Row from a Distinct value
SELECT DISTINCT City, LastName FROM EMPLOYEE;

--Thats Why It is very IMportant to have a colums with Unique Value  only 
--Constraint 

--Counting No of Distinct values COUNT() Function
SELECT COUNT( DISTINCT CITY) FROM EMPLOYEE;

--Display Lastname, Firstname & Adress Where Person Id
--is >9 and < 10
--By Specifying Certain Range 
 SELECT LastName,Firstname,Address, PersonId
 FROM EMPLOYEE 
 WHERE PersonId BETWEEN 9 AND 10;

 --By Specifiying Multiple possible value fora column
 SELECT *
 FROM EMPLOYEE
 WHERE PersonId IN( '9','10');

 --Display Record with Eve no personid!!
 SELECT *
 FROM EMPLOYEE
 WHERE PersonId % 2 = 0;

 --Display Records where Country First Char is I
 SELECT *
 FROM EMPLOYEE
 WHERE Address LIKE 'I%';
 --Display Records for 'BECKHAM' and personId is 7
 Select * 
 FROM EMPLOYEE
 WHERE LastName ='BECKHAM' AND PersonId = '7'; 

