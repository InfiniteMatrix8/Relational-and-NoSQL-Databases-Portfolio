-- This example uses the HAVING function which is used to use with AGGREGATE fucntions.
-- In this example I selected the 'PLatform ID' from the 'Game Platform' table.
-- I then grouped the data by the 'Game Publisher ID' and then used the HAVING function -
-- which I filtered the results by the maximum release year od 2000.

SELECT COUNT (platform_id) FROM game_platform
GROUP BY game_publisher_id
HAVING MAX (release_year) = '2000'