<%-- 
    Document   : LoginLogic
    Created on : 13 nov. 2022, 21:02:48
    Author     : Isabel
--%><%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

>
<%@page import="Logic.AccountInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginLogic</title>
    </head>
    <body>
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            AccountInfo.email="maria@gmail.com";
            AccountInfo.password="1234";
 
            if((AccountInfo.email.equals(email)) || (AccountInfo.password.equals(password))){
                out.println("<script type='text/javascript'>alert('Welcome');</script>");
                response.sendRedirect("NewCar.jsp");
            
            }
            else{
                out.println("<script type='text/javascript'>alert('Incorrect password or email');</script>");
            }%>
    </body>
</html>
