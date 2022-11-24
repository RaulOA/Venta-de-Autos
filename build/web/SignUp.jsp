<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Sign Up</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
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
                    <div class="btn-group dropstart" >
                        <button type="button" class="btn btn-dark dropdown-toggle" style="--bs-btn-active-bg: #212529" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside" >
                            <img 
                                src="https://cdn-icons-png.flaticon.com/512/1144/1144709.png" 
                                alt="Logo" 
                                width="60">
                        </button>
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
                        </form>
                    </div>
                </div>
            </nav>
            <main role="main" class="container my-auto">
                <div class="row">
                    <div id="login" class="col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-12">
                        <div class="signup-form">
                            <form action="AddClientLogic.jsp" method="post">
                                <h2 class="text-center">Make your own account</h2>
                                <img class="img-fluid mx-auto d-block rounded" src="https://cdn-icons-png.flaticon.com/512/197/197717.png" />
                                <br>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col">
                                            <input type="text" class="form-control" name="name" placeholder="Name" required="required">
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control" name="lastname" placeholder="Last Name" required="required">
                                        </div>
                                        <div class="col">
                                            <input type="number" class="form-control" name="phone" placeholder="Phone" required="required">
                                        </div>
                                    </div>
                                    <br>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" placeholder="E-mail" required="required">
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col">
                                        <input type="password" class="form-control" name="password" placeholder="Password" required="required">
                                    </div>
                                </div>
                                <br>
                                <div class="text-center">
                                    <label class="form-check-label">
                                        <input type="checkbox" required="required"> Accept
                                        <a href="#">Terms</a> &amp;
                                        <a href="#">Policies</a>
                                    </label>
                                </div>
                                <br>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary mb-2">Submit</button>
                                </div>
                                <br>
                            </form>
                        </div>                
                    </div>
                </div>
            </main>
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