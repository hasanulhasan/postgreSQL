-- Active: 1692287757511@@127.0.0.1@5432@mydata

---Student Table Creation

CREATE TABLE
    students (
        student_id SERIAL PRIMARY KEY,
        student_name VARCHAR(150),
        age INT,
        email VARCHAR(100),
        frontend_mark INT,
        backend_mark INT,
        status VARCHAR(100)
    );

---inserting some data to student table

INSERT INTO
    students (
        student_name,
        age,
        email,
        frontend_mark,
        backend_mark
    )
VALUES (
        'Alice',
        22,
        'alice@example.com',
        55,
        57
    ), (
        'Bob',
        21,
        'bob@example.com',
        34,
        45
    ), (
        'Charlie',
        23,
        'charlie@example.com',
        60,
        59
    ), (
        'David',
        20,
        'david@example.com',
        40,
        49
    ), (
        'Eve',
        24,
        'newemail@example.com',
        45,
        34
    ), (
        'Rahim',
        23,
        'rahim@gmail.com',
        46,
        42
    )

---Course Table Creation

CREATE TABLE
    courses (
        course_id SERIAL PRIMARY KEY,
        course_name VARCHAR(250),
        credits INT
    );

---Course table data inserting

INSERT INTO
    courses (course_name, credits)
VALUES ('Next.js', 3), ('React.js', 4), ('Database', 3), ('Prisma', 3);

---Enrollment Table Creation

CREATE TABLE
    enrollment (
        enrollment_id SERIAL PRIMARY KEY,
        student_id INT,
        CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(student_id),
        course_id INT,
        CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(course_id)
    );

---Course table data inserting

INSERT INTO
    enrollment (student_id, course_id)
VALUES (1, 1), (1, 2), (2, 1), (3, 2);

--Query-1 (insert a data to student table)

INSERT INTO students
VALUES (
        7,
        'Hasib',
        25,
        'hasib@gmail.com',
        41,
        38
    );

--Query-2 (Retrieve the names of all students who are enrolled in the course titled 'Next.js')

SELECT student_name
from students
    INNER JOIN enrollment on enrollment.course_id = 1 AND students.student_id = enrollment.student_id;

--Query-3 (Update the status of the student with the highest total (frontend_mark + backend_mark) mark to 'Awarded')

UPDATE students
set status = 'awarded'
WHERE frontend_mark+backend_mark = (select max(frontend_mark+backend_mark) from students);

--Query-4 (Delete all courses that have no students enrolled)
SELECT * from students;
SELECT * from enrollment ;
SELECT * from courses c
INNER JOIN enrollment e on e.course_id = c.course_id;



--Query-5 (Retrieve the names of students using a limit of 2, starting from the 3rd student)

SELECT student_name
from students
ORDER BY student_name
LIMIT 2
OFFSET 2;

--Query-6 (Retrieve the course names and the number of students enrolled in each course)

SELECT c.course_name, count(*) as student_enrolled from enrollment e
INNER JOIN courses c on e.course_id = c.course_id
GROUP BY c.course_name;


--Query-7 (Calculate and display the average age of all students)

SELECT avg(age) from students;

--Query-8 (Retrieve the names of students whose email addresses contain 'example.com')

SELECT student_name from students WHERE email LIKE '%example.com';