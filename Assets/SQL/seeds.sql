USE employee_db;


INSERT INTO department (name)
VALUES ('Manager'),
       ('Sales'),
       ('IT');

INSERT INTO role (title, salary, department_id)
VALUES ('General Manager', 100000, 1), 
       ('Estimator', 85000, 2),
       ('Support', 75000, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Sam', 'Sample', 1, NULL), 
       ('John', 'Doe', 2, NULL), 
       ('Mickey', 'Mouse', 3, NULL);