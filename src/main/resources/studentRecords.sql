CREATE DATABASE StudentRecords;

USE StudentRecords;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    enrollment_date DATE NOT NULL
);

-- Insert sample data
INSERT INTO students (first_name, last_name, email, enrollment_date) VALUES
('John', 'Doe', 'john.doe@example.com', '2023-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', '2023-02-20');