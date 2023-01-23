CREATE DATABASE CASIAC
USE CASIAC


--> CREATE THE TABLE 
CREATE TABLE LAWYERS(
	ID INT IDENTITY(1001,1) PRIMARY KEY,
	FIRST_NAME VARCHAR (50) NOT NULL,
	LAST_NAME VARCHAR (50) NOT NULL,
	EMAIL VARCHAR(40) NOT NULL,
	USER_PASSWORD VARCHAR(50) NOT NULL,
	PHONE_NUMBER VARCHAR(14) NOT NULL,
	DATE_OF_BIRTH DATE NOT NULL,
	SEX VARCHAR(10) NOT NULL

);

--> INSERT DATAS INTO THE TABLE
INSERT INTO LAWYERS VALUES ('TABASSUM','TARA ','tabassum.cse.200104128@aust.edu','ADMIN1','8801790603952','2000-06-20','FEMALE');
INSERT INTO LAWYERS VALUES ('PARVEZ','AHAMMED','parvez.cse.200104129@aust.edu','ADMIN2','8801836430305','2002-12-31','MALE');
INSERT INTO LAWYERS VALUES ('MIRAZUR','ZIM','mirazur.cse.200104130@aust.edu','ADMIN2','8801689154442','2000-11-13','MALE');

--> SELECT STATEMENTS TO VIEW<--

--> ALL THE DATAS
SELECT * FROM LAWYERS 

--> ALL THE MALE LAWYERS
SELECT * FROM LAWYERS WHERE SEX = 'MALE'

--> FIRST NAME ADN LAST NAME
SELECT FIRST_NAME , LAST_NAME FROM LAWYERS

--> NOT EQUAL
SELECT FIRST_NAME , LAST_NAME FROM LAWYERS WHERE FIRST_NAME <> 'PARVEZ'

--> DISTINCT FIRST NAME 
SELECT DISTINCT FIRST_NAME FROM LAWYERS

--> DISTINCT LAWYERS
SELECT DISTINCT * FROM LAWYERS

--> MERGE TWO COLUMS
SELECT FIRST_NAME + ' ' + LAST_NAME as 'LAWYER NAME' FROM LAWYERS

--> ORDER BY ASSCENDING ORDER
SELECT * FROM LAWYERS  ORDER BY FIRST_NAME 

--> ORDER BY DESSCENDING ORDER
SELECT * FROM LAWYERS  ORDER BY FIRST_NAME DESC

--> OPERATORS
--> LIKE 
-- > STARTS WITH TAB AND ENDS WITH ANYTHING
SELECT * FROM LAWYERS WHERE FIRST_NAME LIKE 'TAB%'

--> ENDS WITH UM AND STARTS WITH ANYTHING
SELECT * FROM LAWYERS WHERE FIRST_NAME LIKE '%UM'

--> HAS SU ANYWHERE IN MIDDLE 
SELECT * FROM LAWYERS WHERE FIRST_NAME LIKE '%SU%'

--> THE THIRD CHARACTER IS B
SELECT * FROM LAWYERS WHERE FIRST_NAME LIKE '__B%'




--> DATA DEFINATION LANGUAGE (DDL) THINGS
--> DELETE ALL THE DATAS BUT KEEP THE TABLE STATUS SAME AS BEFORE
TRUNCATE TABLE LAWYERS

--> DROP THE WHOLE TABLE WITH THE DATAS
DROP TABLE LAWYERS

--> ADD A COULMN
ALTER TABLE LAWYERS ADD LAWYER_ADDRESS VARCHAR(50) 

--> DELETE A COLUMN
ALTER TABLE LAWYERS DROP COLUMN LAWYER_ADDRESS

--> CHANE COULMN NAME 
