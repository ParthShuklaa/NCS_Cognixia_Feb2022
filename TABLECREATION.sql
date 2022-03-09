USE NCS2020;
CREATE TABLE AGENTS (
AGENT_CODE CHAR(6) NOT NULL PRIMARY KEY,
AGENT_NAME CHAR(50),
WORKING_AREA CHAR(40),
PHONE_NO CHAR(10),
COUNTRY VARCHAR(25) );

SELECT * FROM AGENTS;
INSERT INTO AGENTS VALUES ('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814', 'IN');
INSERT INTO AGENTS VALUES ('A003', 'Alex ', 'London', '0.13', '075-12458969', '');
INSERT INTO AGENTS VALUES ('A008', 'Alford', 'New York', '0.12', '044-25874365', '');
INSERT INTO AGENTS VALUES ('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', '');
INSERT INTO AGENTS VALUES ('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', '');
INSERT INTO AGENTS VALUES ('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', '');
INSERT INTO AGENTS VALUES ('A005', 'Anderson', 'Brisban', '0.13', '045-21447739', '');
INSERT INTO AGENTS VALUES ('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', '');
INSERT INTO AGENTS VALUES ('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', '');
INSERT INTO AGENTS VALUES ('A006', 'McDen', 'London', '0.15', '078-22255588', '');
INSERT INTO AGENTS VALUES ('A004', 'Ivan', 'Torento', '0.15', '008-22544166', '');
INSERT INTO AGENTS VALUES ('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', '');

--How to To Modify an Existign table Structure ??
ALTER TABLE AGENTS
ADD COMMISSION VARCHAR(10),


SELECT * 
FROM AGENTS;

--What if We drop Last three Columns
ALTER TABLE AGENTS
DROP COLUMN COMMISSION,COUNTRY,PHONE_NO;

ALTER TABLE AGENTS
ADD COMMISSION VARCHAR(10),
PHONE_NO CHAR(10),
COUNTRY VARCHAR(25);

SELECT * FROM NCS2020.INFORMATION_SCHEMA.TABLES;

--Changing the size of our Column Attribute 
--ex Phone_Number(10) - PhoneNumber(20)

ALTER TABLE AGENTS
ALTER COLUMN PHONE_NO CHAR(20);

--Checking For Primary Key Constraint
INSERT INTO AGENTS VALUES ('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', '');

--Checking for Not NUll Constraint
INSERT INTO AGENTS VALUES ( ' ' , 'Benjamin', 'Hampshair', '0.11', '008-22536178', '');

--Implemeting FOREIGN KEY Constraint

CREATE TABLE Orders (
OrderID int NOT NULL PRIMARY KEY,
OrderNumber int NOT NULL,
AGENT_CODE CHAR(6) REFERENCES AGENTS(AGENT_CODE)); 

INSERT INTO Orders VALUES (
'03','3','A001');

Select * From Orders;

--Creating Customer Table 
CREATE TABLE CUSTOMER (
CUST_ID int IDENTITY(100,5),
CUST_CODE VARCHAR(20) PRIMARY KEY,
CUST_CITY CHAR(25),
AGENT_CODE CHAR(6) REFERENCES AGENTS,
OrderID int REFERENCES Orders );

INSERT INTO CUSTOMER VALUES (
'C0001','MUMBAI','A001','04');--This wiil not work as there is no order id as '04' defined in order table 
INSERT INTO CUSTOMER VALUES (
'C0001','MUMBAI','A001','03');

SELECT * FROM CUSTOMER;