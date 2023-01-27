-- Deliverable 1: The Number of Retiring Employees by Title (50 points)


-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.

SELECT e.emp_no, 
	   e.first_name, 
	   e.last_name
FROM employees as e 


-- Retrieve the title, from_date, and to_date columns from the Titles table.

SELECT title, 
	from_date,
	to_date
FROM titles


-- Create a new table using the INTO clause.
-- Join both tables on the primary key.
-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
-- Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- Before you export your table, confirm that it looks like this image

SELECT e.emp_no,
    e.first_name,
    e.last_name,
	e.birth_date,
    ti.title,
    ti.from_date,
    ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows

-- Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.
-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
-- These columns will be in the new table that will hold the most recent title of each employee.
-- Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.

SELECT DISTINCT ON (emp_no) emp_no, 
					first_name,
                    last_name,
                    title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

--Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
--First, retrieve the number of titles from the Unique Titles table.
--Then, create a Retiring Titles table to hold the required information.
--Group the table by title, then sort the count column in descending order.
--Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
--Before you export your table, confirm that it looks like this image

--RETIRING TITLES

SELECT COUNT (title), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles;

-- Deliverable 2: The Employees Eligible for the Mentorship Program (30 points)

SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
	e.birth_date,
    de.from_date,
    de.to_date,
    ti.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibilty;