USE test;

-- CHAR
CREATE TABLE mytable1 (
		col1 CHAR(1),
        col2 CHAR(2),
        col3 CHAR(3),
        col4 CHAR(4)
);

INSERT INTO mytable1 (col1, col2, col3, col4) 
VALUES ('a', 'ab', 'abc', 'abcd');

SELECT * FROM mytable1;

-- 오류 발생.
INSERT INTO mytable1 (col1)
VALUES ('ab');
-- 기준보다 작은 수는 가능. (하지만 나머지는 빈공간으로 남아있음.
INSERT INTO mytable1 (col4)
VALUES ('ab');

-- VARCHAR
CREATE TABLE mytable2 (
	c1 VARCHAR(1),
    c2 VARCHAR(2),
    c3 VARCHAR(3),
	c4 VARCHAR(4)
);

INSERT INTO mytable2 (c1, c2, c3, c4) VALUES ('a', 'ab', 'abc', 'abcd');

-- 오류 발생.
INSERT INTO mytable2 (c2) VALUES ('abc');
-- 가능. 빈공간도 없이 바뀜.
INSERT INTO mytable2 (c4) VALUES ('ab');

SELECT * FROM mytable2;

CREATE TABLE mytable3 (
	name VARCHAR(11),
    address VARCHAR(255),
    postCode CHAR(5)
);

INSERT INTO mytable3 (name, address, postCode) VALUES ('kim', 'seoul', '00000');
INSERT INTO mytable3 (name, address, postCode) VALUES ('lee', 'busan', '00');

SELECT * FROM mytable3;

-- 삭제하지 않고 보이는 법 
SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';
-- '00   '

-- 원래대로 돌리는 법
SET sql_mode = '';

CREATE TABLE mytable4 (
	id VARCHAR(255),
    nickName VARCHAR(255),
    note VARCHAR(65535)
);

DESC mytable4;

INSERT INTO mytable4 (id, nickName, note) VALUES ('donald', 'trump', 'president');

SELECT * FROM mytable4;








