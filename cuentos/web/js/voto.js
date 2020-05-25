
function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().

    console.log(response);                   // The current login status of the person.
    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
        sessionStorage.setItem("logged", response.status);
        FB.api('/me', function (response) {
            sessionStorage.setItem("name", response.name);
        });
        console.log("ID: " + response.authResponse.userID)

    } else {
        // Not logged into your webpage or we are unable to tell.
        alert("Error al iniciar sesión");

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
        oauth: true,
        version: '{7.0}'           // Use this Graph API version for this call.
    });


    FB.Event.subscribe('auth.logout', logout_event);

    FB.getLoginStatus(function (response) {   // Called after the JS SDK has been initialized.
        statusChangeCallback(response);        // Returns the login status.
    });

};

var logout_event = function (response) {
    console.log("logout------------------------------------------------------");
    sessionStorage.removeItem("logged");
    sessionStorage.removeItem("name");
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



function like() {

    if (sessionStorage.getItem("logged") !== null) {

        alert("Gracias por tu voto " + sessionStorage.getItem("name"));
    } else {

        alert("Debes iniciar sesión para poder votar los cuentos");

    }

}



