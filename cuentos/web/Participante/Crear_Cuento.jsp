<%-- 
    Document   : Crear_Cuento
    Created on : 8 may 2020, 19:24:10
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="../bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <link href="../css.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->

        <!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->

        <title>Crear cuento</title>
    </head>
    <body>
        <!--NAVBAR-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" role="navigation">
            <div class="container">
                <a class="navbar-brand" href="../index.jsp">Inicio</a>
                <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                </button>
                <div class="collapse navbar-collapse" id="exCollapsingNavbar">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a href="../lista_cuentos.jsp" class="nav-link">Cuentos</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Acerca</a></li>

                    </ul>
                    <ul class="nav navbar-nav flex-row justify-content-between ml-auto">
                        <li class="nav-item order-2 order-md-1"><a href="#" class="nav-link" title="settings"><i class="fa fa-cog fa-fw fa-lg"></i></a></li>
                        <li class="dropdown order-1">
                            <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn  btn-success dropdown-toggle">Login <span class="caret"></span></button>
                            <ul class="dropdown-menu dropdown-menu-right mt-2">
                                <li class="px-3 py-2">
                                    <% // out.print(session.getAttribute("usuario"));
                                        if (session.getAttribute("usuario") != null) {
                                    %>
                                    <form action="../ServletLogout" method="POST" class="form" role="form">

                                        <div class="form-group">
                                            <button type="submit" class="btn btn-info btn-block">Logout</button>
                                        </div>
                                    </form>
                                    <%
                                    } else {
                                    %>
                                    <form action="../ServletLogin" method="POST" class="form" role="form">
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

        <!--FIN LOGIN-->
        </br></br></br>
        <div class="container">
            <form action="#" method="POST">
                <h1>Registrar cuento</h1>
                <br>
                <div class="form-group">
                    <div class="row">
                        <div class="col-6">
                            <label for="id_cuento">id_cuento</label>
                            <input type="number" class="form-control" id="id_cuento" placeholder="1">
                            <label for="nombre_cuento">nombre_cuento</label>
                            <input type="text" class="form-control" id="nombre_cuento" placeholder="paco el chato">
                            <label for="id_participante">id_participante</label>
                            <input type="number" class="form-control" id="id_participante" placeholder="1"> 
                            <label for="genero">genero</label>
                            <input type="text" class="form-control" id="genero" placeholder="Hombre">
                        </div>

                        <div class="col-6">
                            <label for="link">link</label>
                            <input type="text" class="form-control" id="link" placeholder="">
                            <label>Contenido</label>
                             <div class="custom-file">
                                <input type="file" class="custom-file-input" id="contenido">
                                <label class="custom-file-label" for="contenido">Selecciona PDF</label>
                            </div>
                            <label>Portada</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="imagen">
                                <label class="custom-file-label" for="imagen">Selecciona imagen</label>
                            </div>
                        </div><br><br>

                    </div>

                </div>
            </form>
            <div/>

    </body>
</html>
