<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
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
                    <a class="navbar-brand" href="../index.html">Inicio</a>
                    <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                    </button>
                    <div class="collapse navbar-collapse" id="exCollapsingNavbar">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"><a href="../index.html" class="nav-link">Cuentos</a></li>
                            <li class="nav-item"><a href="#" class="nav-link">Acerca</a></li>

                        </ul>
                        <ul class="nav navbar-nav flex-row justify-content-between ml-auto">
                            <li class="nav-item order-2 order-md-1"><a href="#" class="nav-link" title="settings"><i class="fa fa-cog fa-fw fa-lg"></i></a></li>
                            <li class="dropdown order-1">
                                <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn  btn-success dropdown-toggle">Login <span class="caret"></span></button>
                                <ul class="dropdown-menu dropdown-menu-right mt-2">
                                    <li class="px-3 py-2">
                                        <form class="form" role="form">
                                            <div class="form-group">
                                                <input id="emailInput" placeholder="Email" class="form-control form-control-sm" type="text" required="">
                                            </div>
                                            <div class="form-group">
                                                <input id="passwordInput" placeholder="Password" class="form-control form-control-sm" type="text" required="">
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-info btn-block">Login</button>
                                            </div>
                                            <div class="form-group text-center">
                                                <small><a href="#" data-toggle="modal" data-target="#modalPassword">Forgot password?</a></small>
                                            </div>
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!--FIN NAVBAR-->
            <!--LOGIN-->
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
                            <a href="#">
                                <div class="card"  href="#" style="width: 10rem; margin: 10px;">
                                    <img src="../img/participante.png" class="card-img-top text-center" alt="...">
                                    <div class="card-body">
                                        <p class="card-text">Participante</p>
                                    </div>
                                </div>
                            </a>
                            <!--***************************REVISOR***************************************-->
                            <a href="#">
                                <div class="card" style="width: 10rem; margin: 10px;">
                                    <img src="../img/revisor.png" class="card-img-top">
                                    <div class="card-body">
                                        <p class="card-text text-center">Revisor</p>
                                    </div>
                                </div>
                            </a>
                            <!--****************************ADMINISTRADOR***********************************-->
                            <a href="#">
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
                                        <a class="nav-link active font-weight-bold" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Perticipantes</a>
                                        <a class="nav-link font-weight-bold" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Revisores</a>
                                        <a class="nav-link font-weight-bold" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Administradores</a>
                                    </div>
                                </div>
                                <div class="col-10 bg-light">
                                    <div class="tab-content" id="v-pills-tabContent">
                                        <!--**************************Participantes*************************************-->
                                        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                            </br>
                                            <!--tabla PARTICIPANTE-->
                                            <table class="table table-striped">
                                                <thead class="thead-dark">
                                                    <tr>
                                                        <th scope="col">Id</th>
                                                        <th scope="col">Nombre</th>
                                                        <th scope="col">Apellido</th>
                                                        <th scope="col">Email</th>
                                                        <th scope="col">Biografía</th>
                                                        <th scope="col">Foto</th>
                                                        <th scope="col">Id_Admin</th>
                                                        <th scope="col">Editar</th>
                                                        <th scope="col">Eliminar</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Leonardo</td>
                                                        <td>Orozco</td>
                                                        <td>leo@gmail.com</td>
                                                        <td>...</td>
                                                        <td>leo.jpg</td>
                                                        <td>1000</td>
                                                        <td><button type="button" class="btn btn-outline-warning">Editar</button></td>
                                                        <td><button type="button" class="btn btn-outline-danger">Eliminar</button></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Angél</td>
                                                        <td>Saldaña</td>
                                                        <td>shabo@gmail.com</td>
                                                        <td>...</td>
                                                        <td>shabo.jpg</td>
                                                        <td>1000</td>
                                                        <td><button type="button" class="btn btn-outline-warning">Editar</button></td>
                                                        <td><button type="button" class="btn btn-outline-danger">Eliminar</button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!--**************************Revisores*************************************-->
                                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                            </br>
                                            <table class="table table-striped">
                                                <thead class="thead-dark">
                                                    <tr>
                                                        <th scope="col">Id</th>
                                                        <th scope="col">Email</th>
                                                        <th scope="col">Password</th>
                                                        <th scope="col">Nombre</th>
                                                        <th scope="col">Teléfono</th>
                                                        <th scope="col">Id_Admin</th>
                                                        <th scope="col">Editar</th>
                                                        <th scope="col">Eliminar</th>
                                                    </tr>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>leo@gmail.com</td>
                                                        <td>123</td>
                                                        <td>Leonardo Orozco Juárez</td>
                                                        <td>4771234567</td>
                                                        <td>1000</td>
                                                        <td><button type="button" class="btn btn-outline-warning">Editar</button></td>
                                                        <td><button type="button" class="btn btn-outline-danger">Eliminar</button></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>shabo@gmail.com</td>
                                                        <td>123</td>
                                                        <td>Angél Saldaña Navarro</td>
                                                        <td>4771234567</td>
                                                        <td>1000</td>
                                                        <td><button type="button" class="btn btn-outline-warning">Editar</button></td>
                                                        <td><button type="button" class="btn btn-outline-danger">Eliminar</button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!--**************************Administradores*************************************-->
                                        <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
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
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>leo@gmail.com</td>
                                                        <td>123</td>
                                                        <td>Leonardo Orozco Juárez</td>
                                                        <td>4771234567</td>
                                                        <td><button type="button" class="btn btn-outline-warning">Editar</button></td>
                                                        <td><button type="button" class="btn btn-outline-danger">Eliminar</button></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>shabo@gmail.com</td>
                                                        <td>123</td>
                                                        <td>Angél Saldaña Navarro</td>
                                                        <td>4771234567</td>
                                                        <td><button type="button" class="btn btn-outline-warning">Editar</button></td>
                                                        <td><button type="button" class="btn btn-outline-danger">Eliminar</button></td>
                                                    </tr>
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
        <script src="../bootstrap/js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
        <script src="../bootstrap/js/popper.min.js" type="text/javascript"></script>
        <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
