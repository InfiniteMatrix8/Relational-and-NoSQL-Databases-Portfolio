-- This example uses the HAVING function which is used to use with AGGREGATE fucntions.
-- In this example I selected the 'Season' from the 'Games' table.
-- I then grouped the data by the 'Games Year' and then used the HAVING function -
-- which I filtered the results by the maximum year of 2004.

SELECT COUNT (season) FROM games
GROUP BY games_year
HAVING MAX (games_year)  = '2004'