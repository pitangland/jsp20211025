USE test;

-- count : 개수
-- Customers 테이블의 row 수
SELECT count(*) FROM Customers;
SELECT * FROM Customers;
SELECT count(CustomerID) FROM Customers;
SELECT count(ContactName) FROM Customers;	-- null은 count안함.
SELECT * FROM Customers WHERE ContactName IS NULL;

SELECT * FROM Customers ORDER BY Country;
SELECT count(DISTINCT Country) FROM Customers ORDER BY Country;

-- 연습 1 : Suppliers 의 city 칼럼의 값이 중복없이 몇 개 있는지?
SELECT count(DISTINCT City) FROM Suppliers;

-- 연습 2 : Suppliers 의 country 칼럼의 값이 중복없이 몇 개 있는지?
SELECT count(DISTINCT Country) FROM Suppliers;

-- 연습 3 : Seafood 가 몇번 주문되었는지 조회
SELECT count(*) FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
							JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = 'Seafood';

-- 연습 4 : Seafood를 한 번이라도 주문한 적이 있는 고객 수 조회
SELECT c.CustomerID, c.CustomerName, ct.CategoryName FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
                       JOIN OrderDetails od ON o.OrderID = od.OrderID
                       JOIN Products p ON p.ProductID = od.ProductID
                       JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = 'Seafood'
ORDER BY 1;

SELECT count(DISTINCT c.CustomerID) FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
                       JOIN OrderDetails od ON o.OrderID = od.OrderID
                       JOIN Products p ON p.ProductID = od.ProductID
                       JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = 'Seafood';










