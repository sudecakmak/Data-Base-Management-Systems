--CREATE DATABASE VTYSPreLab3

USE VTYSPreLab3

CREATE TABLE departments (
department_id int NOT NULL,
department_name nvarchar(20) NULL,
CONSTRAINT pk_departments PRIMARY KEY (department_id))

CREATE TABLE jobs (
job_id int NOT NULL,
job_title nvarchar(50) NULL,
min_salary int NULL,
max_salary int NULL,
CONSTRAINT pk_jobs PRIMARY KEY (job_id))

CREATE TABLE employees (
employee_id nvarchar(10) NOT NULL,
first_name nvarchar(11) NULL,
last_name nvarchar(20) NULL,
email nvarchar(20) NULL,
phone_number int NULL,
salary int NULL,
job_id int NOT NULL,
department_id int NOT NULL,
manager_id varchar(10) NULL,
CONSTRAINT pk_employees PRIMARY KEY (employee_id),
CONSTRAINT fk_employees_jobs 
                       FOREIGN KEY (job_id) REFERENCES jobs(job_id),
CONSTRAINT fk_employees_departments 
                       FOREIGN KEY (department_id) REFERENCES departments(department_id))



INSERT INTO departments VALUES (101, 'Department_A')
INSERT INTO departments VALUES (102, 'Department_B')

INSERT INTO employees VALUES ('E1001', 'Ayþe', 'Ayaz', 'aa@mail.net', 1011, 3000, 1, 101, NULL)
INSERT INTO employees VALUES ('E1002', 'Burak', 'Bilir', 'bb@mail.net', 2022, 2750, 1, 102, NULL)
INSERT INTO employees VALUES ('E1003', 'Canan', 'Can', 'cc@mail.net', 3033, 2500, 2, 101, 'E1001')
INSERT INTO employees VALUES ('E1004', 'Delil', 'Doðru', 'dd@mail.net', 4044, 2250, 2, 102, 'E1002')

INSERT INTO jobs VALUES (1, 'Executive', 2500, 3000)
INSERT INTO jobs VALUES (2, 'Executive Assistant', 2000, 2500)




SELECT * FROM departments

SELECT DISTINCT job_id FROM jobs

SELECT * FROM jobs j, employees e WHERE job_title = 'Executive Assistant' and e.job_id = j.job_id

SELECT e.first_name, e.last_name, e.salary FROM employees e, departments d WHERE d.department_name = 'Department_B' and e.department_id = d.department_id

SELECT e.first_name, e.last_name, e.salary FROM employees e, departments d, jobs j WHERE (d.department_name = 'Department_B' and e.department_id = d.department_id) and (j.job_title = 'Executive Assistant' and e.job_id = j.job_id)

SELECT e.first_name, e.last_name, e.salary FROM departments d, employees e WHERE d.department_name = 'Department_B' and  e.department_id = d.department_id order by e.salary DESC
