<%@page import="Logic.AccountInfo"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car List</title>
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
                    resultset = statement.executeQuery("select * from cars");
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
             background-image: url('https://img.freepik.com/fotos-premium/fondo-color-azul-suave-degradado-desenfocado-foto-abstracta_49683-4950.jpg?w=826');
             height: 100%;
             background-repeat: no-repeat;
             background-attachment: fixed;
             background-size: 100% 100%">
            <nav class="navbar navbar-dark bg-dark">
                <div class="container-fluid">
                    <div class="navbar-brand"><img 
                            src="https://cdn-icons-png.flaticon.com/512/1048/1048314.png" 
                            alt="Logo" 
                            width="50" 
                            height="40" 
                            class="d-inline-block align-text-top">
                        CrCars
                    </div>
                    <form class="d-flex" role="search">
                        <div class="dropdown">
                            <button class="btn btn-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <img 
                                    src="https://cdn-icons-png.flaticon.com/512/7816/7816997.png" 
                                    alt="Logo" 
                                    width="40" 
                                    height="40">
                                My Account
                            </button>
                            <ul class="btn btn-dark dropdown-menu">
                                <% boolean flag = true;
                                    if (flag == true) {%>
                                <li><a class="dropdown-item" href="Login.jsp">Login</a></li>
                                <li><a class="dropdown-item" href="SignUp.jsp">Sign Up</a></li>
                                    <%} else {%>  
                                <li><a class="dropdown-item" href="#">My Cars</a></li>
                                <li><a class="dropdown-item" href="#">New Car</a></li>
                                <li><a class="dropdown-item" href="#">Sign Out</a></li>
                                    <%}%> 
                            </ul>
                        </div>
                    </form>
                </div>
            </nav>
            <div class="container" style="margin-top:2%"> 
                <div class="row row-cols-3 row-cols-md-3 g-4">
                    <%
                        while (resultset.next()) {
                    %>
                    <div class="col">
                        <div class="card h-100">
                            <img src="<%=resultset.getString("carimg")%>" class="card-img-top" alt="Generic placeholder image">
                            <div class="card-body">
                                <h5 class="card-title"><%=resultset.getString("carmake")%> <%=resultset.getString("carmodel")%></h5>
                                <p class="card-text">Year : <%=resultset.getInt("caryear")%></p>
                                <p class="card-text">Body Style : <%=resultset.getString("carbody")%></p>
                                <p class="card-text">Price : <%=resultset.getInt("carprice")%></p>
                            </div>
                            <div class="position-relative">
                                <a class="navbar-brand position-absolute start-0 translate-middle-y" href="EditCar.jsp?id=<%=resultset.getString("carimg")%>">
                                    <img src="https://cdn-icons-png.flaticon.com/512/2921/2921222.png" alt="Bootstrap" width="30" height="34">
                                </a>
                                <%
                                    switch (resultset.getString("carstatus")) {
                                        case "Sold Out":
                                %>
                                <button type="button" class="btn btn-success position-absolute start-50 translate-middle">Sold Out</button>
                                <%
                                        break;
                                    case "For Sale":
                                %>
                                <button type="button" class="btn btn-info position-absolute start-50 translate-middle">For Sale</button>
                                <%
                                            break;
                                    }
                                %>
                                <a class="navbar-brand position-absolute end-0 translate-middle-y" href="DeleteCar.jsp?id=<%=resultset.getString("carimg")%>">
                                    <img src="https://cdn-icons-png.flaticon.com/512/1632/1632602.png" alt="Bootstrap" width="30" height="34">
                                </a>
                            </div>
                            <br>
                        </div>
                    </div>
                    <%}%>
                </div>
            </div>
            <br>
            <br>
            <br>
            <footer class="bg-dark text-center text-white">
                <div class="container p-4">
                    <section class="mb-4">
                        <p>
                            This site is built for academic purposes. 
                            Any resemblance to another page is mere coincidence.
                            Project 1 - Group 4 - Programming 2
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
