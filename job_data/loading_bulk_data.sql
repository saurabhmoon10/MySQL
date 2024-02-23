use tech_data

-- bullk data loading
load data infile
"D:jobs_in_data.csv"
into table job_detail
fields terminated by ","
lines terminated by "\n"
ignore 1 lines;

select * from job_detail;