<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Records</title>
    <style><%@include file="/css/style.css"%></style>
</head>
<body>
    <h1>Student Records</h1>

    <form action="addStudent.jsp" method="post">
        <label for="first_name">First Name:</label>
        <input type="text" id="first_name" name="first_name" required><br>
        <label for="last_name">Last Name:</label>
        <input type="text" id="last_name" name="last_name" required><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>
        <label for="enrollment_date">Enrollment Date:</label>
        <input type="date" id="enrollment_date" name="enrollment_date" required><br>
        <input type="submit" value="Add Student">
    </form>

    <h2>Existing Students</h2>
    <!-- Add the View Records button here -->
    <form action="viewStudent.jsp" method="get">
        <input type="submit" value="View All Records">
    </form>
</body>
</html>
