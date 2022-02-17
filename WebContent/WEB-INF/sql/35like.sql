USE test;

SELECT * FROM Customers
WHERE CustomerName = 'Alfreds Futterkiste';

SELECT * FROM Customers
WHERE CustomerName LIKE 'Alf%';		-- % : 아무거나 0개이상 일치

SELECT * FROM Customers
WHERE CustomerName LIKE 'A%';

SELECT * FROM Customers
WHERE CustomerName LIKE '%A';

SELECT * FROM Customers
WHERE CustomerName LIKE '%A%';

-- 연습 1 : Employees 에서 LastName 에 'u'가 포함된 직원들 조회
SELECT * FROM Employees
WHERE LastName LIKE '%U%';

-- 연습 2 : Employees 에서 Notes 에 'BA' 가 포함된 직원들 조회
SELECT * FROM Employees
WHERE Notes LIKE '%BA%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'Ernst Hande_'; 	-- _(언더바) : 한글자 아무거나

-- 연습 3 :dao의 쿼리
SELECT employeeID, lastName, firstName, birthDate, notes
FROM Employees
WHERE note LIKE ?
		OR lastName LIKE ?
        OR firstName LIKE ?
;









