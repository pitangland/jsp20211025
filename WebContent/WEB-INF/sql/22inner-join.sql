USE test;

-- INNER JOIN
SELECT * FROM mytable27Customer;	-- 3, 4, 5, 6
SELECT * FROM mytable28Tel;			-- 1, 3, 4

SELECT * FROM mytable27Customer c INNER JOIN mytable28Tel t ON c.id = t.customerID;

-- INNER생략 가능. INNER JOIN과 같은 결과가 나옴.
SELECT * FROM mytable27Customer c JOIN mytable28Tel t ON c.id = t.customerID;