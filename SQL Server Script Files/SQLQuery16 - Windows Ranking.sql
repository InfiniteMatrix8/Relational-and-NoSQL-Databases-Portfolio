-- The following queries make use of the Windows Ranking function.

-- Example 1. 
-- In this example I have selected a range of fields from the Products table
-- then I have ordered it by list price. The Rank Over function is applied to each 
-- row in each partition and reinitialized when crossing the partition’s boundary.

SELECT Product_ID, Product_Name, List_Price,
RANK () OVER (
ORDER  BY List_Price DESC
) Price_Rank
FROM Production.Products

-- Example 2.
-- In this example I have selected a range of information from the staff including
-- the first and last names, phone number and active. I then have ordered it all by 
-- Staff ID using the Rank Over function.

SELECT First_Name, Last_Name, Phone, Active,
RANK () OVER (
ORDER  BY First_Name DESC
) Staff_ID
FROM Sales.Staffs

