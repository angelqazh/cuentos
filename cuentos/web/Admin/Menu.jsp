<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Menu</title>
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="../bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <link href="../css.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="container-fluid"> 
            <!--NAVBAR-->
            <nav class="navbar navbar-expand-lg navbar-dark fixed-top" role="navigation">
                <div class="container">
<!--                    <a class="navbar-brand" href="../index.jsp">Inicio</a>
                    <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                    </button>
                    <div class="collapse navbar-collapse" id="exCollapsingNavbar">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"><a href="../lista_cuentos.jsp" class="nav-link">Cuentos</a></li>
                            <li class="nav-item"><a href="#" class="nav-link">Acerca</a></li>

                        </ul>-->
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
            <br/>
            <br/>
            <br/>
            <div class="container-fluid" style="background-color:#004482;"> 
                </br>
                <h1 class="text-center text-light font-weight-bold">Menú Administrador</h1>
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link active font-weight-bold " id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true" style="color:#F7A52D;">Registrar</a>
                        <a class="nav-item nav-link dispose font-weight-bold" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false" style="color:#F7A52D;">Usuarios</a>
                    </div>
                </nav>
                <!--LO QUE VA DENTRO DE LOS TABS-->
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                        <h2 class="text-light">Nuevo</h2>
                        <div class="row">
                            <!--*********************PARTICIPANTE***************************************-->
                            <a href="#" data-toggle="modal" data-target="#form_participante">
                                <div class="card"  href="#" style="width: 10rem; margin: 10px;">
                                    <img src="../img/participante.png" class="card-img-top text-center" alt="...">
                                    <div class="card-body">
                                        <p class="card-text">Participante</p>
                                    </div>
                                </div>
                            </a>
                            <!--***************************REVISOR***************************************-->
                            <a href="#" data-toggle="modal" data-target="#form_revisor">
                                <div class="card" style="width: 10rem; margin: 10px;">
                                    <img src="../img/revisor.png" class="card-img-top">
                                    <div class="card-body">
                                        <p class="card-text text-center">Revisor</p>
                                    </div>
                                </div>
                            </a>
                            <!--****************************ADMINISTRADOR***********************************-->
                            <a href="#" data-toggle="modal" data-target="#form_admin">
                                <div class="card" style="width: 10rem;margin: 10px;">
                                    <img src="../img/admin.png" class="card-img-top text-center" alt="...">
                                    <div class="card-body">
                                        <p class="card-text">Administrador</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!--Pestaña de la Usuarios-->
                    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-2 bg-light">
                                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                        <a class="nav-link active font-weight-bold" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Participantes</a>
                                        <a class="nav-link font-weight-bold" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Revisores</a>
                                        <a class="nav-link font-weight-bold" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Administradores</a>
                                    </div>
                                </div>
                                <div class="col-10 bg-light">
                                    <div class="tab-content" id="v-pills-tabContent">
                                        <!--**************************Participantes*************************************-->
                                        <div class="tab-pane fade show active " id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                            </br>
                                            <div class="row justify-content-center">
                                                <div class="col-5">
                                                    <input id="txt_b_p" class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                                                </div>
                                                <div class="col-1">
                                                    <button id="buscar_p" class="btn btn-outline-success my-2 my-sm-0" type="button">Buscar</button>
                                                </div>
                                            </div>
                                            </br>
                                            <!--tabla PARTICIPANTE-->
                                            <table class="table table-striped">
                                                <thead class="table thead-dark">
                                                    <tr>
                                                        <th scope="col">Id</th>
                                                        <th scope="col">Nombre</th>
                                                        <th scope="col">Apellido</th>
                                                        <th scope="col">Email</th>
                                                        <th scope="col">Password</th>
                                                        <th scope="col">Biografía</th>
                                                        <th scope="col">Editar</th>
                                                        <th scope="col">Eliminar</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="body_p">
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                        <!--**************************Revisores*************************************-->
                                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                            </br>
                                            <div class="row justify-content-center">
                                                <div class="col-5">
                                                    <input id="txt_b_r" class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                                                </div>
                                                <div class="col-1">
                                                    <button id="buscar_r" class="btn btn-outline-success my-2 my-sm-0" type="button">Buscar</button>
                                                </div>
                                            </div>
                                            </br>
                                            <table class="table table-striped">
                                                <thead class="thead-dark">
                                                    <tr>
                                                        <th scope="col">Id</th>
                                                        <th scope="col">Email</th>
                                                        <th scope="col">Password</th>
                                                        <th scope="col">Nombre</th>
                                                        <th scope="col">Teléfono</th>
                                                        <th scope="col">Editar</th>
                                                        <th scope="col">Eliminar</th>
                                                    </tr>
                                                    </tr>
                                                </thead>
                                                <tbody id="body_r">
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                        <!--**************************Administradores*************************************-->
                                        <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                            </br>
                                            <div class="row justify-content-center">
                                                <div class="col-5">
                                                    <input id="txt_b_a" class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                                                </div>
                                                <div class="col-1">
                                                    <button id="buscar_a" class="btn btn-outline-success my-2 my-sm-0" type="button">Buscar</button>
                                                </div>
                                            </div>
                                            </br>
                                            <table class="table table-striped">
                                                <thead class="thead-dark">
                                                    <tr>
                                                        <th scope="col">Id</th>
                                                        <th scope="col">Email</th>
                                                        <th scope="col">Password</th>
                                                        <th scope="col">Nombre</th>
                                                        <th scope="col">Teléfono</th>
                                                        <th scope="col">Editar</th>
                                                        <th scope="col">Eliminar</th>
                                                    </tr>
                                                    </tr>
                                                </thead>
                                                <tbody id="body_a">
                                                 
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--****************************MODAL REGISTRO ADMINISTRADOR***********************************-->
        <div class="modal fade" id="form_admin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel" >Administrador</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="nombre_a">Nombre Completo</label>
                                <input type="text" class="form-control" id="nombre_a" name="nombre_a" placeholder="Nombre Completo" required>
                            </div>
                            <div class="form-group">
                                <label for="telefono_a">Teléfono</label>
                                <input type="tel" class="form-control" id="telefono_a" name="telefono_a" placeholder="Teléfono a 10 digítos" pattern="[0-9]{10}" required>
                            </div>
                            <div class="form-group">
                                <label for="email_a">Email</label>
                                <input type="email" class="form-control" id="email_a" placeholder="Email" name="email_a" required>
                            </div>
                            <div class="form-group">
                                <label for="password_a">Password</label>
                                <input type="password" class="form-control" id="password_a" placeholder="Password" name="password_a" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button id="insertar_a" type="button" class="btn btn-primary">Insertar</button>
                            <button id="editar_a" type="button" class="btn btn-primary">Editar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--****************************MODAL REGISTRO PARTICIPANTE***********************************-->
        <div class="modal fade" id="form_participante" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content ">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Participante</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="nombre_p">Nombre</label>
                                <input type="text" class="form-control" id="nombre_p" name="nombre_p" placeholder="Nombre" required>
                            </div>
                            <div class="form-group">
                                <label for="apellido_p">Apellido</label>
                                <input type="text" class="form-control" id="apellido_p" name="apellido_p" placeholder="Apellido" required>
                            </div>
                            <div class="form-group">
                                <label for="email_p">Email</label>
                                <input type="email" class="form-control" id="email_p" placeholder="Email" name="email_p" required>
                            </div>
                            <div class="form-group">
                                <label for="password_p">Password</label>
                                <input type="password" class="form-control" id="password_p" placeholder="Password" name="password_p" required>
                            </div>
<!--                            <div class="form-group">
                                <label for="foto">Fotografía</label>
                                <input type="file" class="form-control-file" id="foto" name="foto">
                            </div>-->
                            <div class="form-group">
                                <label for="bio" class="col-form-label">Biografía</label>
                                <textarea class="form-control" id="bio" name="bio" required></textarea>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button id="insertar_p" type="button" class="btn btn-primary">Insertar</button>
                            <button id="editar_p" type="button" class="btn btn-primary">Editar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--****************************MODAL REGISTRO REVISOR***********************************-->
        <div class="modal fade" id="form_revisor" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Revisor</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="nombre_r">Nombre Completo</label>
                                <input type="text" class="form-control" id="nombre_r" name="nombre_r" placeholder="Nombre Completo" required>
                            </div>
                            <div class="form-group">
                                <label for="telefono_r">Teléfono</label>
                                <input type="tel" class="form-control" id="telefono_r" name="telefono_r" placeholder="Teléfono a 10 digítos" pattern="[0-9]{10}" required>
                            </div>
                            <div class="form-group">
                                <label for="email_r">Email</label>
                                <input type="email" class="form-control" id="email_r" placeholder="Email" name="email_r" required>
                            </div>
                            <div class="form-group">
                                <label for="password_r">Password</label>
                                <input type="password" class="form-control" id="password_r" placeholder="Password" name="password_r" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button id="insertar_r" type="button" class="btn btn-primary">Insertar</button>
                            <button id="editar_r" type="button" class="btn btn-primary">Editar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="../bootstrap/js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
        <script src="../bootstrap/js/jquery-3.4.1.js" type="text/javascript"></script>
        <script src="../bootstrap/js/popper.min.js" type="text/javascript"></script>
        <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../js/insertar.js"></script>
        <script src="../js/lista.js"></script>
        <script src="../js/modal.js"></script>
        <script src="../js/editar.js"></script>
        <script src="../js/eliminar.js"></script>
    
    </body>
</html>
