-- The following example makes use of the OVER clause in conjunction with the
-- partition by function.

-- Example 1.
-- In this first example the OVER PARTITION BY instructs SQL Server to group
-- (partition) the data by the Order ID.

SELECT Order_ID, Product_ID, Quantity,
SUM(Quantity) OVER(PARTITION BY Order_ID) AS 'Total Quantity Ordered'
FROM Sales.Order_Items

-- Example 2.
-- In this example the OVER PARTITION BY instructs SQL Server to group
-- (partition) the data by the Store ID .

SELECT Staff_ID, Store_ID, First_Name, Email,
SUM(Staff_ID) OVER(PARTITION BY Store_ID) AS 'All Staff Members'
FROM Sales.Staffs


-- Example 3. 
-- In this example the OVER PARTITION BY instructs SQL Server to group
-- (partition) the data by the City.

SELECT Store_ID, Store_Name, Street, City,
SUM(Store_ID) OVER(PARTITION BY City) AS 'All Stores'
FROM Sales.Stores
