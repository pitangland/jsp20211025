USE test;

-- 중복과 NULL은 가능한한 피하기

-- 예제 (1 정규화, first normal form, 1NF)
-- https://ko.wikipedia.org/wiki/%EC%A0%9C1%EC%A0%95%EA%B7%9C%ED%98%95
CREATE TABLE mytable21Customer (
	customerID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(255) NOT NULL,
    surName VARCHAR(255) NOT NULL
    -- tel1 VARCHAR(255),
    -- tel2 VARCHAR(255),
    -- tel3 VARCHAR(255)
);

DROP TABLE mytable22Tel;


CREATE TABLE mytable22Tel (
	id INT PRIMARY KEY AUTO_INCREMENT,
	customerID INT NOT NULL,
    tel VARCHAR(255) NOT NULL
);







