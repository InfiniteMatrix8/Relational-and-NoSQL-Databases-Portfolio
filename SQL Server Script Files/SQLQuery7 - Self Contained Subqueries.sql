-- A subquery that is embedded within another query and 
-- can be used to return a set of values that can be used within the outer query.

-- In this example, I am selecting weight from the 'Person' table and then doing another
-- embedded query inside to return the average weight using the AVG aggregate function.
SELECT weight 
FROM person
WHERE weight > (SELECT AVG(weight) FROM person);


-- In this example, I am selecting height from the 'Person' table and then doing another
-- embedded query inside to return the average height using the AVG aggregate function.
SELECT height
FROM person
WHERE height > (SELECT AVG(height) from person);

-- In this example, I am selecting age from the 'Games Competitor' table and then doing another
-- embedded query inside to return the average weight using the AVG aggregate function.
SELECT age
FROM games_competitor
WHERE age > (SELECT AVG(age) FROM games_competitor);

 