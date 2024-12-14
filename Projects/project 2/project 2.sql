SELECT 
    e.emp_id,
    e.first_name,
    e.surname,
    e.gender,
    e.email,
    d.depart_name,
    r.role,
    s.salary_pa,
    o.overtime_hours,
    z.zip_code,
	e.address,
	d.depart_city,
    z.province
FROM 
    Employees e
JOIN 
    Department d ON e.depart_id = d.depart_id
JOIN 
    Roles r ON e.role_id = r.role_id
JOIN 
    Salaries s ON e.salary_id = s.salary_id
JOIN 
    Overtime_Hours o ON e.overtime_id = o.overtime_id
JOIN 
    zip_code z ON e.zip_code = z.zip_code;
