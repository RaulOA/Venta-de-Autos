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
        <%!
            Connection con;
            ResultSet resultset;

            public void jspInit() {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
                    Statement statement = con.createStatement();
                    resultset = statement.executeQuery("select * from cars WHERE carstatus = 'For Sale'");
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }

            public void jspDestroy() {
                try {
                    con.close();
                    resultset.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
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
                    <form class="d-flex" role="search">
                        <div class="dropdown">
                            <button class="btn btn-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <img 
                                    src="https://cdn-icons-png.flaticon.com/512/1144/1144709.png" 
                                    alt="Logo" 
                                    width="60">
                            </button>
                            <ul class="btn btn-dark dropdown-menu">
                                <%
                                    if (AccountInfo.flag == true) {%>
                                <li><a class="dropdown-item" href="CarList.jsp">My Cars</a></li>
                                <li><a class="dropdown-item" href="NewCar.jsp">New Car</a></li>
                                <li><a class="dropdown-item" href="LogOut.jsp">Log Out</a></li>
                                    <%} else {%>  
                                <li><a class="dropdown-item" href="Login.jsp">Login</a></li>
                                <li><a class="dropdown-item" href="SignUp.jsp">Sign Up</a></li>
                                    <%}%> 
                            </ul>
                        </div>
                    </form>
                </div>
            </nav>
            <div class="container" style="margin-top:2%"> 
                <div class="row row-cols-3 row-cols-md-3 g-4">
                    <%
                        if (resultset.next()) {
                            do {
                    %>
                    <div class="col">
                        <div class="card h-100 position-relative">
                            <img src="<%=resultset.getString("carimg")%>" class="card-img-top" alt="Generic placeholder image">
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
