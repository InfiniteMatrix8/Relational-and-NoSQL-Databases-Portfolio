-- The following query is an example of passing parameters to a
-- stored query. In the example below I am creating a procedure that 
-- gets all information about orders from customers. 
-- The parameter given is the order ID being classed as INT.

CREATE PROCEDURE OrdersByCustomers
(@order_id AS INT)
AS
SELECT customer_id, store_id, order_status, shipped_date
FROM Sales.Orders
WHERE order_id = @order_id
ORDER BY store_id