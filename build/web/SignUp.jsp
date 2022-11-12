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
             background-image: url('https://img.freepik.com/fotos-premium/fondo-color-azul-suave-degradado-desenfocado-foto-abstracta_49683-4950.jpg?w=826');
             height: 100vh;
             background-repeat: no-repeat;
             background-attachment: fixed;
             background-size: 100% 100%">            
            <main role="main" class="container my-auto">
                <div class="row">
                    <div id="login" class="col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-12">
                        <div class="signup-form">
                            <form action="AddClientLogic.jsp" method="post">
                                <h2 class="text-center">Make your own account</h2>
                                <img class="img-fluid mx-auto d-block rounded" src="https://cdn-icons-png.flaticon.com/512/8109/8109747.png" />
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
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" placeholder="E-mail" required="required">
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <input type="password" class="form-control" name="password" placeholder="Password" required="required">
                                    </div>
                                </div>
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
                            </form>
                            <div class="text-center">Do you already have an account?
                                <a href="Login.jsp">Login</a>
                            </div>
                        </div>                
                    </div>
                </div>
            </main>
        </div>
    </body>