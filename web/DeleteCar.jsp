<%-- 
    Document   : DeleteCar
    Created on : Nov 17, 2022, 11:38:39 AM
    Author     : tacho
--%>

<%@page import="Logic.AccountInfo"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try {
            

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "Admin$1234");
            Statement statement = connection.createStatement();

            String sql = "delete from cars where carmake = " + AccountInfo.make;

            statement.executeUpdate(sql);
            statement.close();

            RequestDispatcher rd = request.getRequestDispatcher("/ProductsServlet");
            rd.include(request, response);
        } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
            out.println(e.getMessage());
        }
        %>
    </body>
</html>
