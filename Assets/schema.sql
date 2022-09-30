DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

USE company_db;
CREATE TABLE department (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
    id INTEGER NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (id)
)

-- CREATE TABLE departments (
--   id INT NOT NULL AUTO_INCREMENT 
--   PRIMARY KEY,
--   department_name VARCHAR(30)
-- );

-- CREATE TABLE roles (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   title VARCHAR(30) NOT NULL,
--   salary DECIMAL NOT NULL,
--   department_id INT,
--   FOREIGN KEY (department_id) 
--   REFERENCES departments(id)
--   ON DELETE SET NULL
-- );

-- CREATE TABLE employees (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   first_name VARCHAR(30) NOT NULL,
--   last_name VARCHAR(30) NOT NULL,
--   role_id INT,
--   FOREIGN KEY (role_id)
--   REFERENCES roles(id)
--   ON DELETE SET NULL,
--   manager_id INT,
--   FOREIGN KEY (manager_id) 
--   REFERENCES employees(id)
-- );