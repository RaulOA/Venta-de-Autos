<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from clients where clientemail = '" + email + "' AND clientpassword = '" + password + "'");
            
            if (resultSet.next()) {
                AccountInfo.email = email;
                AccountInfo.flag = true;
                out.println("<script type='text/javascript'>alert('Login Successful');</script>");
                RequestDispatcher rd = request.getRequestDispatcher("/CarList.jsp");
                rd.include(request, response);
                statement.close();
            } else {
                out.println("<script type='text/javascript'>alert('Wrong email or password');</script>");
                RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
                rd.include(request, response);
                statement.close();
            }
            
        %>
    </body>
</html>
