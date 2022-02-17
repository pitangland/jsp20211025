USE test;

-- PRIMARY KEY (기본키, 주키)
-- NOT NULL, UNIQUE

CREATE TABLE mytable17 (
	col1 INT NOT NULL UNIQUE,
    col2 INT
);

DESC mytable17;

CREATE TABLE mytable18 (
	col1 INT PRIMARY KEY,
    col2 INT
);

DESC mytable18;

-- AUTO_INCREMENT
CREATE TABLE mytable19Student (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    birth DATE NOT NULL,
    address VARCHAR(255) NOT NULL
);

DESC mytable19Student;
SELECT * FROM mytable19Student;

INSERT INTO mytable19Student (name, birth, address) VALUES ('kim', '2000-01-01', 'seoul');

DESC Customers;
DESC Employees;
DESC Suppliers;

