-- The following query is an example of CTE.
-- CTE means common table expression and in the example below
-- I have made an example out of a customers city and first name.

WITH CTE_Customer (City,First_Name) 
AS
(SELECT City, First_Name 
FROM Sales.Customers)
SELECT City, First_Name FROM CTE_Customer

-- Another example.

WITH CTE_Staff (Staff_ID, First_Name, Email) 
AS
(SELECT Staff_ID, First_Name, Email
FROM Sales.Staffs)
SELECT Staff_ID, First_Name, Email FROM CTE_Staff