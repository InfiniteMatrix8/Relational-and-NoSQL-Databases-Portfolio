-- The following queries are simple examples of each function to demonstrate how each opertator works.
-- The first operator I will use is the UNION function.

SELECT First_Name, Last_Name 
FROM Sales.Customers
UNION
SELECT First_Name, Last_Name 
FROM Sales.Staffs
ORDER BY First_Name

-- The second operator I will use is the UNION ALL function.

SELECT First_Name, 'Customer' AS 'Role' FROM Sales.Customers
UNION ALL
SELECT First_Name, 'Staff' AS 'Role' FROM Sales.Staffs
ORDER BY Role 

-- The third operator I will use is the INTERSECT function.

SELECT Last_Name FROM Sales.Customers
INTERSECT
SELECT Last_Name FROM Sales.Staffs
ORDER BY Last_Name

-- The last operator I will use is the EXCEPT function.

SELECT First_Name FROM Sales.Staffs
EXCEPT
SELECT First_Name FROM Sales.Customers
ORDER BY First_Name