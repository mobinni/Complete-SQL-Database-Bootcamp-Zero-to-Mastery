CREATE DATABASE ztm 


CREATE TYPE Feedback AS (
    studentId UUID,
    rating  SMALLINT,
    feedback TEXT
);
create extension if not exists "uuid-ossp";



CREATE TABLE student (
    student_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL
);

CREATE TABLE teacher (
    teacher_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL
);

CREATE TABLE course (
    course_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    course_name TEXT UNIQUE NOT NULL,
    description TEXT NOT NULL,
    feedback Feedback[]
);

CREATE TABLE subject (
    subject_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    subject TEXT NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE enrollment (
    course_id UUID REFERENCES course(course_id),
    student_id UUID,
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    PRIMARY KEY (course_id, student_id)
)
