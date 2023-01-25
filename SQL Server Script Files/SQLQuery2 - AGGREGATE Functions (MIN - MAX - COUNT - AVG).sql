-- This is one of the AGGREGATE functions (AVG).
-- This tells us the mean average of numeric values from the column I specified -       1
-- in this case the average release year from the table 'Game Platform'.
SELECT AVG(release_year) FROM game_platform

-- This AGGREGATE function is the (COUNT) function.
-- This tells us the number of something in a column I specified -                      2
-- in this case from the table 'Genre'.
SELECT COUNT(genre_name) FROM genre ;

-- This AGGREGATE function is the (MAX) function.
-- This tells us the largest value from the specified column -
-- in this case the maximum number of sales from the table 'Region Sales'.              3
SELECT MAX(num_sales) FROM region_sales

-- This AGGREGATE function is the (MIN) function.
-- This tells us the largest value from the specified column -
-- in this case the minimum number of sales from the table 'Region Sales'.              4
SELECT MIN (num_sales) FROM region_sales