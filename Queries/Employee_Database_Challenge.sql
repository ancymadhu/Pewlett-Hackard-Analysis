--Deliverable 1
--Part 1 - Joining employees and titles table

SELECT emp.emp_no,
emp.first_name,
emp.last_name, --Retrieveing necessary columns from employees table
ti.title,
ti.from_date,
ti.to_date --Retrieving necessary columns from titles table

INTO retirement_titles
FROM employees as emp
RIGHT JOIN titles AS ti
ON (emp.emp_no = ti.emp_no) --Joining employees and titles table
ORDER BY emp.emp_no;

SELECT * FROM retirement_titles --Part 1 csv generated

--Part 2 Removing duplicates and keeping most recent titles

SELECT emp_no,
 		first_name,
 		last_name,
 		title --Choosing only necessary columns
INTO unique_titles
FROM
(SELECT rt.emp_no,
 		rt.first_name,
 		rt.last_name,
 		rt.title,
  ROW_NUMBER() OVER
 (PARTITION BY (rt.emp_no) ORDER BY rt.to_date DESC) rn
 FROM retirement_titles as rt
  )tmp WHERE rn = 1
ORDER BY emp_no;

SELECT * FROM unique_titles --Part 2 csv created

-- Part 3 Retrieving number of titles

select count(emp_no), title
into retiring_titles
from unique_titles
group by title
order by count DESC;

SELECT * FROM retiring_titles --Part 3 csv created

--Deliverable 2
--Part 1 Creating Mentorship Eligibility Table

SELECT emp.emp_no,
	emp.first_name,
	emp.last_name,
	emp.birth_date, --Retrieving necessary columns from employees table
	de.from_date,
	de.to_date, --Retrieving necessary columns from dept_emp table
	ti.title --Retrieving necessary columns from titles table
	
INTO mentor_program
FROM employees as emp

inner join dept_emp as de
	on(emp.emp_no = de.emp_no)
inner join titles as ti
	on(emp.emp_no = ti.emp_no)
where(birth_date between '1965-01-01' and '1965-12-31');

SELECT * FROM mentor_program;

-- Partition the data to remove duplicates 
SELECT emp_no,
 		first_name,
 		last_name,
		birth_date,
		from_date,
		to_date,
		title
INTO mentorship_eligibility
FROM
(SELECT mp.emp_no,
 		mp.first_name,
 		mp.last_name,
 		mp.birth_date,
 		mp.from_date,
 		mp.to_date,
 		mp.title,
  ROW_NUMBER() OVER
 (PARTITION BY (mp.emp_no) ORDER BY mp.to_date DESC) rn
 FROM mentor_program as mp
  )tmp WHERE rn = 1
ORDER BY emp_no;

SELECT * FROM mentorship_eligibility