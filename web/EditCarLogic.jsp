<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Car Logic</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");                
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
                Statement statement = con.createStatement();
                String sql = "update cars set carmake = '" + request.getParameter("txtmake")
                        + "', carmodel = '" + request.getParameter("txtmodel")
                        + "', caryear = " + request.getParameter("txtyear")
                        + ", carprice = " + request.getParameter("txtPrice")
                        + ", carbody = '" + request.getParameter("txtbody")
                        + "'  where carimg = '" + request.getParameter("id")+"'";
                statement.executeUpdate(sql);
                out.println("<script type='text/javascript'>alert('Car Updated Successfully');</script>");
                RequestDispatcher rd = request.getRequestDispatcher("/CarList.jsp");
                rd.include(request, response);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>
    </body>
</html>
