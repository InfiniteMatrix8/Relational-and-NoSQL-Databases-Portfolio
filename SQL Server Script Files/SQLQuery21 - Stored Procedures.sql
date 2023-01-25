-- The following queries are simple examples for Stored Procedures.
-- These are simple to demonsrate the ability of creating procedures.

-- Example 1.
CREATE PROCEDURE SelectAllStaff
AS
SELECT * FROM Sales.Staffs

EXEC SelectAllStaff


-- Example 2.
CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Sales.Customers

EXEC SelectAllCustomers

-- Example 3.

CREATE PROCEDURE CustomersByCity
AS
SELECT First_Name, Last_Name, City FROM Sales.Customers

EXEC CustomersByCity

-- Example 4.

CREATE PROCEDURE StoresByCity
AS
SELECT Store_Name, City, Street FROM Sale.Stores
EXEC StoresByCity