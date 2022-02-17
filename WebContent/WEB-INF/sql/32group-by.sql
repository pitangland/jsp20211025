SELECT count(CustomerID) FROM Customers;

-- 나라별 CustomerID 수 조회
SELECT Country, count(CustomerID) FROM Customers 
GROUP BY Country
ORDER BY 1;

-- 연습 1 : 나라별 Supplier 수 조회
SELECT Country, count(SupplierID) FROM Suppliers
GROUP BY Country
ORDER BY 1;

-- 연습 2 : 가장 많은 고객이 있는 나라(들) 조회
SELECT * 
FROM (SELECT Country, COUNT(CustomerID) Count
	  FROM Customers GROUP BY Country) B
WHERE count = (SELECT MAX(Count) 
			   FROM (SELECT Country, Count(CustomerID) Count
					FROM Customers GROUP BY Country) A)
;

-- 연습 3 : 가자 적은 고객이 있는 나라(들) 조회
SELECT * 
FROM (SELECT Country, COUNT(CustomerID) Count
	  FROM Customers GROUP BY Country) B
WHERE count = (SELECT MIN(Count) 
			   FROM (SELECT Country, COUNT(CustomerID) Count
					  FROM Customers GROUP BY Country) A)
;

-- 연습 4 : 고객별 주문 수 조회 (CustomerID, 주문수)
-- table : Customers, Orders
SELECT CustomerID, count(OrderID)
FROM Orders 
GROUP BY CustomerID;

-- 연습 5 : 연습 4에 고객이름도 같이 조회 
SELECT o.CustomerID, c.CustomerName, count(o.OrderID) '주문수'
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID;

-- 연습 6 : 고객별 총 주문 수량 (CustomerID, 총 주문 수량)
-- table : Orders, OrderDetails
SELECT o.CustomerID, c.CustomerName, sum(Quantity) '총 주문 수량'
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
			  JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID;










