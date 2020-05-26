<%-- 
    Document   : lista_cuentos
    Created on : 23/05/2020, 12:35:32 PM
    Author     : Mauricio
--%>

<%@page import="Model.Beans.BeanCuento"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Persistencia.Cuento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <link href="css.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script async defer crossorigin="anonymous"
        src="https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v7.0&appId=1681831048607377&autoLogAppEvents=1"></script>
        <script src="js/voto.js" type="text/javascript"></script>
        <title>Cuentos</title>
    </head>
    <body>
        <h1 style="padding-top: 10vh;text-align: center">Lista de Cuentos</h1>
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
        <%
            Cuento c = new Cuento();
            ArrayList<BeanCuento> l = c.lista();
            System.out.println(l.size());
            for (int i = 0; i < l.size(); i=i+3) {
                if(l.size()-i>3){
                System.out.println(i);
        %>
        <div class="container" style="margin-top: 10px;">
            <div class="row">
                <div class="col-sm">
                    <div class="card">
                        <img class="card-img-top" src="<%= l.get(i).getLink_img()%>"
                             alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title"><%= l.get(i).getNombre_cuento()%></h4>
                            <p class="card-text">Genero: <%= l.get(i).getGenero_cuento()%></p>
                            <p class="card-text"><a href="/<%= l.get(i).getLink_cuento()%>"> Descargarlo aqui !!!</a></p>
                            <a onclick="like()" class="btn btn-primary">Votar</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="card">
                        <img class="card-img-top" src="<%= l.get(i + 1).getLink_img()%>"
                             alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title"><%= l.get(i + 1).getNombre_cuento()%></h4>
                            <p class="card-text">Genero: <%= l.get(i + 1).getGenero_cuento()%></p>
                            <p class="card-text"><a href="/<%= l.get(i + 1).getLink_cuento()%>"> Descargarlo aqui !!!</a></p>
                            <a onclick="like()" class="btn btn-primary">Votar</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="card">
                        <img class="card-img-top" src="<%= l.get(i + 2).getLink_img()%>"
                             alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title"><%= l.get(i + 2).getNombre_cuento()%></h4>
                            <p class="card-text">Genero: <%= l.get(i + 2).getGenero_cuento()%></p>
                            <p class="card-text"><a href="/<%= l.get(i + 2).getLink_cuento()%>"> Descargarlo aqui !!!</a></p>
                            <a onclick="like()" class="btn btn-primary">Votar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            } }
        %>
        <script src="bootstrap/js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/popper.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
