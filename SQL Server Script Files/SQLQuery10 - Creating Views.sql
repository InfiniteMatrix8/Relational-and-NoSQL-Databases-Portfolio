--The following query will create a simple view that will consist of Customer Emails.

CREATE VIEW Sales.CustomerEmails
AS
SELECT First_Name, Last_Name, Email
FROM Sales.Customers

--The following query will select from the new view that has just been created.

SELECT First_Name, Last_Name, Email
FROM Sales.CustomerEmails


-- The following query will clean up the views by getting rid of the view we have just created.

DROP VIEW Sales.CustomerEmails