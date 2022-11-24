<%@page import="Logic.AccountInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log Out</title>
    </head>
    <body>
        <%
            AccountInfo.email = "Default@default.com";
            AccountInfo.flag = false;
            out.println("<script type='text/javascript'>alert('Log Out Successfully');</script>");
            RequestDispatcher rd = request.getRequestDispatcher("/Principal.jsp");
            rd.include(request, response);
        %>
    </body>
</html>
