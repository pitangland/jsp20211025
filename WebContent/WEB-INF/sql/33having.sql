SELECT Country, count(CustomerID) people FROM Customers
-- WHERE count(CustomerID) > 10
GROUP BY Country
HAVING count(CustomerID) >= 10;	-- people 도 가능.

-- 연습 1 : 주문을 한 번만 한 사람들 조회 (CustomerName)
-- table : Orders, Customers
SELECT o.CustomerID, c.CustomerName, count(OrderID)
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
HAVING count(OrderID) = 1;

-- 연습 2 : 주문을 한번만 또는 한번도 안한 사람들 조회
SELECT c.CustomerID, c.CustomerName, count(o.OrderID) count
FROM Orders o RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
HAVING count(o.OrderID) <= 1
ORDER BY count, c.CustomerID;

-- 연습 3 : 주문을 한번 또는 0번 받은 직원들 조회
SELECT e.EmployeeID, e.LastName, e.FirstName, count(o.OrderID) '주문 받은 직원'
FROM Employees e LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
HAVING count(o.OrderID) <= 1;

-- GROUP BY 는 여러칼럼 기준으로도 가능하다.
SELECT Country, City, count(CustomerID) 
FROM Customers
GROUP BY Country, City;







