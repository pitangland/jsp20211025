USE test;

CREATE TABLE mytable5 (
	name VARCHAR(255),
    age INT
);

DESC mytable5;

INSERT INTO mytable5 (name, age) VALUES ('son', 77);

SELECT * FROM mytable5;

CREATE TABLE mytable6 (
	name VARCHAR(255),
    score DOUBLE
);

DESC mytable6;

INSERT INTO mytable6 (name, score) VALUES ('park', 3.14);

SELECT * FROM mytable6;

-- dec = decimal 같은 것, (총길이, 소수점길이)
CREATE TABLE mytable7 (
	col1 DECIMAL(3),
    col2 DECIMAL(5, 2)
);

INSERT INTO mytable7 (col1, col2) VALUES (100, 100.33);

SELECT * FROM mytable7;

-- 999 값으로 들어감.
INSERT INTO mytable7 (col1) VALUES (1100);
-- 잘려서들어감. 100.12
INSERT INTO mytable7 (col2) VALUES (100.123);
-- 999.99 값으로 들어감.
INSERT INTO mytable7 (col2) VALUES (1100.12);

-- 연습:  mytable8 만들기 
CREATE TABLE mytable8 (
	id INT,
    name VARCHAR(255),
    password VARCHAR(255),
    score DOUBLE
);

DESC mytable8;










