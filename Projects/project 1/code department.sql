--data 
-- Insert sample data into Department table
INSERT INTO Department (depart_name, depart_city) VALUES 
('Human Resources', 'New York'),
('Finance', 'London'),
('IT', 'San Francisco');

-- Insert sample data into Roles table
INSERT INTO Roles (role) VALUES 
('Manager'),
('Analyst'),
('Developer');

-- Insert sample data into Salaries table
INSERT INTO Salaries (salary_pa) VALUES 
(75000),
(65000),
(85000);

-- Insert sample data into Overtime_Hours table
INSERT INTO Overtime_Hours (overtime_hours) VALUES 
(10),
(15),
(5);

-- Insert sample data into Employees table
INSERT INTO Employees (first_name, surname, gender, address, email, depart_id, role_id, salary_id, overtime_id) VALUES 
('John', 'Doe', 'M', '123 Main St, New York', 'john.doe@example.com', 1, 1, 1, 1),
('Jane', 'Smith', 'F', '456 Elm St, London', 'jane.smith@example.com', 2, 2, 2, 2),
('Mike', 'Johnson', 'M', '789 Oak St, San Francisco', 'mike.johnson@example.com', 3, 3, 3, 3);



CREATE TABLE Department (
    depart_id SERIAL PRIMARY KEY,
    depart_name VARCHAR(100) NOT NULL,
    depart_city VARCHAR(100) NOT NULL
);

CREATE TABLE Roles (
    role_id SERIAL PRIMARY KEY,
    role VARCHAR(100) NOT NULL
);

CREATE TABLE Salaries (
    salary_id SERIAL PRIMARY KEY,
    salary_pa NUMERIC NOT NULL
);

CREATE TABLE Overtime_Hours (
    overtime_id SERIAL PRIMARY KEY,
    overtime_hours INT NOT NULL
);

CREATE TABLE Employees (
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    gender CHAR(1) NOT NULL,
    address TEXT NOT NULL,
    email VARCHAR(100) NOT NULL,
    depart_id INT NOT NULL,
    role_id INT NOT NULL,
    salary_id INT NOT NULL,
    overtime_id INT NOT NULL,
    FOREIGN KEY (depart_id) REFERENCES Department(depart_id),
    FOREIGN KEY (role_id) REFERENCES Roles(role_id),
    FOREIGN KEY (salary_id) REFERENCES Salaries(salary_id),
    FOREIGN KEY (overtime_id) REFERENCES Overtime_Hours(overtime_id)
);

