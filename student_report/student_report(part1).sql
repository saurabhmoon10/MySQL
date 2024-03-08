create database student;

use student;


-- creating table
CREATE TABLE Student_Report (
	age DECIMAL(38, 0) NOT NULL, 
	gender VARCHAR(10) NOT NULL, 
	year_in_school VARCHAR(9) NOT NULL, 
	major VARCHAR(16) NOT NULL, 
	monthly_income DECIMAL(38, 0) NOT NULL, 
	financial_aid DECIMAL(38, 0) NOT NULL, 
	tuition DECIMAL(38, 0) NOT NULL, 
	housing DECIMAL(38, 0) NOT NULL, 
	food DECIMAL(38, 0) NOT NULL, 
	transportation DECIMAL(38, 0) NOT NULL, 
	books_supplies DECIMAL(38, 0) NOT NULL, 
	entertainment DECIMAL(38, 0) NOT NULL, 
	personal_care DECIMAL(38, 0) NOT NULL, 
	technology DECIMAL(38, 0) NOT NULL, 
	health_wellness DECIMAL(38, 0) NOT NULL, 
	miscellaneous DECIMAL(38, 0) NOT NULL, 
	preferred_payment_method VARCHAR(18) NOT NULL
);

-- loading the data
load data infile
"D:\student_cleaned.csv"
into table Student_Report
fields terminated by ','
lines terminated by '\n'
ignore 1 lines;

-- checking whether the data loaded or not . 
select * from student_report;

# counting the total number of male and females are there in a dataset.
select gender,count(*) number_of_students
from student_Report
group by gender;

# calculating the avg_monthly income on the basis of gender.
select gender,avg(monthly_income) as avg_income
from student_report
group by gender;

# Checking for the maximum monthly_income.
select age,max(monthly_income)
from student_report
group by age
order by max(monthly_income) desc;

# checking for the year_in_school column
select year_in_school,count(*) as student_count
from student_report
group by year_in_school;

# Retreiving the data with freshman 
select *
from student_report
where year_in_school ="Freshman";

# counting the number of students for a male freshman with  age less than 20.
select gender,year_in_school,age,count(*) as student_counts
from student_report
where gender="Male" and year_in_school="Freshman" and age<20
group by gender,year_in_school,age;

# checking the category of major for students
select major,count(*) as student_counts
from student_report
group by major;

# checking for student who are paying more than 1000 as housing rent
select *
from student_report
where housing >999;

# counting for students based on their preferred payment method.
select preferred_payment_method,count(*) as student_counts
from student_report
group by preferred_payment_method
order by student_counts;

# checking for student from freshman with age less than 20 using mobile payment app
select year_in_school,age,preferred_payment_method,monthly_income
from student_report
where year_in_school="freshman" and preferred_payment_method ="Mobile Payment App"
order by monthly_income desc;
