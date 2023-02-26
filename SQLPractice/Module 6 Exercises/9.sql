SELECT emp_fname, emp_lname, emp_phone, emp_title, dept_num
FROM lgemployee
WHERE dept_num = 300
OR emp_title = 'Clerk I'
ORDER BY emp_lname, emp_fname;