use NCS2020;
--Create a Table named Invoice with Follwing details 
--Invoice_No int Not Null
--Amount Varchar(30)
--OrderDate date with a default value of current date GETDATE()
-- Implemeting Index 

CREATE TABLE INVOICE (
InvoiceNo int NOT NULL,
AMOUNT VARCHAR(30),
OrderDate date Default GETDATE()
);

INSERT INTO INVOICE VALUES
(001,500,Default);

SELECT * FROM INVOICE;

INSERT INTO INVOICE VALUES
(002,750,'2022-02-01');

CREATE INDEX InvoiceINdex
on INVOICE (AMOUNT);

SP_HELPINDEX INVOICE;
