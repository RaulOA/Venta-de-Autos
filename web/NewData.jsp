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
            String txtmake = request.getParameter("txtmake");
            String txtmodel = request.getParameter("txtmodel");
            int txtyear = Integer.parseInt(request.getParameter("txtyear"));
            int txtPrice = Integer.parseInt(request.getParameter("txtPrice"));
            String txtbody = request.getParameter("txtbody");
            Class.forName("com.mysql.cj.jdbc.Driver");
            AccountInfo.make = txtmake;
            AccountInfo.model = txtmodel;
            AccountInfo.year = txtyear;
            AccountInfo.price = txtPrice;
            AccountInfo.body = txtbody;
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
            Statement statement = connection.createStatement();
                String sql = "update cars SET carmake = '" + txtmake  + 
                    "', carbody = '" + txtbody + 
                    "', carprice = " + txtPrice + 
                    ", caryear = '" + txtyear +  "'" +
                    ", carmodel = " + txtmodel;
                statement.executeUpdate(sql);
                statement.close();
                out.println("<script type='text/javascript'>alert('New Data Added Successfully');</script>");
                RequestDispatcher rd = request.getRequestDispatcher("/CarList.jsp");
                rd.include(request, response);
        } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
            out.println(e.getMessage());
        }
        %>
    </body>
</html>
