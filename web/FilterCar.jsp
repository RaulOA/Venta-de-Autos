<%@page import="java.sql.*"%>
<%@page import="Logic.AccountInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
            
            ResultSet resultset = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
                Statement statement = con.createStatement();                
                switch (request.getParameter("category")) {
                        case "Make":
                            resultset = statement.executeQuery("select * from cars WHERE carmake like '%" + request.getParameter("txtsearch") + "%' ");
                            break;
                        case "Model":
                            resultset = statement.executeQuery("select * from cars WHERE carmodel like '%" + request.getParameter("txtsearch") + "%' ");
                            break;
                        case "Year":
                            resultset = statement.executeQuery("select * from cars WHERE caryear = " +  request.getParameter("txtsearch") +"");
                            break;
                        case "Body":
                            resultset = statement.executeQuery("select * from cars WHERE carbody like '%" + request.getParameter("txtsearch") + "%' ");
                            break;
                    }      
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>
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
                    <div class="btn-group dropstart" >
                        <button type="button" class="btn btn-dark dropdown-toggle" style="--bs-btn-active-bg: #212529" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside" >
                            <img 
                                src="https://cdn-icons-png.flaticon.com/512/1144/1144709.png" 
                                alt="Logo" 
                                width="60">
                        </button>
                        <%
                            if (AccountInfo.flag == true) {%>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start" style="--bs-dropdown-link-color: #ffffff; --bs-dropdown-bg: #353535;">
                            <li><a class="dropdown-item" href="CarList.jsp">My Cars</a></li>
                            <li><a class="dropdown-item" href="NewCar.jsp">New Car</a></li>
                            <li><a class="dropdown-item" href="LogOut.jsp">Log Out</a></li>
                        </ul>
                        <%} else {%>
                        <form action="LoginLogic.jsp" method="post" class="dropdown-menu p-4" style="--bs-dropdown-min-width: 15rem; --bs-dropdown-color: #ffffff; --bs-dropdown-bg: #353535;">
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="email@example.com" required="required">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input name="password" type="password" class="form-control" id="password" placeholder="Password" required="required">
                            </div>
                            <button style="--bs-btn-border-radius: 1.375rem;" type="submit" class="btn btn-primary">Sign In</button>
                            <a type="button" style="--bs-btn-border-radius: 1.375rem;" class="btn btn-outline-primary" href="SignUp.jsp">Register</a>
                        </form>
                    </div>
                    <%}%>
                </div>
            </nav>
            <div class="col-md-9 col-md-push-1 position-absolute top-0 start-50" style="left: 30%!important; width: 40%;margin-top:1%;">
                <div class="container ">
                    <div class="row">
                        <div class="col-xs-8 col-xs-offset-2">
                            <form action="FilterCar.jsp" method="post">
                                <div class="input-group">
                                    <select name="category" class="btn btn-outline-secondary" data-toggle="dropdown">
                                        <option value="Make" >Make</option>
                                        <option value="Model" >Model</option>
                                        <option value="Year" >Year</option>
                                        <option value="Body" > Body</option>
                                    </select>
                                    <input type="text" class="form-control" name="txtsearch" placeholder="Search term...">
                                    <button class="btn btn-outline-secondary" type="submit">
                                        <img src="https://cdn-icons-png.flaticon.com/512/200/200941.png" alt="Bootstrap" width="30" height="34">
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container" style="margin-top:2%"> 
                <div class="row row-cols-3 row-cols-md-3 g-4">
                    <%
                        if (resultset.next()) {
                            do {
                    %>
                    <div class="col">
                        <div class="card h-100 position-relative" style="--bs-card-border-width: 10px; --bs-card-border-color: rgb(33 37 41); --bs-card-border-radius: 3.375rem; --bs-card-inner-border-radius: calc(3.375rem - 10px);">
                            <img src="<%=resultset.getString("carimg")%>" class="card-img-top" alt="Generic placeholder image">
                            <hr>
                            <div class="card-body">
                                <h5 class="card-title"><%=resultset.getString("carmake")%> <%=resultset.getString("carmodel")%></h5>
                                <p class="card-text">Year : <%=resultset.getInt("caryear")%></p>
                                <p class="card-text">Body Style : <%=resultset.getString("carbody")%></p>
                                <p class="card-text">Price : <%=resultset.getInt("carprice")%></p>
                            </div>
                            <a class="navbar-brand" href="BuyCar.jsp?id=<%=resultset.getString("carimg")%>">
                                <img class="position-absolute bottom-0 end-0" src="https://cdn-icons-png.flaticon.com/512/4856/4856381.png" alt="Bootstrap" width="30%">
                            </a>
                        </div>
                    </div>
                    <%} while (resultset.next());
                    } else {
                    %>
                    <a class="text-center">
                        <img src="https://cdn-icons-png.flaticon.com/512/7486/7486754.png" alt="Bootstrap">
                    </a>
                    <h3 class="text-center">¡¡ Don't Have Any Car For Sale !!</h3>
                    <%}%>
                </div>
            </div>
            <br>
            <footer class="bg-dark text-center text-white">
                <div class="container p-4">
                    <section class="mb-4">
                        <p>
                            Wheels like never before
                        </p>
                    </section>
                </div>
                <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                    © 2022 Copyright:
                    <a class="text-white" href="Principal.jsp">CrCars.com</a>
                </div>
            </footer>
        </div>
    </body>
</html>
