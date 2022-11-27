CREATE TABLE CUSTOMERS(
CustomerID INT,	CustomerName VARCHAR(50),
ContactNO VARCHAR (50),	City VARCHAR(50),
PostalCode INT,Country VARCHAR(50));



INSERT INTO CUSTOMERS VALUES(1,'SHREYAS','9638527456','LONDON',573201,'ENGLAND');
SELECT * FROM CUSTOMERS;


/*1*/
CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM CUSTOMERS
GO

EXEC SelectAllCustomers; /*EXECUTION*/


/*2*/
CREATE PROCEDURE SelectAllCity
@City nvarchar(30)
AS
SELECT * FROM CUSTOMERS WHERE City = @City
GO

EXEC SelectAllCity @City = 'LONDON';




/*3*/
CREATE PROCEDURE
SelectAllCityAndPC @City nvarchar(30), 
@PostalCode nvarchar(10)
AS
SELECT * FROM CUSTOMERS WHERE City = @City AND PostalCode = @PostalCode
GO

EXEC SelectAllCityAndPC @City = 'MANGALORE', @PostalCode = '587965';

/*4.DROP*/
DROP PROCEDURE SelectAllCityAndPC;




