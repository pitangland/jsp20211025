USE test;

DESC mytable19Student;

-- ADD COLUMN
ALTER TABLE mytable19Student ADD COLUMN (
	height DOUBLE
);

ALTER TABLE mytable19Student ADD COLUMN (
	weight DOUBLE,
    foot DOUBLE
);

-- DROP COLUMN
ALTER TABLE mytable19Student DROP COLUMN foot;

-- AFTER, BEFORE
ALTER TABLE mytable19Student ADD foot DOUBLE AFTER name; 


