CREATE DATABASE organization;
USE organization;

-- Create Employee table
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    manager_id INT,
    department_id INT
    
);

-- Create Department table
CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    name VARCHAR(255),
    director_id INT
    
);

-- Create Section table
CREATE TABLE Section (
    section_id INT PRIMARY KEY,
    name VARCHAR(255),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES Employee(employee_id)
);

-- Insert sample data into Employee table
INSERT INTO Employee (employee_id, name, manager_id, department_id)
VALUES
    (1, 'John Boah', 101, 1),
    (2, 'Ben Dalton', 102, 1),
    (3, 'John Oduro', 103, 2);

-- Insert sample data into Department table
INSERT INTO Department (department_id, name, director_id)
VALUES
    (1, 'Computer Science', 1),
    (2, 'Minning', 2),
    (3, 'PetroChemical', 3);

-- Insert sample data into Section table
INSERT INTO Section (section_id, name, manager_id)
VALUES
    (1, 'Finance Section', 1),
    (2, 'HR Section', 2),
    (3, 'IT Section', 3);
SELECT 
    s.name AS section_name,
    e.name AS manager_name
FROM 
    Section s
JOIN 
    Employee e ON s.manager_id = e.employee_id;
    
    SELECT 
    d.name AS department_name,
    e.name AS director_name
FROM 
    Department d
JOIN 
    Employee e ON d.director_id = e.employee_id;
    
    
    
    
    

