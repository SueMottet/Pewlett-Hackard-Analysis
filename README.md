# Technical Database Analysis of Employee Retirment Data using Postgres SQL

## Technical Database Analysis of Employee Retirement Data Overview
This project is to perform technical database analysis to:
1. Determine the number of retiring employees per title
2. Determine out of the retiring employees who is eligible to participate in a mentorship program

### Technical Database Analysis of Employee Retirement Data Background
* Six .csv files were provided and examined: employees.csv, departments.csv. dept_emp.csv, dept_manager.csv, salaries.csv, titles.csv
* PostgresSQL was downloaded and installed
* Looking at the .csv files, target database keys were identified (primary keys and foreign keys) and entity relationships were determined
* An Entity Relationship Diagram (ERD) was created using Quick DBD
* A database was created in pgAdmin to hold the data
* Tables for the data were created in the pgAdmin database and keys were set using Postgres SQL
* Data was imported into the tables from the .csv files.
* Queries were run looking at retirement eligiblity and some analysis summary data tables were created and also exported to .csv files

### Technical Database Analysis of Employee Retirement Data
Using the ERD and Postgres SQL queries, determined the number of retiring employees by title and the retiring employees eligible for the mentorship progrom were found.

#### Retiring Employees by Title
Using the ERD and Postgres SQL queries, a retirement titles table was created that holds the current titles of current employees who were born between January 1, 1952 and December 31, 1955 (some employees have multiple titles due to promotions in the source data):
1. Queried data from the employees and titles tables using joins (emp_no, first_name, last_name, title, from_date, to_date) fiitering to include only employees who were born between 1952 and 1955 and ordering by the employee number.
2. Queried data to get the unique and most recent titles for the retiring employees
3. Queried data to get the number of titles filled by employees who are retiring
4. Created new tables with the required data in them (retirement_titles, unique_titles, retiring_tities) using the INTO clause
5. Exported and saved the table data as retirement_titles.csv, unique_titles.csv, and retiring_tities.csv

#### Employees Eligible for the Mentorship Program
Using the ERD and Postgres SQL queries, a mentorship-eligibility table was created that holds the current employees who were born between January 1, 1965 and December 31, 1965:
1. Queried and joined data from the employees, titles, dept_emp (emp_no, first_name, last_name, birth_date, dep_emp.from_date, dep_emp.to_date, title)filtering to include only current employees who were born between January 1, 1965 and December 31, 1965 and ordering by the employee number.
2. Created a new table with the required data in it (mentorship_eligibility) using the INTO clause
3. Exported and saved the mentorship_eligibility table data as mentorship_eligibility.csv 

#### Report on analysis including inforamtion how to prepare for the retirements
1. Overview: Explains the purpose of the analysis and what anlaysis was performed
2. Results: Major analysis highlights from the two analysis deliverables
3. Summary: Provide high level information on how manny roles will need be filled and whether there are enough retirement-ready employees in the departments to mentor the next generation of employees

### Resources
- Data source(s): employees.csv, departments.csv. dept_emp.csv, dept_manager.csv, salaries.csv, titles.csv
- Software: PostgresSQL pgAdmin, Quick DBD

## Technical Database Analysis of Employee Retirement Data Results
The analysis of the retirement data shows that the company needs to expand the mentorship eligibility or find other alternatives:
1. 29414 Senior Engineers are retiring and there are only 289 eligible Senior Engineer mentors. Even if all agree to be mentors, there are not enough elibile Senior Engineer mentors.
2. 28,254 Senior Staff are retiring and there are only 431 eligible Senior Staff mentors. Even if all agree to be mentors, there are not enough elibile Senior Staff mentors. 
3. 14,222 Engineers are retiring and there are only 397 eligle Engineer mentors. Even if all agree to be mentors, there are not enough eligible Engineer mentors.
4. 12,233 Staff are retiring and there are only 293 eligible Staff mentors. Even if all agree to be mentors, there are not enough eligible Staff mentors.
5. This same pattern repeats with Technique Leaders retiring and Assitant Managers retiring. The ratio between the employees retiring and those being eligible to mentor does not support having enough mentors.
6. There are 2 Managers retiring and no eligible Manager mentors. Senior managers could mentor Managers but there are not enough Senior Manager mentors to mentor Senior Managers let alone also having the Senior Managers mentor Managers. 

* The mentorship_eligible title counts are shown here: 
  
  ![mentorship_eligible title data image](/Data/mentorship_titles.png)
  

### Employee Retirement Database Analysis Key Deliverables:
The employee retirement technical database analysis  includes three main deliverables:

1. The Number of Retiring Employees by Title
* The retirement titles results are saved to the retirements_titles.csv file included in the Data folder in the repository.
* A sample of the retirement_titles table output is shown here:

  ![retirement_titles table data image](/Data/retirement_titles.png)
  
* The unique titles results are saved to the unique_titles.csv file included in the Data folder in the repository.
* A sample of the unique_titles table output is shown here:

  ![unique_titles table data image](/Data/unique_titles.png)
  
* The retiring titles results are saved to the retiring_titles.csv file included in the Data folder in the repository.
* The retiring_titles table output is shown here:

  ![retiring_titles table data image](/Data/retiring_titles.png)
  
2. The Employees Eligible for the Mentorship Program
* The mentorship eligibility results are saved to the mentorship_eligibility.csv file included in the Data folder in the repository. 
* A sample of the mentorship_eligibility table output is shown here:

![mentorship_eligibility table data image](/Data/mentorship_eligibility.png)

3. The written analysis of this technical database analysis work is included in this README.

Note: The Postgres SQL code for completing this Employee retirement database analysis is included in the Query folder in the repository.

## Technical Database Analysis of Employee Retirement Data Summary
The analysis of the retirement data shows that the company needs to expand the mentorship eligibility or find other alternatives. The number of employees retiring is much higher than the number eligible to be mentor. To few mentors will be available to successfully mentor the next generation of employees successfully.

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

