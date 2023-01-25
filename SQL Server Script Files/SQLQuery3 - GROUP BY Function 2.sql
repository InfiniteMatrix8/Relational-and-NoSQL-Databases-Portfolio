-- This example uses the function GROUP BY.
-- The GROUP BY function groups rows that have the same values into summary rows.
-- In this example I have selected the average number of sales from the table 'Region Sales ' -
-- and grouped the results by the Region ID .

SELECT AVG(num_sales)
FROM region_sales
GROUP BY region_id