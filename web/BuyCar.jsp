<%-- 
    Document   : BuyCar
    Created on : Nov 16, 2022, 11:50:43 AM
    Author     : tacho
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buy Car</title>
    </head>
    <body>
        <%
            try{
                //String id=request.getParameter("id");
                
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "Admin$1234");
                Statement statement = connection.createStatement();
                
                String sql = "UPDATE cars SET carstatus = 'Sold Out' WHERE carimg =  '" + request.getParameter("id") + "' ";
                         
                
                statement.executeUpdate(sql);
                statement.close();

                out.println("<script type='text/javascript'>alert('Thanks for your purchase');</script>");
                RequestDispatcher rd = request.getRequestDispatcher("/Principal.jsp");
                rd.include(request, response); 
            }catch (NumberFormatException | ClassNotFoundException | SQLException e){
                out.println(e.getMessage());
            }
        %>
    </body>
</html>

