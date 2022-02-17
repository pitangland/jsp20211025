USE test;

CREATE TABLE mytable20 (
	col1 INT,
    col2 INT
);

DESC mytable20;

-- MODIFY COLUMN (제약사항 추가)
ALTER TABLE mytable20 MODIFY COLUMN col1 INT NOT NULL;
ALTER TABLE mytable20 MODIFY COLUMN col1 INT NULL;

-- 제약사항 추가 전 제약사항을 위반하는 레코드가 있을 시
-- 제약사항 추가하는 쿼리 실행 안됨.
INSERT INTO mytable20 (col2) VALUES (3);
SELECT * FROM mytable20;

-- DEFAULT 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT DEFAULT 0;

-- DEFAULT 삭제
ALTER TABLE mytable20 ALTER col1 DROP DEFAULT;

-- CHECK 제약사항 추가
ALTER TABLE mytable20 ADD CHECK (col1 > 10);

-- 제약사항 확인
SHOW CREATE TABLE mytable20;

CREATE TABLE `mytable20` (
  `col1` int(11),
  `col2` int(11) DEFAULT NULL,
  CONSTRAINT `CONSTRAINT_1` CHECK (`col1` > 10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- CHECK 제약사항 삭제
ALTER TABLE mytable20 DROP CONSTRAINT CONSTRAINT_1;

CREATE TABLE `mytable20` (
  `col1` int(11),
  `col2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- UNIQUE 제약사항 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT UNIQUE;

-- UNIZUQ 제약사항 삭제
ALTER TABLE mytable20 DROP INDEX col1;

-- index가 없는 경우
SELECT * FROM mytable20 WHERE col1 = 10; -- 모든 레코드 탐색

-- index가 있는 경우
SELECT * FROM mytable20 WHERE col1 = 10; -- col1 인덱스를 먼저 탐색(효율적 탐색)

-- primary key 추가 (위배되는 레코드가 있으므로 아래의 코드를 실행시켜줌.)
TRUNCATE mytable20; -- 모든 레코드 삭제
ALTER TABLE mytable20 MODIFY COLUMN col1 INT PRIMARY KEY;

-- primary key 삭제
ALTER TABLE mytable20 DROP PRIMARY KEY;

CREATE TABLE `mytable20` (
  `col1` int(11) NOT NULL,
  `col2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci






