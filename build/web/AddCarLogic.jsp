<%@page import="java.util.Random"%>
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
            try {
                // This part manage the strings that comes in the "multipart/form-data"
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List<FileItem> uploadItems = upload.parseRequest(new ServletRequestContext(request));
                // All data is gruped in uploadItems and every item in this is called uploadItem witch it will iterated in the nex step
                for (FileItem uploadItem : uploadItems) {
                    // isFormFiel() Determines whether or not a FileItem instance represents a simple form field.
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
                    } else {
                        // if not it means that item isn'n a simple form field. 
                        Random rand = new Random();
                        int upperbound = 1000000;
                        int random = rand.nextInt(upperbound);
                        File file;
                        String filePath = "G:/My Drive/My Github/Progra 2/crcars/web/img/";
                        file = new File(filePath + random + ".jpg");
                        uploadItem.write(file);
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
                        Statement statement = connection.createStatement();
                        String sql = "insert into cars (caremail, carmake, carmodel, caryear, carprice, carbody, carimg, carstatus) "
                                + "values ('"
                                + AccountInfo.email + "', '"
                                + AccountInfo.make + "', '"
                                + AccountInfo.model + "', "
                                + AccountInfo.year + ", "
                                + AccountInfo.price + ", '"
                                + AccountInfo.body + "', '"
                                + "img/" + random + ".jpg', "
                                + "'For Sale')";
                        statement.executeUpdate(sql);
                        statement.close();
                        out.println("<script type='text/javascript'>alert('New Car Added Successfully');</script>");
                        RequestDispatcher rd = request.getRequestDispatcher("/CarList.jsp");
                        rd.include(request, response);
                    }
                }
            } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
                out.println(e.getMessage());
            }%>
    </body>
</html>