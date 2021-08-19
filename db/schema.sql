DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employee_db;

USE employees_db;

CREATE TABLE department(
   id INT NOT NULL,
   department_name VARCHAR(30)
   PRIMARY KEY (id)
);

CREATE TABLE employee_role(
    id INT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT,
    PRIMARY KEY (id)
    FOREIGN KEY (department_id)
    REFERENCES department(id)
);

CREATE TABLE employee(
    id INT,
    first_name  VARCHAR(30),
    last_name VARCHAR(30),
    employee_role_id INT,
    manager_id INT
    FOREIGN KEY (employee_role_id)
    REFERENCES employee_role(id)
)
