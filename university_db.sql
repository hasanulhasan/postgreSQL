-- Active: 1692287757511@@127.0.0.1@5432@mydata
---Student Table Creation
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(150),
    age INT,
    email VARCHAR(100),
    frontend_mark INT,
    backend_mark INT,
    status VARCHAR(100)
);
---inserting some data to student table
INSERT INTO students (student_name, age, email, frontend_mark,backend_mark)
VALUES 
  ('Alice', 22, 'alice@example', 55, 57),
  ('Bob', 21, 'bob@example', 34, 45),
  ('Charlie', 23, 'charlie@example', 60, 59),
  ('David', 20, 'david@example', 40, 49),
  ('Eve', 24, 'newemail@example', 45, 34),
  ('Rahim', 23, 'rahim@example', 46, 42)

---Course Table Creation
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(250),
    credits INT
);
---Course table data inserting
INSERT INTO courses (course_name, credits)
VALUES 
  ('Next.js', 3),
  ('React.js', 4),
  ('Database', 3),
  ('Prisma', 3);

---Enrollment Table Creation
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT, CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(student_id),
    course_id INT, CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
---Course table data inserting
INSERT INTO enrollment (student_id, course_id) 
VALUES 
  (1, 1),
  (1, 2),
  (2, 1),
  (3, 2);
--Query-1 (insert a data to student table)
INSERT INTO students VALUES (7, 'Hasib', 25, 'hasib@gmail.com', 41, 38);
SELECT * from students;
--Query-2 (insert a data to student table)
