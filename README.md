# Analysis Employee Database by using SQL 

![sql.png](sql.png)

## Background

As a data analyst to analysis employee database is nessary skill for your company. It's a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

I design the tables to hold data in the CSVs, import the CSVs into a SQL database; I perfomed data modeling, data engineering and data analysis of data.

## File

* department_information.csv
* department_emp.csv
* department_manager.csv
* employees.csv
* salaries.csv
* titles.csv

## Steps

### 1. Data Modeling

* Inspect the CSVs and sketch out an ERD of the tables by using quick database diagrams web.

### 2. Data Engineering

* Create a table schema for each of the six CSV files.

* Import each CSV file into the corresponding SQL table.

### 3. Data Analysis including:

1. Each employee: employee number, last name, first name, gender, and salary.

2. Employees who were hired in specific year.

3. Manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. Department of employees with the following information: employee number, last name, first name, and department name.

5. All employees whose first name is "Hercules" and last names begin with "B."

6. All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

### 4. Data Vasulization by Python

1. Import the SQL database into Pandas. 

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.

## Challenges
Create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

## Conclusions
