-- The following query is an attempt to implement a simple
-- grouping sets query. The grouping sets query defines multiple 
-- grouping sets in the same query. 

-- I kept getting an error that the in the fields I selected 
-- in the initial select statement is not contained in either an aggregate function or the GROUP BY clause.
-- I didn't manage to fix the error

SELECT Product_ID, Product_Name, SUM(List_Price)
FROM Production.Products
GROUP BY
GROUPING SETS (Product_ID, Brand_ID)

SELECT List_Price, Order_ID, SUM(Quantity) AS 'TotalQty'
FROM Sales.Order_Items
GROUP BY 
GROUPING SETS((Order_ID),(Product_ID),())
ORDER BY Order_ID;