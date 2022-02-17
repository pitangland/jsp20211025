SELECT * FROM Customers;

-- WHERE : 조건에 해당하는 행 (row, record) 만 필터

SELECT * FROM Customers WHERE Country = 'Brazil'; 	-- sql에서 문자열은 작은 따옴표를 사용

-- Customers 테이블에서 Country가 France인 행만 조회하는 코드 완성
SELECT * FROM Customers WHERE Country = 'France';
SELECT * FROM Customers WHERE Country = 'france'; 	-- 대소문자 구분하지 않음.

-- where 에서 사용할 수 있는 연산자
SELECT * FROM Customers WHERE CustomerID > 50;
SELECT * FROM Customers WHERE CustomerID < 5;

SELECT * FROM Customers WHERE CustomerID >= 89;
SELECT * FROM Customers WHERE CustomerID <= 5;

SELECT * FROM Customers WHERE CustomerID <> 1;	-- 같지 않다.
SELECT * FROM Customers WHERE CustomerID != 1;	-- 같지 않다.

-- 비교 연산 사용시 주의
SELECT * FROM Customers WHERE CustomerID = 1;	-- number와 string 연산시 형변환이 일어남.(string->number)
SELECT * FROM Customers WHERE CustomerID = '1';	

SELECT * FROM Customers WHERE CustomerID <= '3';

SELECT * FROM Customers WHERE Country >= 'Mexico';	-- 사전순(캐릭터코드) 비교
SELECT * FROM Customers WHERE Country < 'Mexico';

SELECT * FROM Customers WHERE Country >= 'mexico';	-- 대소문자 구분 안함.



