USE test;

-- full outer join
SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

-- mysql에서는 지원하지 않음.
-- SELECT * FROM mytable27Customer c FULL OUTER JOIN mytable28Tel t ON c.id = t.customerId; 
