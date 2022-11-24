<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car State</title>
    </head>
    <body>
        <%
            String state = null;
            switch (Integer.parseInt(request.getParameter("id"))) {
                case 1:
                    state = "For Sale";
                    break;
                case 2:
                    state = "Sold Out";
                    break;
            }

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
            Statement statement = connection.createStatement();
            String sql = "UPDATE cars SET carstatus = '" + state + "' WHERE carimg =  '" + request.getParameter("img") + "' ";
            statement.executeUpdate(sql);
            statement.close();
            RequestDispatcher rd = request.getRequestDispatcher("/CarList.jsp");
            rd.include(request, response);

        %>
    </body>
</html>
