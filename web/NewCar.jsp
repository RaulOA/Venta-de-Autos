<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Car</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body>
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
                                <li><a class="dropdown-item" href="CarList.jsp">My Cars</a></li>
                                <li><a class="dropdown-item" href="LogOut.jsp">Log Out</a></li>
                            </ul>
                        </div>
                    </form>
                </div>
            </nav>
            <div class="container" style="">
                <main role="main" class="container my-auto">
                    <div class="row">
                        <div id="login" class="col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-12">
                            <img class="img-fluid mx-auto d-block rounded" width="120" height="120" src="https://cdn-icons-png.flaticon.com/512/6903/6903741.png" />
                            <br>
                            <form action="AddCarLogic.jsp" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <input id="txtmake" name="txtmake" class="form-control" type="text" placeholder="Make" required="required">
                                </div>      
                                <br>
                                <div class="form-group">
                                    <input id="txtmodel" name="txtmodel" class="form-control" type="text" placeholder="Model" required="required">
                                </div>  
                                <br>
                                <div class="form-group">
                                    <input id="txtyear" name="txtyear" class="form-control" type="number" placeholder="Year" required="required">
                                </div>     
                                <br>
                                <div class="form-group">
                                    <input id="txtPrice" name="txtPrice" class="form-control" type="number" placeholder="Price" required="required">
                                </div>
                                <br>
                                <div class="form-group text-center">
                                    <select name="txtbody" id="txtbody" required="required">
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
                                    <label>Car Picture</label>
                                    <input id="file" type="file" name="img" required="required" size="50" style="width:59%"/>
                                </div> 
                                <br>
                                <div class="text-center"">
                                    <button type="submit" class="btn btn-primary mb-2">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </main>
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
    </body>
</html>
