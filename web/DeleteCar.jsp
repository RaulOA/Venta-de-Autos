<%@page import="Logic.AccountInfo"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Car</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
            Statement statement = connection.createStatement();
            String sql = "delete from cars WHERE carimg = '" + request.getParameter("id") + "' ";
            statement.executeUpdate(sql);
            statement.close();
            out.println("<script type='text/javascript'>alert('Car Deleted Successfully');</script>");
            RequestDispatcher rd = request.getRequestDispatcher("/CarList.jsp");
            rd.include(request, response);
        %>
    </body>
</html>
