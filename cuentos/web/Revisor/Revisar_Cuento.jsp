<%-- 
    Document   : Revisar_Cuento
    Created on : 8 may 2020, 19:24:28
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="<%= request.getContextPath()%>/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="<%= request.getContextPath()%>/bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/css.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Revisar Cuento</title>
    </head>
    <body>
        <h1>Cuento</h1>     
        <input  type="hidden" id="idfile" value="<%= request.getAttribute("cuento") %>">
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" role="navigation">
            <div class="container">
                <a class="navbar-brand" href="<%= request.getContextPath()%>/index.jsp">Inicio</a>
                <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                </button>
                <div class="collapse navbar-collapse" id="exCollapsingNavbar">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a href="<%= request.getContextPath()%>/lista_cuentos.jsp" class="nav-link">Cuentos</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Acerca</a></li>

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
                                    <div style="position: absolute;right: 70px">
            <form action="<%= request.getContextPath()%>/ServletAprobar_Cuento" method="POST">
                <input type="submit" name="aprobar" value="aprobar">
                <input type="submit" name="aprobar" value="eliminar">
            </form>
        </div>
        <div style="text-align: center;">
            <button style="margin-top: 10vh" id="prev">Atras</button>
            <button id="next">Siguiente</button>
            <br><br>

            <span >
                Page: <span id="page_num"></span>
                / <span id="page_count"></span>

            </span>
        </div>

        <div style="width: 80%;margin-left: auto;margin-right: auto;">
            <canvas id="the-canvas"></canvas>   
        </div>
        <script src="<%= request.getContextPath()%>/js/pdf_lib.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/js/pdf.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/bootstrap/js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/bootstrap/js/popper.min.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
