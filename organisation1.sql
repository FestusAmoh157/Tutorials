CREATE DATABASE organization;
use organization;


-- Create Employee table

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    manager_id INT,
    department_id INT,
    FOREIGN KEY (manager_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Create Department table
CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    name VARCHAR(255),
    director_id INT,
    FOREIGN KEY (director_id) REFERENCES Employee(employee_id)
);

-- Create Section table
CREATE TABLE Section (
    section_id INT PRIMARY KEY,
    name VARCHAR(255),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES Employee(employee_id)
);
