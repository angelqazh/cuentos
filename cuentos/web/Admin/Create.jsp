<%-- 
    Document   : Create
    Created on : 8 may 2020, 19:22:39
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
        <title>Agregar</title>
    </head>
    <body>

        <script>

            function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
                console.log('statusChangeCallback');
                console.log(response);                   // The current login status of the person.
                if (response.status === 'connected') {   // Logged into your webpage and Facebook.
                    testAPI();
                    console.log("ID: " + response.authResponse.userID)
                } else {                                 // Not logged into your webpage or we are unable to tell.
                    document.getElementById('status').innerHTML = 'Please log ' +
                            'into this webpage.';
                    alert("Debes loguearte man :v");
                    
                }
            }


            function checkLoginState() {               // Called when a person is finished with the Login Button.
                FB.getLoginStatus(function (response) {   // See the onlogin handler
                    statusChangeCallback(response);
                });
            }


            window.fbAsyncInit = function () {
                FB.init({
                    appId: '{1681831048607377}',
                    cookie: true, // Enable cookies to allow the server to access the session.
                    xfbml: true, // Parse social plugins on this webpage.
                    version: '{7.0}'           // Use this Graph API version for this call.
                });


                FB.getLoginStatus(function (response) {   // Called after the JS SDK has been initialized.
                    statusChangeCallback(response);        // Returns the login status.
                });
            };


            (function (d, s, id) {                      // Load the SDK asynchronously
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "https://connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));


            function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
                console.log('Welcome!  Fetching your information.... ');
                FB.api('/me', function (response) {
                    console.log('Successful login for: ' + response.name);
                    document.getElementById('status').innerHTML =
                            'Thanks for logging in, ' + response.name + '!';
                });
            }
            
            function like(){
                FB.getLoginStatus(function (response) {   // See the onlogin handler
                    if (response.status === 'connected') {
                        alert("Tu like será almacenado "+response.authResponse.userID);
                        FB.logout();
                    }else{
                        alert("Debes loguearte man :v");
                        document.getElementById("like").disabled;
                    }
                });
            }


        </script>

        <div id="status"></div>
        <script async defer crossorigin="anonymous"
        src="https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v7.0&appId=1681831048607377&autoLogAppEvents=1"></script>
        
        <div scope="public_profile,email" onlogin="checkLoginState();" class="fb-login-button" data-size="large" data-button-type="continue_with" data-layout="rounded"
             data-auto-logout-link="true" data-use-continue-as="true" data-width=""></div>

        <div class="fb-like" id="like"  data-href="#" data-width="" data-layout="box_count" data-action="like" data-size="large" data-share="true"></div>

        <button onclick="like()">hola</button>

        <!--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#form_admin" data-whatever="@mdo">Open modal for @mdo</button>-->


        <div class="modal fade" id="form_admin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Agregar Administrador</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form method="post" action="#">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="nombre">Nombre Completo</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre Completo" required>
                            </div>
                            <div class="form-group">
                                <label for="telefono">Teléfono</label>
                                <input type="tel" class="form-control" id="telefono" name="telefono" placeholder="Teléfono a 10 digítos" pattern="[0-9]{10}" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-primary">Enviar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="../bootstrap/js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
        <script src="../bootstrap/js/popper.min.js" type="text/javascript"></script>
        <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
