--The following query is an example of an inline TVF.
-- In this example, I am creating a function that will return 
-- the product list price that is greater than 10.

CREATE FUNCTION dbo.GetProductListPrice
(@ProductListPrice BIGINT)
RETURNS TABLE
AS
RETURN
(SELECT Product_ID,
		Product_Name,
		Brand_ID,
		List_Price
FROM Production.Products
WHERE list_price > 10)


-- This will output the information from the function above.
SELECT product_id, product_name, brand_id, list_price
FROM dbo.GetProductListPrice(10252);
GO
