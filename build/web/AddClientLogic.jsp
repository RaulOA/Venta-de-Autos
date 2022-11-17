<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.servlet.RequestDispatcher"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            response.setContentType("text/html;charset=UTF-8");
            try {
                String name = request.getParameter("name");
                String lastname = request.getParameter("lastname");
                int phone = Integer.parseInt(request.getParameter("phone"));
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
                Statement statement = connection.createStatement();
                Statement statement2 = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("select * from clients where clientemail = '" + email + "'");
                if (resultSet.next()) {
                    out.println("<script type='text/javascript'>alert('Email Already Exist');</script>");
                    RequestDispatcher rd = request.getRequestDispatcher("/SignUp.jsp");
                    rd.include(request, response);
                } else {
                    String sql = "insert into clients (clientname, clientlastname, clientphone, clientemail, clientpassword) "
                            + "values ('"
                            + name + "', '"
                            + lastname + "', "
                            + phone + ", '"
                            + email + "', '"
                            + password + "')";
                    statement2.executeUpdate(sql);
                    statement2.close();
                    out.println("<script type='text/javascript'>alert('Successful User Registration');</script>");
                    RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
                    rd.include(request, response);
                }
                statement.close();
            } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
                out.println(e.getMessage());
            }
        %>
    </body>
</html>
