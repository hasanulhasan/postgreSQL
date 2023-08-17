-- Active: 1692287757511@@127.0.0.1@5432@mydata
---Student Table Creation
CREATE TABLE students (
    student_id INT PRIMARY KEY UNIQUE,
    student_name VARCHAR(150),
    age INT,
    email VARCHAR(100),
    frontend_mark INT,
    backend_mark INT,
    status VARCHAR(100)
);