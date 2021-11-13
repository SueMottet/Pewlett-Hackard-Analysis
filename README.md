# Technical Database Analysis of Employee Retirment Data using Postgres SQL

## Technical Database Analysis of Employee Retirement Data Overview
This project is to perform technical database analysis to:
1. Determine the number of retiring employees per title
2. Determine of this retiring employees who is eligible to participate in a mentorship program

### Technical Database Analysis of Employee Retirement Data Background
* Six .csv files were provided and examined: employees.csv, departments.csv. dept_emp.csv, dept_manager.csv, salaries.csv, titles.csv
* PostgresSQL was downloaded and installed
* Looking at the .csv files target database keys were identified (primary keys and foreign keys) and entity relationships were determined
* An Entity Relationship Diagram (ERD) was created using Quick DBD
* A PH-EmplyeeDB database was created in pgAdmin
* Tables for the data were created in the pgAdmin database and keys were set using Postgres SQL
* Data was imported into the tables from the .csv files.
* Queries were run looking ate retirement eligiblity and some analysis summary data tables were created and also exported to .csv files

### Technical Database Analysis of Employee Retirement
Using the ERD and Postgres SQL queries find the number of retiring employees by title and the employees eligible for the mentorship progrom.

#### Retiring Employees by Title
Using the ERD and Postgres SQL queries, a retirement titles table was created that holds the current titles of current employees who were born between January 1, 1952 and December 31, 1955. Some employees have multiple titles due to promotions in the source data:
1. Queried data from the employees and titles tables using joins (emp_no, first_name, last_name, title, from_date, to_date) fiiltering to include only employees who were born between 1952 and 1955 ordering by the employee number.
2. Created a new table with the subset of data in it called retirement_titles using INTO clause
3. Exported and save the retirement_titles table data as retirement_titles.csv 

#### Employees Eligible for the Mentorship Program

### Resources
- Data source(s): employees.csv, departments.csv. dept_emp.csv, dept_manager.csv, salaries.csv, titles.csv
- Software: PostgresSQL pgAdmin, Quick DBD

## Technical Database Analysis of Employee Retirement Data Results

The analysis of the retirement data shows that:
* Number of employees retiring by title
* employee count eligible for mentorship program



### Employee Retirement Database Analysis Key Deliverables:


The employee retirement technical database analysis  includes three main deliverables:

1. The Number of Retiring Employees by Title
* The retirement titles results are saved to the retirements_title.csv file included in the Data folder in the repository. 
* A sample of the retirement_info table output is shown here:

  ![retirement_titles table data image](/Data/retirement_titles.png)
  
2. The Employees Eligible for the Mentorship Program
* The mentorship eligibility results are saved to the mentorship_eligibility.csv file included in the Data folder in the repository. 
* A sample of the mentorship_eligibility table output is shown here:

![mentorship_eligibility table data image](/Data/mentorship_eligibility.png)

3. The written analysis of this technical database analysis work is included in this README.

Note: The Postgres SQL code for completing this Employee retirement database analysis is included in the Query folder in the repository.

## Technical Database Analysis of Employee Retirement Data Summary
The technical database analysis components built for ...

### References
* PostgresSQL: https://www.postgresql.org/docs/manuals/
* PostgresSQL tutorial: https://www.tutorialspoint.com/postgresql/
* PostgresSQL download: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
* pgAdmin: https://www.pgadmin.org/docs/
* pgAdmin download: https://www.pgadmin.org/download/pgadmin-4-macos/
* Quick DBD: http://quickdatabasediagrams.com/
* PostgresSQL joins: https://www.techonthenet.com/postgresql/joins.php
* PostgresSQL inner joins: http://www.postgresqltutorial.com/postgresql-inner-join/
* GitHub documentation on SSH https://help.github.com/en/articles/connecting-to-github-with-ssh
* Git Hub Markdown https://help.github.com/en/articles/basic-writing-and-formatting-syntax

