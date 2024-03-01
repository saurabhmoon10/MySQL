-- DATA ANALYSING PRACTICE QUERY.


use tech_data;

-- (1) What is the average salary for each job category.
select job_category,avg(salary) as average_salary
from job_detail
group by job_category
order by average_salary desc;

-- (2) How many employees are there for each experience level ?
select experience_level,count(*) as employees_number
from job_detail
group by experience_level
order by employees_number DESC;

-- (3) What is the total salary expenditure for each job category ?
select job_category,sum(salary) as total_salary
from job_detail
group by job_category
order by total_salary desc;

/* (4) What is the average salary for full-time vs contract
    employment types ? */
    
select employment_type,avg(salary) as avg_salary
from job_detail
where employment_type in ('full-time','contract')
group by employment_type;

-- (5) How many employees wotk in remote settings vs.office settings ?
select work_setting,count(*) as num_of_employees_working
from job_detail
where work_setting in ("remote","office")
group by work_setting;

/* (6) What is the distribution of job titles within each 
company size category ? */
select company_size,job_title,count(*) as title_count,
case
	when company_size = "s" then "Small"
    when company_size = "m" then "Medium"
    when company_size = "l" then "Large"
end as company_size_category
from job_detail
group by company_size,job_title
order by title_count desc;

-- (7) Which job category has the highest average salary ?
select job_category,avg(salary) as highest_average_salary
from job_detail
group by job_category
order by highest_average_salary desc
limit 1;

-- (8) What is the salary range for each experience level ?
select experience_level,min(salary) as minimum_salary,
max(salary) as maximum_salary
from job_detail
group by experience_level
order by experience_level;

-- (9) What is the most common job category in each company location ?
with ranked_categories as (
select company_location,job_category,count(*) as category_count,
row_number() over(partition by company_location order by count(*) desc)
as category_rank
from job_detail
group by company_location,job_category
)
select company_location,job_category,category_count
from ranked_categories
where category_rank=1;
    
  /* (10) How does the average salary vary between different
  residence locations of employees ? */
  select employee_residence,avg(salary) as avg_salary
  from job_detail
  group by employee_residence;
