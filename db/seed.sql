use employees;

INSERT INTO department (name)
VALUES ("sales"), ("engineering"), ("human resources"), ("legal"), ("tech");

INSERT INTO role (title, salary, department_id)
VALUES ("sales person", 80000, 1), ("sales lead", 100000, 1), ("sales assistant", 60000, 1), ("lead engineer", 100000, 2), ("assistant engineer", 80000, 2), ("engineer team member", 60000, 2), ("recruter", 80000, 3), ("lawyer", 100000, 4), ("senior dev", 100000, 5), ("help desk", 80000, 5);

INSERT INTO employee (
    first_name,
    last_name,
    role_id,
    manager_id
)VALUES ("Walter", "White", 1, null), ("Jessie", "Pinkman", 2, null), ("Ted", "Mosby", 3, null), ("Barney", "Stinson", 4, null), ("Robin", "Sherbotski", 5, null), ("Marshall", "Cripe", 6, null), ("Lilly", "Aldrin", 7, null), ("Bob", "Dylan", 8, null), ("Eric", "Clapton", 9, null), ("Jerry", "Garcia", 10, null);