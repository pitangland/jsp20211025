USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;

INSERT INTO Customers VALUES (92, 'Kim', 'Kim', 'GangNam', 'Seoul', '88888', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName) VALUES (93, 'Lee');

INSERT INTO Customers (CustomerID, ContactName) VALUES (94, 'kim');

INSERT INTO Customers (CustomerID, CustomerNPRIMARYPRIMARYame, ContactName, Address, City, PostalCode, Country)
VALUES (95, 'Park', 'JiSung', 'Yeoksam', 'Seoul', '77777', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (96, 'Kim', 'Pitang', 'Seocho', 'Seoul', '020202', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (97, 'Pitang', 'Land', 'Hongdae', 'Seoul', '828282', 'Korea');

-- 두 개의 row(record, data)를 CustomerID 컬럼의 값을 직접 작성하지 않고 추가
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Park', 'Pitang', 'Seocho1', 'Seoul', '12345', 'Korea');

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Hwang', 'Pitang', 'Wonju', 'Kangwon', '45678', 'Korea');

