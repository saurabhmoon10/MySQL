-- AGGREGATE QUERIES PRACTICE 

/* Aggregate function is used to perfom a calculation on a set of 
values and returns a single value as the result.

These functions operate on groups of rows and often used with the
'GROUP BY' clause to aggregate data across multiple rows into a
single result. */


-- use tech_data query is written to access the tech_data database for analysing purpose.
use tech_data

-- (1) Calculating the average salary for all jobs.
select avg(salary) as avg_salary
from job_detail;

-- (2) Finding  the highest salary among all the jobs.
select max(salary) as highest_salary
from job_detail;

-- (3) calculating the total number of jobs.
select count(*) as number_of_jobs
from job_detail;

-- (4) calculating the average salary for each job_category.
select job_category,avg(salary) as avg_salary
from job_detail
group by job_category;

-- (5) Finding the job titles with highest salary.
select job_title,max(salary) as highest_salary
from job_detail
group by job_title
order by highest_salary desc;

-- (6) Counting the number of jobs in each experience level. 
select experience_level,count(*) as number_of_jobs
from job_detail
group by experience_level
order by number_of_jobs desc;

-- (7) Determinig the average salary for each company size.
/* here we used the case statement for expressing size of company by 
   by creating the temporary table with name company_category just to 
   get the proper format of query . */
select company_size,avg(salary) as avg_salary,
case
	when company_size = "L" then "Large_size"
    when company_size = "M" then "medium_size"
    when company_size = "S" then "small_size"
end as company_category
from job_detail
group by company_size;

-- (8) Finding the total salary expenditure for each year.
select work_year,sum(salary) as total_salary
from job_detail
group by work_year
order by work_year asc;

-- (9) calculating the average salary for remote and non_remote jobs. 
select work_setting,avg(salary) as avg_salary
from job_detail
group by work_setting
order by avg_salary desc;

-- (10) Finding the job title with lowest salary.
select job_title,min(salary) as lowest_salary
from job_detail
group by job_title
order by lowest_salary
limit 1;
