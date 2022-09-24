CREATE database company;
USE company;

-- 1) Create an employee table 
create table employee (
	Emp_id INT auto_increment NOT NULL,
    emp_name varchar(250) NOT NULL,
    salary INT NOT NULL,
    manager_id INT NOT NULL,
	primary key(Emp_id)
);
-- drop table employee;

-- 2) Add 10 different rows in the table with your own values
INSERT INTO employee (emp_name,salary,manager_id)
VALUES ("robert",20000,10),
("stannis",40000,9),
("eddard",60000,3),
("robb",20000,1),
("john",10000,4),
("bob",20000,5),
("joseph",330000,1),
("alice",21000,7),
("kane",55000,6),
("willian",67000,8);

-- 3) Select the employee with highest salary
SELECT * from employee WHERE salary = (SELECT MAX(salary) from employee);

-- 4) Select the second highest paid employee
SELECT * from employee
WHERE salary = (SELECT MIN(salary) from (SELECT * from employee order by salary DESC
LIMIT 2) as result);

-- SELECT * from employee order by salary DESC LIMIT 3,1;

-- 5) Find the employee whose manager id is similar to employee id
SELECT * from employee WHERE Emp_id = manager_id;

SELECT * from employee;