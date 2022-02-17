USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;

DELETE FROM Customers WHERE CustomerID = 94;
DELETE FROM Customers WHERE CustomerID = 93;

-- safe 모드이기 때문에 하나를 지우는 것은 가능. 여러개를 지우는 것 X
DELETE FROM Customers WHERE Address = 'gangnam';

-- safe 모드를 푸는 것
SET SQL_SAFE_UPDATES = 0;
-- safe 모드를 키는 것
SET SQL_SAFE_UPDATES = 1;



