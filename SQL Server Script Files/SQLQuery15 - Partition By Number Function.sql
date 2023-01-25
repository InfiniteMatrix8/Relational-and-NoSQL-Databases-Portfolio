-- The following examples are queries that make use of the
-- Partition by Row Number Function.

-- Example 1.
-- In the first example I am selecting a few fields from the Customer table
-- including first and last names and email, then partitioning them by email.

SELECT 
First_Name, Last_Name, Email,
ROW_NUMBER() OVER (
PARTITION BY Email
ORDER BY First_Name
) ROW_NUM
FROM Sales.Customers
ORDER BY First_Name

-- Example 2.
-- In this example I am selecting fields from the Orders table and partitioning 
-- them by the Order Status.

SELECT 
Order_ID, Order_Status, Order_Date,
ROW_NUMBER() OVER (
PARTITION BY Order_Status
ORDER BY Order_ID
) ROW_NUM
FROM Sales.Orders
ORDER BY Order_ID