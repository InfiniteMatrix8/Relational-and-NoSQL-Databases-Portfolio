-- Using EXISTS function:
-- The following query selects Customer and Order ID from the Order table
-- then outputs the order ID if a customer has ordered (EXISTS).
SELECT customer_id, order_id
FROM Sales.Orders AS B
WHERE EXISTS (
	SELECT * 
	FROM Sales.Orders AS D
	WHERE B.customer_id=D.order_id);

-- Using NOT EXISTS function:
-- The following query selects Customer ID and Zip Code from the Customer table
-- then outputs the zip code.
SELECT customer_id, zip_code
FROM Sales.Customers AS B
WHERE NOT EXISTS (
	SELECT * 
	FROM Sales.Customers AS D
	WHERE B.customer_id=D.zip_code);


