-- DATA ANALYSING QUERY PRACTICE PART -2

use tech_data;
-- Accessing tech_data database for analysing.

-- (1) How does the average salary vary between different job titles ?
 select job_title,avg(salary) as avg_salary
 from job_detail
 group by job_title;
 
 /* (2) What is the average salary for each combination of 
 job category and employment type ? */
 select job_category, employment_type,avg(salary) as avg_salary
 from job_detail
 group by job_category,employment_type
 order by avg_salary DESC;
 
 /* (3) What is the average salary for each combination of job
 category and experience level ? */
 select job_category,experience_level,avg(salary) as avg_salary
 from job_detail
 group by job_category,experience_level
 order by avg_salary asc;
 
 /* (4) How does the average salary differ between different
 company sizes ? */
 select company_size,avg(salary) as avg_salary
 from job_detail
 group by company_size
 order by avg_salary desc;
 
 /* (5) What is the total number of employees for each
 combination of job category and company location ? */
 select job_category,company_location,count(*) as num_of_employee
 from job_detail
 group by job_category,company_location
 order by num_of_employee desc;
 
 /* (6) What is the distribution of employment types (full-time,
 contract,etc) within each job_category. */
 select job_category,employment_type,count(*) as employees_num
 from job_detail
 group by job_category,employment_type
 order by employees_num desc;
 
 /* (7) How does the average salary vary between different
 employee residence locations ? */
 select employee_residence,avg(salary) as avg_salary
 from job_detail
 group by employee_residence
 order by avg_salary desc;
 
 /* (8) What is the average salary for each combination
 of job category and work setting ? */
 select job_category,work_setting,avg(salary) as avg_salary
 from job_detail
 group by job_category,work_setting
 order by avg_salary desc;
 
 /* (9) What is the average salary for each combination of 
 job category and company location ? */
 select job_category,company_location,avg(salary) as avg_salary
 from job_detail
 group by job_category,company_location
 order by avg_salary desc;
 
 /* (10) How many employees are there for each combination of 
 job category and experience level ? */
 select job_category,experience_level,count(*) as num_of_employee
 from job_detail
 group by job_category,experience_level
 order by num_of_employee desc ;