-- Create table on mentorship alternative

SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
	e.birth_date,
    de.from_date,
    de.to_date,
    ti.title
INTO mentorship_eligibilty_alternative
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1966-01-01' AND '1966-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibilty_alternative;

DROP TABLE mentorship_eligibilty_alternative;

-- Review mentorship program by title

SELECT COUNT (title), title 
INTO current_mentorship_titles
FROM mentorship_eligibilty_alternative
GROUP BY title
ORDER BY count DESC;


SELECT * FROM current_mentorship_titles;