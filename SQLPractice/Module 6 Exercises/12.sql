SELECT lgemployee.emp_num, lgemployee.emp_lname, lgemployee.emp_email, lgemployee.emp_title, lgdepartment.dept_name
FROM lgemployee join lgdepartment on lgemployee.dept_num = lgdepartment.dept_num
WHERE emp_title LIKE '%ASSOCIATE'
ORDER BY lgdepartment.dept_name, lgemployee.emp_title;