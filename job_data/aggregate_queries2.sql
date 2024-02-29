-- AGGREGATE PRACTICE QUERIES PART-2

/* using the tech_data database for practice. */
use tech_data;

/* (1) Determing the total number of jobs for each job setting and 
job category . */

select job_category, work_setting, count(*) as number_of_jobs
from job_detail
group by job_category,work_setting
order by number_of_jobs desc;

-- (2) Calculating the average salary for each employement type.
select employment_type,avg(salary) as avg_salary
from job_detail
group by employment_type;

/*(3) Finding the company location with the highest average 
salary. */

select company_location ,avg(salary) as highest_avg_salary
from job_detail
group by company_location
order by highest_avg_salary desc
limit 1;

/* (4) Determing the total number of jobs for each job_title 
and experience_level. */
select job_title,experience_level,count(*) as num_of_jobs
from job_detail
group by job_title,experience_level
order by num_of_jobs desc;

-- (5)calculating the total salary for each company location.
select company_location,sum(salary) as total_salary
from job_detail
group by company_location;



