use tech_data;

-- INTERMIDIATE QUERIES (PART-2)

-- (1) select the top 3 job categories with the highest average salaries. 
select job_Category,avg(salary) as avg_salary
from job_detail
group by job_category
order by avg_salary desc
limit 3;

-- (2) select the job title that have the word "Senior" in them.
select job_title 
from job_detail
where experience_level like '%senior%';

-- (3) select the total number of jobs for each experience level.
select experience_level,count(*) as num_jobs
from job_detail
group by experience_level;

/* (4) select the job titles and their corresponding average
salaries ,but only for jobs located in the united states. */
select job_title,avg(salary) as avg_salary
from job_detail
where employee_residence = 'United States'
group by  job_title;

/* (5) select the job titles with salaries higher than 
the average salary for the respective job categories. */
select job_title
from job_detail
where (job_category,salary) in (select job_category,avg(salary)
from job_detail
group by job_category);

/* (6) select the job titles with lowest salaries with 
each job category. */
select job_title,job_category,min(salary)as lowest_salary
from job_detail
group by job_title,job_category; 

/* (7) select the job titles offers highest salary
for each experience level . */
select job_title,experience_level,max(salary) as highest_salary
from job_detail
group by job_title,experience_level;

/* (8) select the job title and their corresponding 
average_salary,but only for jobs with "remote"
work_setting. */
select job_title,avg(salary) as avg_salary
from job_detail
where work_setting = "remote"
group by job_title;

/* (9) select the job titles that have "engineer" in 
their title and offer salaries above 80000. */
select job_title
from job_detail
where job_title like '%engineer%' and salary >80000;
