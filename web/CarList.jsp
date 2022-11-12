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
        <div class="bg-image" style="
             background-image: url('https://img.freepik.com/fotos-premium/fondo-color-azul-suave-degradado-desenfocado-foto-abstracta_49683-4950.jpg?w=826');
             height: 100vh;
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

        </div>
    </body>
    <div class="container">
        <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
            <p class="col-md-4 mb-0 text-muted">© Team #4, All right reserved.</p>
            <div class="navbar-brand"><img 
                    src="https://cdn-icons-png.flaticon.com/512/1048/1048314.png" 
                    alt="Logo" 
                    width="100" 
                    height="100" 
                    class="d-inline-block align-text-top">
            </div>
            <ul class="nav col-md-4 justify-content-end">
                <li class="nav-item"><a class="nav-link px-2 text-muted">Maria</a></li>
                <li class="nav-item"><a class="nav-link px-2 text-muted">Isabel</a></li>
                <li class="nav-item"><a class="nav-link px-2 text-muted">Raul</a></li>
            </ul>
        </footer>
    </div>
</html>
