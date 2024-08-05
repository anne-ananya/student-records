<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
</head>
<body>
<%
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
    String email = request.getParameter("email");
    String enrollmentDate = request.getParameter("enrollment_date");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentRecords", "root", "12345");

        String sql = "INSERT INTO students (first_name, last_name, email, enrollment_date) VALUES (?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, firstName);
        pstmt.setString(2, lastName);
        pstmt.setString(3, email);
        pstmt.setDate(4, Date.valueOf(enrollmentDate));

        int rows = pstmt.executeUpdate();

        if (rows > 0) {
%>
            <p>Student added successfully.</p>
<%
        } else {
%>
            <p>Failed to add student.</p>
<%
        }
    } catch (Exception e) {
        e.printStackTrace();
%>
        <p>Error: <%= e.getMessage() %></p>
<%
    } finally {
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) {}
        if (conn != null) try { conn.close(); } catch (SQLException e) {}
    }
%>
<a href="index.jsp">Go back</a>
</body>
</html>
