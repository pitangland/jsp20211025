SELECT * FROM Customers ORDER BY CustomerID DESC;

UPDATE Customers
SET Address = 'yeoksam'
WHERE CustomerID = 100;

UPDATE Customers 
SET Address = 'mancity', City = 'Suwon', PostalCode = '3333'
WHERE CustomerID = 100;

UPDATE Customers
SET CustomerName = 'kimkim'
WHERE CustomerID = 94;

-- JDBC용
UPDATE Customers
SET
	CustomerName = ?,
    ContactName = ?,
    Address = ?,
    City = ?,
    PostalCode = ?,
    Country = ?
WHERE
	CustomerID = ?
    
    
    