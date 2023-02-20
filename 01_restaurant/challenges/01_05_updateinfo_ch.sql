-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

SELECT CustomerID, FirstName, LastName, Address 
FROM Customers 
WHERE FirstName = 'Taylor' 
AND LastName = 'Jenkins'

update customers
set address = '74 Pine St.', city = 'New York', state = 'NY'
where CustomerID = 26

SELECT * FROM Customers
WHERE CustomerID = 26 