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
---inserting some data to student table
INSERT INTO students (student_id,student_name, age, email, frontend_mark,backend_mark)
VALUES 
  (2, 'Rakib', 22, 'rakib@gmail.com', 50, 60),
  (3, 'Sakib', 26, 'sakib@gmail.com', 56, 55),
  (4, 'Akib', 21, 'akibb@gmail.com', 57, 50)

---Course Table Creation
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(250),
    credits INT
);
---Course table data inserting
INSERT INTO courses (course_name, credits)
VALUES 
  ('Java Learning', 3),
  ('Python Learning', 2),
  ('MySQL Learning', 1),
  ('Next JS Learning', 4);


