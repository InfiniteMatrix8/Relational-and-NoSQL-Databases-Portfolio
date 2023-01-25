-- The following query uses the Staff ID 
-- from the Order table to output orders 
-- placed by a staff member on the earliest 
-- order date for each member of staff.

SELECT order_id, staff_id, order_date
FROM Sales.Orders AS O1
WHERE order_date =
	(SELECT MIN(order_date)
	 FROM Sales.Orders AS O2
	 WHERE O2.staff_id = O1.staff_id)
ORDER BY staff_id, order_date;

-- The following query uses the Item ID
-- from the Order Items table to output the minimum 
-- list price from an order using the Item ID.


SELECT order_id, item_id, list_price
FROM Sales.Order_Items AS O1
WHERE list_price =
	(SELECT MIN(list_price)
	FROM Sales.Order_Items AS O2
	WHERE O2.item_id = O1.item_id)
ORDER BY list_price, order_id;

-- The following query uses the Model Year 
-- from the Products table to output the latest
-- year that the product came out ordered by the
-- product ID and list price.

SELECT product_id, list_price, model_year
FROM Production.Products AS O1
WHERE model_year =
	(SELECT MAX(model_year)
	FROM Production.Products AS O2
	WHERE O2.model_year = O1.model_year)
	ORDER BY product_id, list_price