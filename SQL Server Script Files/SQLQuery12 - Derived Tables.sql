--This query is an example of using derived tables.
-- In this example I have derived two tables from the table
-- Orders.

SELECT Order_ID, Order_Status
FROM  (Sales.Orders)
SELECT Product_ID, COUNT(DISTINCT Item_ID) AS Item_Count
	FROM Sales.Order_Items
SELECT YEAR(order_date) AS orderyear ,customer_ID
        FROM Sales.Orders
		AS derived_table_1
	GROUP BY order_date AS derived_table_2
WHERE Item_Count > 80;