# Technical Database Analysis of Employee Retirment Data using Postgres SQL

## Technical Database Analysis of Employee Retirement Data Overview
This project is to perform technical database analysis to:
1. Help determine the number of retiring employees per title
2. Determine of this retiring employees who is eligible to participate in a mentorship program

### Technical Database Analysis of Employee Retirement Data Background
* Six csv files were provided and examined: employees.csv, departments.csv. dept_emp.csv, dept_manager.csv, salaries.csv, titles.csv
* PostgresSQL was downloaded and installed
* Looking at the .csv files target database keys were identified (primary keys and foreign keys) and entity relationships were determined
* An Entity Relationship Diagram (ERD) was created using Quick DBD
* A PH-EmplyeeDB database was created in pgAdmin
* Tables for the data were created in the pgAdmin database and keys were set using Postgres SQL
* Data was imported into the tables from the .csv files.
* Queries were run looking ate retirement eligiblity and some analysis summary data tables were created and also exported to .csv files

### Technical Database Analysis of Employee Retirement
Using the ERD and SQL queries create a retirement titles table that holds the current titles of current employees who were born between January 1, 1952 and December 31, 1955. Some employees have multiple titles due to promotions in the source data.
1. Create sql and save it to a file
2. 

### Resources
- Data source(s): employees.csv, departments.csv. dept_emp.csv, dept_manager.csv, salaries.csv, titles.csv
- Software: PostgresSQL pgAdmin

## Technical Database Analysis of Employee Retirement Data Results

The analysis of the retirement data shows that:
* Number of employees retiring by title
* employee count eligible for mentorship program

The Postgres SQL code for completing this Employee retirement database analysis included in the Query folder in the repository.

### Employee Retirement Database Analysis Key Deliverables:
The employee retirement technical database analysis  includes three main deliverables:

1. The Number of Retiring Employees by Title
* The retirement titles results are saved to the retirements_title.csv file included in the Data folder in the repository. 

* A sample of the retirement_info table output is shown here:

  ![retirement_titles table data image](/Data/retirement_titles.png)

3. The written analysis of this technical database analysis work is included in this README.

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

