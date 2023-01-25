-- This example uses the function GROUP BY.
-- The GROUP BY function groups rows that have the same values into summary rows.
-- In this example I have selected the platform ID from the table 'Game Platform' -
-- and grouped the results by the year of release.

SELECT COUNT(platform_id)
FROM game_platform
GROUP BY release_year;