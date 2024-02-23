-- DATABASE CREATION 
create database tech_data;

use tech_data;


-- TABLE CREATION
create table  if not exists job_detail (
work_year decimal(38,0) not null,
job_title varchar(40) not null,
job_category varchar(30) not null,
salary_currency varchar(5) not null,
salary decimal(38,0) not null,
salary_in_usd decimal(38,0) not null,
employee_residence varchar(25) not null,
experience_level varchar(11) not null,
employment_type varchar(9) not null,
work_setting varchar(9) not null,
company_location varchar(25) not null,
company_size varchar(1) not null
);

-- checking whether the table is successfully created or not .
select * from job_detail