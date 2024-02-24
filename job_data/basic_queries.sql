
use tech_data

-- BASIC QUERIES 

-- (1) Retreive all the data from the table.
select *
from job_detail;

-- (1.1) counting the values of entire data.
select count(*)
from job_detail;


-- (2) select unique job titles.
select distinct(job_title)as unique_name
from job_detail;

-- (3) counting the unique job titles.
select count(distinct(job_title))
from job_detail;

-- (4) Retreive the jobs with salaries above certain amount (e.g,$50000).
select *
from job_detail
where salary >50000;

-- (5) Retreive jobs with a specific job category (e.g.,"Data Analyst")
select * 
from job_detail
where job_category = "Data Analysis";

-- (6) count the number of jobs in each job category.
select job_category , count(*) as num_jobs
from job_detail
group by job_category
order by num_jobs desc;

/* (7) Select jobs with a specific experience level
(e.g.,"Entry Level") */
select *
from job_detail
where experience_level = "mid-level";

-- (8) counting the number of experience in each experience.
select experience_level, count(*) as num_of_experience_level
from job_detail
group by experience_level
order by num_of_experience_level asc;

-- (9) select jobs located in a specific country (e.g.,"United States")
select *
from job_detail
where company_location = "united states";

/* (10)counting the numbers of jobs in based on location 
and its experience_level. */
select company_location,experience_level,count(*) as num_of_jobs
from job_detail
group by company_location,experience_level
order by company_location asc;

/* (11) select jobs with a specific employment type
(e.g., "Full-time") */
select *
from job_detail
where employment_type = "full-time";

/* (12) counting the total number of employee working 
as a full-time */
select employment_type,count(*)as num_of_employee
from job_detail
where employment_type = "Full-time";

/* (13) checking for number of employee on basis of 
there employment_type. */
select employment_type, count(*) as num_of_employee
from job_detail
group by employment_type
order by num_of_employee desc;

 /* (14) select jobs with a specific work 
 setting (e.g., "Remote") */
 select *
 from job_detail
 where work_setting = "remote";
 
 /* (15) checking for number of employee on basis of 
there work_setting. */
select work_setting,count(*) as num_of_employee
from job_detail
group by work_setting;


 