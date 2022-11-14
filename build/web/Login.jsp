<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login</title>
        <!-- CSS only -->
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

            <main role="main" class="container my-auto">
                <div class="row">
                    <div id="login" class="col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-12">
                        <h2 class="text-center">Welcome</h2>
                        <img class="img-fluid mx-auto d-block rounded" src="https://cdn-icons-png.flaticon.com/512/2170/2170091.png" />
                        <br>
                        <form action="LoginLogic.jsp" method="post">

                            <div class="form-group">
                                <input id="correo" name="email" class="form-control" type="email" placeholder="E-mail" required="required">
                            </div>

                            <div class="form-group">
                                <input id="password" name="password" class="form-control" type="password" placeholder="Password" required="required">
                            </div>

                            <br>

                            <div class="text-center"">
                                <button type="submit" class="btn btn-primary mb-2">Login</button>
                            </div>

                        </form>

                        <br>

                        <div class="text-center">I don't have an acount.                            
                            <a href="SignUp.jsp">SignUp</a>
                        </div>

                    </div>
                </div>
            </main>

        </div>

    </body>

</html>
