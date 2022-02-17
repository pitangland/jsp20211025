USE test;

-- right outer join
SELECT * FROM mytable27Customer;	-- 3, 4, 5, 6
SELECT * FROM mytable28Tel;			-- 1, 3, 4

SELECT * FROM mytable27Customer c RIGHT OUTER JOIN mytable28Tel t ON c.id = t.customerId;
SELECT * FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerId;

-- 주인 없는 전화번호
SELECT *
FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerId
WHERE c.id IS NULL;

-- 연습 : 주문한 적 없는 고객명 오름차순 조회
-- 사용테이블 : Customers, Orders
SELECT c.CustomerName 
FROM Orders o RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL 
ORDER BY 1;

-- 연습2 : 주문받은 적 없는 직원명 오름차순 조회
-- 사용테이블 : Employees, Orders
SELECT e.LastName, e.FirstName
FROM Orders o RIGHT JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderID IS NULL
ORDER BY 1, 2;

