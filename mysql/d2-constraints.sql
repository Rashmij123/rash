
create database testdb;
use testdb;

-- unique
create table newbook_mast
(
	book_id varchar(15) unique
)
-- allows one on more null values
-- does not allow duplicates
select * from newbook_mast;
insert into newbook_mast values (null);
insert into newbook_mast values ('test');
insert into newbook_mast values (null);
insert into newbook_mast values ('null');

create table newbook_mast01
(
	book_id varchar(15) unique,
    bookname varchar(15) unique
)
-- allows one on more null values
-- does not allow duplicates
select * from newbook_mast01;
SET SQL_SAFE_UPDATES = 0;
delete from newbook_mast01;
insert into newbook_mast01 values ('test','test1');
insert into newbook_mast01 values ('test','test2');
insert into newbook_mast01 values ('test1','test');
insert into newbook_mast01 values ('test2','test2');

-- primary key
-- does not allow null value
-- does not allow duplicates
create table newbook_mast1
(
	book_id varchar(15) primary key
);
insert into newbook_mast1 values (null);
insert into newbook_mast1 values ('test');
insert into newbook_mast1 values ('null');

-- a table can have only one primary key
-- Multiple primary key defined	0.000 sec
create table newbook_mast10
(
	book_id varchar(15) primary key,
    bookname varchar(15) primary key
);

insert into newbook_mast1 values (null);
insert into newbook_mast1 values ('test');
insert into newbook_mast1 values ('null');
select * from newbook_mast1;

-- not null constraint
create table newbook_mast_nn
(
	book_id varchar(15) not null,
    book_name varchar(15) 
)
-- allows one on more null values
-- does not allow duplicates
select * from newbook_mast_nn;
insert into newbook_mast_nn values (null,'monk');
insert into newbook_mast_nn values (null,null);
insert into newbook_mast_nn values ('null',null);
insert into newbook_mast_nn values (null,'null');

--A CHECK constraint controls the values in the associated column. The CHECK constraint determines whether the value is valid or not from a logical expression.
-- IT ALLOWS NULL VALUES.

create table countries
(
	c_id varchar(15) not null,
   c_name varchar(15) check (c_name  in ('US','IN','UK')),
   c_pin int
);
SELECT * FROM countries;
insert into countries values ('c1','US',1);
insert into countries values ('c2','IN',2);
insert into countries values ('c1',NULL,1);
-- Check constraint 'countries_chk_1' is violated
insert into countries values ('c1','JA',1);

create table countries1
(
	c_id varchar(15) not null,
   c_name varchar(15) NOT NULL check (c_name  in ('US','IN','UK')),
   c_pin int
);
--  Column 'c_name' cannot be null
insert into countries1 values ('c1',NULL,1);

-- ALTER TABLE FOR INCLUDING PRIMARY KEY constraint
create table newbook_mast11
(
	book_id varchar(15) ,
   bookname varchar(15) 
);

ALTER TABLE newbook_mast11
MODIFY BOOK_ID INT PRIMARY KEY;

-- DOES NOT REMOVE CONSTRAINT
ALTER TABLE newbook_mast11
MODIFY BOOK_ID INT ;

ALTER TABLE newbook_mast11
DROP PRIMARY KEY;

insert into newbook_mast11 values (null,'monk');
insert into newbook_mast11 values (1,null);
-- Duplicate entry '1' for key 'newbook_mast11.PRIMARY'
insert into newbook_mast11 values (1,null);
SELECT * FROM newbook_mast11;
DELETE FROM newbook_mast11;
DESCRIBE newbook_mast11;

ALTER TABLE newbook_mast11
DROP COLUMN BOOKNAME;

ALTER TABLE newbook_mast11
ADD COLUMN BOOKNAME VARCHAR(15);

ALTER TABLE newbook_mast11
ADD COLUMN BOOKNAME VARCHAR(15) PRIMARY KEY;
-- Duplicate entry '' for key 'newbook_mast11.PRIMARY'


insert into newbook_mast11 values (1,'MONK');
insert into newbook_mast11 values (1,'MONKS');
insert into newbook_mast11 values (2,'MONK');
-- Duplicate entry 'MONK' for key 'newbook_mast11.PRIMARY'

-- DISPLAY THE CONSTRAINT DETAILS
SHOW CREATE TABLE newbook_mast11;
SHOW CREATE TABLE Newbook_mast1;

--DISPLAY DETAILED INFORMATION OF CONSTRAINTS
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'Newbook_mast1';

SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, CONSTRAINT_SCHEMA FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'Newbook_mast1';

