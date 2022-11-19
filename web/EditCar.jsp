<%-- 
    Document   : EditCar
    Created on : Nov 16, 2022, 8:18:44 AM
    Author     : tacho
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="Logic.AccountInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Car</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    
    </head>
    <body>
        <%
            String make = request.getParameter("make");
            AccountInfo.make=make;
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from cars where carmake=" + AccountInfo.make);
            resultSet.next();
        %>
    <center>
        <div class="bg-image" style="
             background-image: url('https://img.freepik.com/foto-gratis/estudio-gris-vacio-liso-abstracto-bien-uso-como-fondo-informe-comercial-digital-plantilla-sitio-web-telon-fondo_1258-55961.jpg?w=826&t=st=1668614983~exp=1668615583~hmac=8afd12dc0412cc173c3400335d8f0da3f2f4e14087c7bdd03c1027308f17e2ca');
             height: 100%;
             background-repeat: no-repeat;
             background-attachment: fixed;
             background-size: 100% 100%">
            <nav class="navbar navbar-dark bg-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="Principal.jsp"><img 
                            src="https://cdn-icons-png.flaticon.com/512/2077/2077164.png" 
                            alt="Logo" 
                            width="10%"
                            class="d-inline-block">
                        CrCars.com
                    </a>
                    <form class="d-flex" role="search">
                        <div class="dropdown">
                            <button class="btn btn-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <img 
                                    src="https://cdn-icons-png.flaticon.com/512/1144/1144709.png" 
                                    alt="Logo" 
                                    width="60">
                            </button>
                            <ul class="btn btn-dark dropdown-menu">
                                <li><a class="dropdown-item" href="NewCar.jsp">New Car</a></li>
                                <li><a class="dropdown-item" href="LogOut.jsp">Log Out</a></li>
                            </ul>
                        </div>
                    </form>
                </div>
            </nav>
            <div class="container" style="">
                <main role="main" class="container my-auto">
                    <div class="row">
                        <form action="NewData.jsp" method="post" enctype="multipart/form-data">
                        <%--  .<img class="img-fluid mx-auto d-block rounded" width="120" height="120" src="https://cdn-icons-png.flaticon.com/512/1998/1998575.png" /> --%>
                        <br> 
                        <center>
                            New Data
                        </center>
                                <div class="form-group">
                                    <label for='AccountInfo.make'>Make</label>
                                    <input name="txtmake" type="text" class="form-control" id="txtmake" >
                                </div>
                                <div class="form-group">
                                     <label for="AccountInfo.model">Model</label>
                                     <input name="txtmodel" type="text" class="form-control" id="txtmodel" >
                                </div>
                                <div class="form-group">
                                    <label for="AccountInfo.year">Year</label>
                                    <input name="txtyear" type="number" class="form-control" id="txtyear" >
                                </div>
                                <div class="form-group">
                                    <label for="AccountInfo.price">Price</label>
                                    <input name="txtPrice" type="number" class="form-control" id="txtPrice" >                            
                                </div>
                       
                            <div class="form-group text-center">
                                    <select name="txtbody" id="txtbody">
                                        <option >--- Select Body Style ---</option>
                                        <option value="Cargo_Van">Cargo Van</option>
                                        <option value="Convertible">Convertible</option>
                                        <option value="Coupe">Coupe</option>
                                        <option value="Hatchback">Hatchback</option>
                                        <option value="Minivan">Minivan</option>
                                        <option value="Pickup_Truck">Pickup Truck</option>
                                        <option value="SUV">SUV</option>
                                        <option value="Sedan">Sedan</option>
                                        <option value="Wagon">Wagon</option>
                                    </select>
                            </div>
                            <br>
                                <div class="form-group text-center">
                                    <label>New Car Picture</label>
                                    <input id="file" type="file" name="img" size="50" style="width:59%"/>
                                </div> 

                            <br>
                            <div class="text-center"">
                                <button type="submit" class="btn btn-primary mb-2">Edit</button>
                            </div>
                             </form>
                    </div>
            </div>
        </div>
    </center>                    
    </body>
</html>
