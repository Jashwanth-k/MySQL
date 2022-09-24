use company;

-- | Employee_id | First_name | Last_name |  Salary  | Joining_date | Departement |
create table employeeTable (
	Employee_id BIGINT auto_increment NOT NULL,
    First_name varchar(250) NOT NULL,
    Last_name varchar(250) NOT NULL,
    Salary INT NOT NULL,
    Joining_date date NOT NULL,
    Department varchar(250) NOT NULL,
    Primary Key(Employee_id)
);
-- drop table employeeTable;

INSERT INTO employeeTable (First_name,Last_name,Salary,Joining_date,Department)
VALUES ("Bob","Kinto",1000000,"2019-01-20","Finance"),
("Jerry","Kansxo",6000000,"2019-01-15","IT"),
("Philip","Jose",8900000,"2019-02-05","Banking"),
("John","Abraham",2000000,"2019-02-25","Insurance"),
("Michael","Mathew",2200000,"2019-02-28","Finance"),
("Alex","chreketo",4000000,"2019-05-10","IT"),
("Yohan","Soso",1230000,"2019-06-20","Banking");

-- 1. Get all employees.
SELECT * from employeeTable;
  
-- 2. Display the first name and last name of all employees.
SELECT First_name,Last_name from employeeTable;

-- 3. Display all the values of the “First_Name” column using the alias “Employee Name”
SELECT First_name as EmployeeName from employeeTable;