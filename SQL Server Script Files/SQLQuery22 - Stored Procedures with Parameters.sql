-- These following queries are the same as storing procedures
-- however this time I will be specifiying a parameter.

-- Example 1.

CREATE PROCEDURE Sales.Customers1 @City varchar(50)
AS
SELECT *
FROM Sales.Customers
WHERE City = @City

-- Example 2.

CREATE PROCEDURE StaffPhoneNumbers @Phone varchar (25)
AS
SELECT *
FROM Sales.Staffs
WHERE Phone = @Phone

-- Example 3.

CREATE PROCEDURE AllProductNames @Product_Name varchar (255)
AS
SELECT *
FROM Sales.Products
WHERE Product_Name = @Product_Name
