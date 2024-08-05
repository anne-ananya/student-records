<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Student Records</title>
    <style><%@include file="/css/style.css"%></style>

</head>
<body>
    <h1>All Student Records</h1>

    <%
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentRecords", "root", "12345");
            stmt = conn.createStatement();
            String sql = "SELECT * FROM students";
            rs = stmt.executeQuery(sql);
    %>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Enrollment Date</th>
            </tr>
        </thead>
        <tbody>
            <%
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("first_name") %></td>
                <td><%= rs.getString("last_name") %></td>
                <td><%= rs.getString("email") %></td>
                <td><%= rs.getDate("enrollment_date") %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <%
        } catch (Exception e) {
            e.printStackTrace();
    %>
    <p>Error: <%= e.getMessage() %></p>
    <%
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException e) {}
            if (stmt != null) try { stmt.close(); } catch (SQLException e) {}
            if (conn != null) try { conn.close(); } catch (SQLException e) {}
        }
    %>

    <a href="index.jsp">Go back</a>
</body>
</html>
