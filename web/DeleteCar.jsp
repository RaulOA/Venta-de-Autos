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
            String txtmake = request.getParameter("txtmake");

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
            Statement statement = connection.createStatement();
            AccountInfo.make=txtmake;
            String sql = "delete from cars WHERE carmake = " + AccountInfo.make;%>
            <form action="AddCarLogic.jsp" method="post" enctype="multipart/form-data">
        <%
            statement.executeUpdate(sql);
            statement.close();
        } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
            out.println(e.getMessage());
        }
        %>
            </form>

    </body>
</html>
