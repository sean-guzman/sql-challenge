# sql-challenge

Sean Guzman

Rutgers Data Sciences Bootcamp, Module 9 Challenge (24 April 2023)

This module challenge is divided into three parts: data modeling, data engineering, and data analysis.

* Data Modeling (EmployeeSQL/Entity Relationship Diagram.png)

Using https://www.quickdatabasediagrams.com, an Entity Relationship Diagram was created to sketch all the tables from our CSV files and establish each's table's relationship with one another.  

* Data Engineering (EmployeeSQL/Table Schema.sql)

Taking the knowledge from our ERD, the table schema was then created in PostgreSQL with the following in mind:
    - All required columns are defined for each table
    - Columns are set to the correct data type
    - Primary Keys set for each table
    - Correctly references related tables
    - Tables are correctly related using Foreign Keys
    - Correctly uses NOT NULL condition on necessary columns
    - Accurately defines value length for columns

* Data Analysis (EmployeeSQL/Employee Data Query.sql)

After loading table schema and all associated CSV files to each table, the following queries were performed:
    - List the employee number, last name, first name, sex, and salary of each employee
    - List the first name, last name, and hire date for the employees who were hired in 1986
    - List the manager of each department along with their department number, department name, employee number, last name, and first name
    - List the department number for each employee along with that employee’s employee number, last name, first name, and department name
    - List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
    - List each employee in the Sales department, including their employee number, last name, and first name
    - List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
    - List the frequency counts, in descending order, of all the employee last names

