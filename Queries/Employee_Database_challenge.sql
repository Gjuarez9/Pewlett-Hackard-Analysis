--creating new retirement titles CSV for challenge
Select e.emp_no, e.first_name, e.last_name,
		s.title, s.from_date, s.to_date
INTO retirement_titles
FROM employees as e
Inner JOIN titles as s
on e.emp_no = s.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ ;

--create unique titles tbl
Select distinct on (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
from retirement_titles
where to_date = '9999-01-01'
ORDER BY emp_no asc,to_date DESC;

Select * from unique_titles


-- create retiring_titles tbl
SELECT COUNT(title) as total_count, title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;



---- DELIVERABLE NUMBER 2


-- creating mentorship_eligibilty tbl
SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date,
	t.title
INTO mentorship_eligibilty
From employees as e
LEFT JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') 
AND(birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order BY emp_no asc;
