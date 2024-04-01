CREATE DATABASE organization;
use organization;


-- Create Employee table

CREATE TABLE Employee1 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    manager_id INT,
    department_id INT
    
);
select*from employee1;

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
    manager_id INT
    
);
INSERT INTO Employee1  ( employee_id,  name,  manager_id, department_id )values(1, 'John Boah', 101, 273 );
INSERT INTO Employee1  ( employee_id,  name,  manager_id, department_id )values(2, 'John Boah', 121, 275 );
INSERT INTO Employee1  ( employee_id,  name,  manager_id, department_id )values(3, 'John Boah', 131, 278 );
select*from Department ;


INSERT INTO Section  ( section_id,  name, manager_id )values(1, 'John Boah', 233);
INSERT INTO Section  ( section_id,  name, manager_id )values(2, 'Ben Dalton', 234);
INSERT INTO Section  ( section_id,  name, manager_id )values(3, 'John Oduro', 235);

INSERT INTO   Department ( department_id,  name,  director_id )values(1, 'Odame Obed', 221);
INSERT INTO  Department  ( department_id,  name,  director_id )values(2, 'Calvin Tetteh', 222);
INSERT INTO  Department  ( department_id,  name,  director_id )values(3, 'Fest President', 223);