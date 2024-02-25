use tech_data;

-- INTERMIDIATE QUERIES

-- (1) select the average salary fro each job category.
select job_category,avg(salary) as avg_salary
from job_detail
group by job_category;

-- (2) select maximum salary for each job-title
select job_title,max(salary)as high_salary
from job_detail
group by job_title;

-- (3) select the number of jobs for each company.
select company_size,count(*) as num_jobs
from job_detail
group by company_size;

-- (4) select the top 5 highest paying jobs.
select * 
from job_detail
order by salary desc
limit 5;

-- (5) select total number of jobs posted each year.
select work_year,count(*) as num_jobs
from job_detail
group by work_year;


/*(6) Select the job titles and their corresponding 
average salaries, ordered by average salary in descending order */
select job_title,avg(salary) as avg_salary
from job_detail
group by job_title
order by avg_salary desc;

/* (7)Select the job titles that have salaries above the 
average salary across all jobs: */
select job_title
from job_detail
where salary > (select avg(salary) from job_detail);

/* (8) Select the number of jobs for each job category
 and each employment type. */
 select job_category,employment_type,count(*) as num_jobs
 from job_detail
 group by job_category,employment_type
 order by num_jobs desc;
 
 -- (9) Select the job titles with the highest salary in each job category:
 select job_title,job_category,max(salary) as maximum_salary
 from job_detail
 group by job_title,job_category
 order by maximum_salary desc;
 
 -- (10) Select the job titles with salaries within a specific range (e.g., $50,000 to $70,000).
 select job_title
 from job_detail
 where salary between 50000 and 70000;