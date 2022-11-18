<%-- 
    Document   : NewData
    Created on : 17 nov. 2022, 21:23:45
    Author     : Isabel
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="Logic.AccountInfo"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
                        String sql = "update cars set carmake = '" + AccountInfo.make  + 
                            "', carbody = '" + AccountInfo.body + 
                            "', carprice = " + AccountInfo.price + 
                            ", caryear = '" + AccountInfo.year +  "'" +
                            " where carmodel = " + AccountInfo.model;
                        statement.executeUpdate(sql);
                        statement.close();
                        out.println("<script type='text/javascript'>alert('New Data Added Successfully');</script>");
                        RequestDispatcher rd = request.getRequestDispatcher("/CarList.jsp");
                        rd.include(request, response);
        } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
            out.println(e.getMessage());
        }%>
    </body>
</html>
