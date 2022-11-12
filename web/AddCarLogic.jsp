<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="Logic.AccountInfo"%>
<%@page import="java.sql.*"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Car Logic</title>
    </head>
    <body>
        <%
            // This part manage the strings that comes in the "multipart/form-data"
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List<FileItem> uploadItems = upload.parseRequest(new ServletRequestContext(request));
            for (FileItem uploadItem : uploadItems) {
                if (uploadItem.isFormField()) {
                    String fieldname = uploadItem.getFieldName();
                    String value = uploadItem.getString();
                    switch (fieldname) {
                        case "txtmake":
                            AccountInfo.make = value;
                            break;
                        case "txtmodel":
                            AccountInfo.model = value;
                            break;
                        case "txtyear":
                            AccountInfo.year = Integer.parseInt(value);
                            break;
                        case "txtPrice":
                            AccountInfo.price = Integer.parseInt(value);
                            break;
                        case "txtbody":
                            AccountInfo.body = value;
                            break;
                    }
                }
            }%> 
        <!-- Here we already have the info about the car witch is safe in AccountInfo.java -->    
        
        <h1>Email: <%=AccountInfo.email%></h1>
        <h1>Make: <%=AccountInfo.make%></h1>
        <h1>Model: <%=AccountInfo.model%></h1>
        <h1>Year: <%=AccountInfo.year%></h1>
        <h1>Price: <%=AccountInfo.price%></h1>
        <h1>Body: <%=AccountInfo.body%></h1>
        
        <!-- Naw we need to bring the image, copy in the img folder and rename file -->

        <%
            File file;
            String filePath = "C:/Users/tacho/OneDrive/Escritorio/1er Projecto/web/img";
            List fileItems = upload.parseRequest(new ServletRequestContext(request));
            Iterator i = fileItems.iterator();
            while (i.hasNext()) {
                FileItem fi = (FileItem) i.next();
                if (!fi.isFormField()) {
                    /*String fileName = fi.getName();*/
                    file = new File(filePath + AccountInfo.make + "_" + AccountInfo.model + "_" + AccountInfo.year + ".jpg");
                    fi.write(file);
                    /*Actualice la base de datos*/
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
                    Statement statement = con.createStatement();

                    String sql = "insert into cars (caremail, carmake, carmodel, caryear, carprice, carbody, carimg) "
                            + "values ('" + AccountInfo.email 
                            + "','" + AccountInfo.make 
                            + "', '" + AccountInfo.model 
                            + "', " + AccountInfo.year 
                            + ", " + AccountInfo.price 
                            + ", " + AccountInfo.body 
                            + "'img/" + AccountInfo.make + "_" + AccountInfo.model + "_" + AccountInfo.year + ".jpg')";
                    out.println("<script type='text/javascript'>alert('Info Updated Succesfully');</script>");
                    /**/
                    response.sendRedirect("Principal.jsp");
                    /*RequestDispatcher rd = request.getRequestDispatcher("/userProfile.jsp");
                        rd.include(request, response);*/
                }
            }
        %>
    </body>
</html>
