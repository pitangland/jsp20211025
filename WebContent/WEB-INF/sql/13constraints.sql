USE test;

-- NOT NULL
CREATE TABLE mytable12 (
	col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL
);

SELECT * FROM mytable12;

INSERT INTO mytable12 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable12 (col2) VALUES ('ghi');

-- col2의 값을 넣어주지 않았기에 오류가 남.
INSERT INTO mytable12 (col1) VALUES ('jkl');

-- UNIQUE
CREATE TABLE mytable13 (
	col1 VARCHAR(5),
	col2 VARCHAR(5) UNIQUE
);

SELECT * FROM mytable13;

INSERT INTO mytable13 (col1, col2) VALUES ('abc', 'def');

-- 중복이 되어있기에 오류가 남.
INSERT INTO mytable13 (col1, col2) VALUES ('abc', 'def');

INSERT INTO mytable13 (col1, col2) VALUES ('abc', 'de');

INSERT INTO mytable13 (col1) VALUES ('abc');
INSERT INTO mytable13 (col1) VALUES ('abc');

-- NOT NULL, UNIQUE
CREATE TABLE mytable14 (
	col1 VARCHAR(5),
    col2 VARCHAR(5) NOT NULL UNIQUE
);

SELECT * FROM mytable14;

INSERT INTO mytable14 (col1, col2) VALUES ('abc', 'def');
-- 오류가 남.
INSERT INTO mytable14 (col2) VALUES ('def');
INSERT INTO mytable14 (col1) VALUES ('abc');

INSERT INTO mytable14 (col1, col2) VALUES ('ghi', 'jkl');

-- CHECK
CREATE TABLE mytable15 (
	col1 INT,
    col2 INT CHECK (col2 >= 100 AND col2 <= 200)
);

SELECT * FROM mytable15;

INSERT INTO mytable15 (col1, col2) VALUES (-1000, 100);

-- 조건에 맞지 않으므로 오류가 남.
INSERT INTO mytable15 (col1, col2) VALUES (-10000, 300);

-- DEFAULT
CREATE TABLE mytable16 (
	col1 INT DEFAULT 0,
    col2 VARCHAR(5) DEFAULT 'a',
    col3 DATE DEFAULT NOW(),
    col4 DATETIME DEFAULT NOW()
);

SELECT * FROM mytable16;

INSERT INTO mytable16 VALUES();
INSERT INTO mytable16 (col1) VALUES (10);
INSERT INTO mytable16 (col3, col4) VALUES ('1999-11-26', '1999-11-26 11:22:33');

-- DESC 테이블을 어떻게 만들었는지 보고싶다.
DESC mytable16;

DESC mytable12;
DESC mytable13;
DESC mytable14;







