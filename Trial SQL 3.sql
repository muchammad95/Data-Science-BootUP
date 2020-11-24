show global variables like "local_infile";
set global local_infile=1;
show global variables like "local_infile";

use november;
#create table to load salary data
CREATE TABLE salary_data (
    `Rank of Faculty` VARCHAR(50) NOT NULL,
    Discipline VARCHAR(10) NOT NULL,
    `Yrs.since.phd` INT NOT NULL,
    `Yrs.service` INT NOT NULL,
    Sex VARCHAR(20) NOT NULL,
    Salary NUMERIC(20) NOT NULL
);

load data local infile "C:\\Users\\mmuch\\Downloads\\Python Learning\\6.) BootUp One Month Flex Bootcamp\\Salaries.csv" 
into table salary_data character set latin1 fields terminated by ','
enclosed by '"' lines terminated by '\r\n' ignore 1 lines;

select * from salary_data;

select * from general_data;