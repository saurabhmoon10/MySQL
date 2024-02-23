create database netflix_database;

use netflix_database

-- Table creation .
CREATE TABLE netflix (
	`Show_Id` VARCHAR(5) NOT NULL, 
	`Category` VARCHAR(7) NOT NULL, 
	`Title` VARCHAR(104) NOT NULL, 
	`Director` VARCHAR(208), 
	`Cast` VARCHAR(771), 
	`Country` VARCHAR(123), 
	`Release_Date` DATE, 
	`Rating` VARCHAR(8), 
	`Duration` VARCHAR(10) NOT NULL, 
	`Type` VARCHAR(79) NOT NULL, 
	`Description` VARCHAR(248) NOT NULL
);

-- checking whether the table is created or not.
select * 
from netflix ;