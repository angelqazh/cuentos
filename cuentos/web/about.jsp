<%-- 
    Document   : about
    Created on : 23-may-2020, 14:30:25
    Author     : Abraham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Inicio</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <link href="css.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                        <li class="nav-item order-2 order-md-1"><a href="#" class="nav-link" title="settings"><i class="fa fa-cog fa-fw fa-lg"></i></a></li>
                        <li class="dropdown order-1">
<!--                            <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn  btn-success dropdown-toggle">Login <span class="caret"></span></button>
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
                            </ul>-->
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <header>
            <h1>Concurso Nacional de Cuentos</h1>
        </header>
        <div class="separacion"></div>
        <div class="contenido-principal-about">
             <p> 
            <!--<p style = "font-family:Comic Sans MS, cursive, sans-serif">--> 
            <font size = "7">Condiciones de uso:</font><br>
            <font size = "4" >
            <font style="color: #82c3d1;">Condiciones de uso de los contenidos</font><br>
            

            Nuestras publicaciones son compartidas a todo publico que permite el uso de sus contenidos con fines no comerciales, exigiendo sólo la atribución al autor. Esto significa que todos nuestros contenidos, salvo algunas fotos y vídeos, pueden ser usados libremente. <br>
            Cualquiera puede copiarlos, reproducirlos, distribuirlos y modificarlos, las únicas condiciones que se imponen son:<br><br>

            • Que sea con un fin no comercial. Se considerara uso comercial su publicación en cualquier página que muestre publicidad o que sirva de soporte a otra actividad como la venta de bienes y servicios.<br><br>

            • Que se mantenga la atribución original a su autor mediante un enlace directo (sin “nofollow”) a la página individual del blog donde se publicó dicho contenido originalmente. Si se trata de un medio impreso basta con la mención del nombre del blog y la url general del mismo (aunque si se puede publicar la url de la noticia se agradece)<br><br>

            Una parte de lo que hacemos es seleccionar de manera cuidado el cuento que el auto nos comparte. <br>
            
            Una salvedad, algunas de las fotografías y vídeos que usamos no nos pertenecen, así que no tenemos la potestad de compartir la pagina por bien educativo y escolar el cual no genrara ganacias.<br>
            <br>
            Para mas informacion de la pagina.<br><br>
            
            Contactenos al correo: cuentos@example.com<br>
            </font>
             </p>
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


