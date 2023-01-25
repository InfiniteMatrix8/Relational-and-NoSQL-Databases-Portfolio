-- The following queries are an attempt of the PIVOT and UNPIVOT construct.
-- PIVOT is an operator that is used to transform a table into
-- another, a simpler view of the table. The UNPIVOT operator does the
-- opposite and transforms the data into rows.


SELECT Product_ID, Quantity, List_Price
FROM Sales.Order_Items
PIVOT
(
SUM(List_Price) FOR Product_ID IN (20)  -- My understanding was that I have to specify a specific record
AS                                      -- in the Product-ID column.
PIVOT TABLE

-- I can't attempt an UNPIVOT query if I can't do an inital PIVOT query.
-- The error I recieved for the above query is a syntax error.