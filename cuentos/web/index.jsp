<%-- 
    Document   : index
<%-- 
    Document   : index

    Created on : 23 may 2020, 2:54:12
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inicio</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <link href="css.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script async defer crossorigin="anonymous"
        src="https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v7.0&appId=1681831048607377&autoLogAppEvents=1"></script>
        <script src="js/voto.js" type="text/javascript"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" role="navigation">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Inicio</a>
                <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                </button>
                <div class="collapse navbar-collapse" id="exCollapsingNavbar">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a href="lista_cuentos.jsp" class="nav-link">Cuentos</a></li>
                        <li class="nav-item"><a href="about.jsp" class="nav-link">Acerca</a></li>

                    </ul>
                    <ul class="nav navbar-nav flex-row justify-content-between ml-auto">
                        <div scope="public_profile,email" onlogin="checkLoginState();" class="fb-login-button" data-size="large" data-button-type="login_with" data-layout="rounded"
                             data-auto-logout-link="true" data-use-continue-as="false" data-width=""></div>

                        <li class="nav-item order-2 order-md-1"><a href="#" class="nav-link" title="settings"><i class="fa fa-cog fa-fw fa-lg"></i></a></li>
                        <li class="dropdown order-1">
                            <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn  btn-success dropdown-toggle">Login <span class="caret"></span></button>
                            <ul class="dropdown-menu dropdown-menu-right mt-2">
                                <li class="px-3 py-2">
                                    <% // out.print(session.getAttribute("usuario"));
                                        if (session.getAttribute("usuario") != null) {
                                    %>
                                    <form action="ServletLogout" method="POST" class="form" role="form">

                                        <div class="form-group">
                                            <button type="submit" class="btn btn-info btn-block">Logout</button>
                                        </div>
                                    </form>
                                    <%
                                    } else {
                                    %>
                                    <form action="ServletLogin" method="POST" class="form" role="form">
                                        <div class="form-group">
                                            <input id="emailInput" name="usuario" placeholder="Email" class="form-control form-control-sm" type="text" required="">
                                        </div>
                                        <div class="form-group">
                                            <input id="passwordInput" name="password" placeholder="Password" class="form-control form-control-sm" type="text" required="">
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-info btn-block">Login</button>
                                        </div>

                                    </form>
                                    <%
                                        };
                                    %>

                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div id="modalPassword" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3>Forgot password</h3>
                        <button type="button" class="close font-weight-light" data-dismiss="modal" aria-hidden="true">×</button>
                    </div>
                    <div class="modal-body">
                        <p>Reset your password..</p>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                        <button class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <header>
            <h1>Concurso Nacional de Cuentos</h1>
            <p>Te invitamos a conocer los exelentes cuentos de nuestros participantes</p>
        </header>
        <div class="separacion"></div>
        <div class="contenido-principal">

            <div class="container my-4">

                <p class="font-weight-bold">Ultimos Cuentos Publicados.</p>

                <p>Vota por tu favorito !!!.</p>

                <hr class="my-4">

                <!--Carousel Wrapper-->
                <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">

                    <!--Controls-->
                    <div class="controls-top">
                        <a class="btn-floating" href="#multi-item-example" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
                        <a class="btn-floating" href="#multi-item-example" data-slide="next"><i class="fa fa-chevron-right"></i></a>
                    </div>
                    <!--/.Controls-->

                    <!--Indicators-->
                    <ol class="carousel-indicators">
                        <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
                        <li data-target="#multi-item-example" data-slide-to="1"></li>
                        <li data-target="#multi-item-example" data-slide-to="2"></li>
                    </ol>
                    <!--/.Indicators-->

                    <!--Slides-->
                    <div class="carousel-inner" role="listbox">

                        <!--First slide-->
                        <div class="carousel-item active">

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card mb-2">
                                        <img class="card-img-top" src="https://www.pequeocio.com/wp-content/uploads/2009/05/el-patito-feo-1-550x388.jpg"
                                             alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Cuento title</h4>
                                            <p class="card-text">Participante: Nombre Participante.</p>
                                            <p class="card-text">Fecha: 10/10/2020.</p>
                                            <a onclick="like()" class="btn btn-primary">Votar</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 clearfix d-none d-md-block">
                                    <div class="card mb-2">
                                        <img class="card-img-top" src="https://i.ytimg.com/vi/AMNACNvN8vc/maxresdefault.jpg"
                                             alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Cuento title</h4>
                                            <p class="card-text">Participante: Nombre Participante.</p>
                                            <p class="card-text">Fecha: 10/10/2020.</p>
                                            <a class="btn btn-primary">Votar</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 clearfix d-none d-md-block">
                                    <div class="card mb-2">
                                        <img class="card-img-top" src="https://www.elsotano.com/imagenes_grandes/9789463/978946360443.JPG"
                                             alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Cuento title</h4>
                                            <p class="card-text">Participante: Nombre Participante.</p>
                                            <p class="card-text">Fecha: 10/10/2020.</p>
                                            <a class="btn btn-primary">Votar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--/.First slide-->

                        <!--Second slide-->
                        <div class="carousel-item">

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card mb-2 ">

                                        <img class="card-img-top" src="https://www.pequeocio.com/wp-content/uploads/2009/05/el-patito-feo-1-550x388.jpg"
                                             alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Cuento title</h4>
                                            <p class="card-text">Participante: Nombre Participante.</p>
                                            <p class="card-text">Fecha: 10/10/2020.</p>
                                            <a class="btn btn-primary">Votar</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 clearfix d-none d-md-block">
                                    <div class="card mb-2">
                                        <img class="card-img-top" src="https://i.ytimg.com/vi/AMNACNvN8vc/maxresdefault.jpg"
                                             alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Cuento title</h4>
                                            <p class="card-text">Participante: Nombre Participante.</p>
                                            <p class="card-text">Fecha: 10/10/2020.</p>
                                            <a class="btn btn-primary">Votar</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 clearfix d-none d-md-block">
                                    <div class="card mb-2">
                                        <!--<div class="img-slide" style="background-image: url(https://www.elsotano.com/imagenes_grandes/9789463/978946360443.JPG);"></div>-->
                                        <img class="card-img-top" src="https://www.elsotano.com/imagenes_grandes/9789463/978946360443.JPG"
                                             alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Cuento title</h4>
                                            <p class="card-text">Participante: Nombre Participante.</p>
                                            <p class="card-text">Fecha: 10/10/2020.</p>
                                            <a class="btn btn-primary">Votar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--/.Second slide-->

                        <!--Third slide-->
                        <div class="carousel-item">

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card mb-2">
                                        <img class="card-img-top" src="https://www.pequeocio.com/wp-content/uploads/2009/05/el-patito-feo-1-550x388.jpg"
                                             alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Cuento title</h4>
                                            <p class="card-text">Participante: Nombre Participante.</p>
                                            <p class="card-text">Fecha: 10/10/2020.</p>
                                            <a class="btn btn-primary">Votar</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 clearfix d-none d-md-block">
                                    <div class="card mb-2">
                                        <img class="card-img-top" src="https://i.ytimg.com/vi/AMNACNvN8vc/maxresdefault.jpg"
                                             alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Cuento title</h4>
                                            <p class="card-text">Participante: Nombre Participante.</p>
                                            <p class="card-text">Fecha: 10/10/2020.</p>
                                            <a class="btn btn-primary">Votar</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 clearfix d-none d-md-block">
                                    <div class="card mb-2">
                                        <img class="card-img-top" src="https://www.elsotano.com/imagenes_grandes/9789463/978946360443.JPG"
                                             alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Cuento title</h4>
                                            <p class="card-text">Participante: Nombre Participante.</p>
                                            <p class="card-text">Fecha: 10/10/2020.</p>
                                            <a class="btn btn-primary">Votar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--/.Third slide-->

                    </div>
                    <!--/.Slides-->

                </div>
                <!--/.Carousel Wrapper-->


            </div>
        </div>
        <div class="separacion"></div>
        <footer>
            <div class="footer">
                <p>CONTACTO</p>
                <p>Telefono: 477 455 67 83</p>
                <p>Direccion: Avenida Tecnologico #202</p>
                <p>Correo electronico <a href="mailto:someone@example.com">
                        cuentos@example.com</a>.</p>
            </div>
        </footer>

        <script src="bootstrap/js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/popper.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
=======
=======
