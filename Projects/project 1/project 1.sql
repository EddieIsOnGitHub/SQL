SELECT 
    e.emp_id,
    e.first_name,
    e.surname,
    e.gender,
    e.address,
    e.email,
    d.depart_name,
    d.depart_city,
    r.role,
    s.salary_pa,
    o.overtime_hours
FROM 
    Employees e
JOIN 
    Department d ON e.depart_id = d.depart_id
JOIN 
    Roles r ON e.role_id = r.role_id
JOIN 
    Salaries s ON e.salary_id = s.salary_id
JOIN 
    Overtime_Hours o ON e.overtime_id = o.overtime_id;

