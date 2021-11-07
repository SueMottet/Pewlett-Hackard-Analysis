SELECT e.emp_no
, e.first_name
, e.last_name
, ti.title
, ti.from_date
, ti.to_date
INTO retirement_titles
FROM employees AS e
JOIN titles AS ti ON e.emp_no = ti.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no, ti.to_date DESC;

SELECT DISTINCT ON (e.emp_no) e.emp_no
, e.first_name
, e.last_name
, ti.title
INTO unique_titles
FROM employees AS e
JOIN titles AS ti ON e.emp_no = ti.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
order by emp_no, ti.to_date desc;

SELECT COUNT(emp_no) AS count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
order by count desc;

SELECT DISTINCT ON (e.emp_no) e.emp_no
, e.first_name
, e.last_name
, e.birth_date
, de.from_date
, de.to_date
, ti.title
INTO mentorship_eligibility
FROM employees AS e
JOIN dept_employee AS de on e.emp_no = de.emp_no
JOIN titles AS ti ON e.emp_no = ti.emp_no
WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31'
AND de.to_date = '9999-01-01'
ORDER BY emp_no, de.to_date DESC;
