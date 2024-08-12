# Student Records Management System

## Overview

This project is a web-based Student Records Management System. It allows users to add new students, view existing student records, and manage the student database. The application uses JavaServer Pages (JSP) for the frontend and MySQL as the backend database.

## Features

- **Add Student:** Form to input and add new student records.
- **View Students:** Dropdown menu to select and view individual student details.
- **View All Records:** Button to view all student records in a table format.

## Project Structure

- `index.jsp`: Main page with a form to add new students and a dropdown menu to select and view individual student details.
- `addStudent.jsp`: Page that handles the addition of new students to the database.
- `viewStudent.jsp`: Page that displays the details of a selected student or all student records if requested.
- `style.css`: CSS file for styling the JSP pages.

## Getting Started

### Prerequisites

- Java Development Kit (JDK)
- Apache Tomcat (or another Java Servlet container)
- MySQL database server

### Setup

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/anne-ananya/student-records.git
    cd student-records
    ```

2. **Configure MySQL Database:**

    - Create a database named `StudentRecords`.
    - Create a table named `students` with appropriate columns (`id`, `first_name`, `last_name`, `email`, `enrollment_date`).

    ```sql
    CREATE TABLE students (
        id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        email VARCHAR(100),
        enrollment_date DATE
    );
    ```

3. **Deploy the Application:**

    - Needs Deployment using Kubernetes.

4. **Access the Application:**

    Open a web browser and navigate to `http://localhost:8080/student-records/index.jsp` to start using the application.

## Usage

- **Add Student:** Fill in the form with student details and submit to add a new student.
- **View Students:** Use the dropdown to select a student and click "View Student" to see their details.
- **View All Records:** Click the "View All Records" button to see a table of all students.

## Contributing

Feel free to submit issues and pull requests to improve the project. Contributions are welcome!

## Contact

For any questions or feedback, please contact [Your Name](mailto:ananya0612de@gmail.com).

