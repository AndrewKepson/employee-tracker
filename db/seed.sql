use employees;

INSERT INTO department (name)
VALUES 
("sales"), 
("engineering"), 
("human resources"), 
("legal"), 
("tech");

INSERT INTO role (title, salary, department_id)
VALUES 
("sales person", 80000, 1), 
("sales lead", 100000, 1), 
("sales assistant", 60000, 1), 
("lead engineer", 100000, 2), 
("assistant engineer", 80000, 2), 
("engineer team member", 60000, 2), 
("recruter", 80000, 3), 
("lawyer", 100000, 4), 
("senior dev", 100000, 5), 
("help desk", 80000, 5);

INSERT INTO employee (
    first_name,
    last_name,
    role_id,
    manager_id,
    department_id
)VALUES 
("Walter", "White", 1, 1, 3), 
("Jessie", "Pinkman", 2, 7, 5), 
("Ted", "Mosby", 3, 7, 5), 
("Barney", "Stinson", 4, 7, 4), 
("Robin", "Sherbotski", 5, 1, 4), 
("Marshall", "Cripe", 6, 7, 1), 
("Lilly", "Aldrin", 7, 1, 3), 
("Bob", "Dylan", 8, 5, 3), 
("Eric", "Clapton", 9, 5, 3), 
("Jerry", "Garcia", 10, 5, 2);