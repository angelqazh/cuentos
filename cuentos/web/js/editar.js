
$(document).ready(function () {
    $(document).on('click', '#editar_a', function () {

        var id = sessionStorage.getItem("id");
        var nombre = $('#nombre_a').val();
        var tel = $('#telefono_a').val();
        var email = $('#email_a').val();
        var pass = $('#password_a').val();

        if (nombre !== "" && tel !== "" && email !== "" && pass !== "") {

            $.ajax({
                type: "POST",
                url: "../ServletUpdate",
                data: {
                    id: id,
                    nombre_a: nombre,
                    telefono_a: tel,
                    email_a: email,
                    password_a: pass,
                    admin_e: ""
                },
                success: function (responseText) {
                    $('#body_a').html(responseText);
                    sessionStorage.removeItem("id");
                }
            }).fail(function() { alert("Error al actualizar"); })
              .always(function() { $('#form_admin').modal('hide');});

        } else {
            alert("Por favor llena todos los campos");
        }

    });

    $(document).on('click', '#editar_p', function () {
        
        var id = sessionStorage.getItem("id");
        var nombre = $('#nombre_p').val();
        var apellido = $('#apellido_p').val();
        var email = $('#email_p').val();
        var pass = $('#password_p').val();
        var foto = $('#foto').val();
        var bio = $('#bio').val();

        if (nombre !== "" && apellido !== "" && email !== "" && pass !== "" && bio !== "") {

            $.ajax({
                type: "POST",
                url: "../ServletUpdate",
                data: {
                    id: id,
                    nombre_p: nombre,
                    apellido_p: apellido,
                    email_p: email,
                    password_p: pass,
                    bio: bio,
                    participante_e: ""
                },
                success: function (responseText) {
                    $('#body_p').html(responseText);
                    sessionStorage.removeItem("id");
                }
            }).fail(function() { alert("Error al actualizar"); })
              .always(function() { $('#form_participante').modal('hide');});

        } else {
            alert("Por favor llena todos los campos");
        }
    });

    $(document).on('click', '#editar_r', function () {
        
        var id = sessionStorage.getItem("id");
        var nombre = $('#nombre_r').val();
        var tel = $('#telefono_r').val();
        var email = $('#email_r').val();
        var pass = $('#password_r').val();

        if (nombre !== "" && tel !== "" && email !== "" && pass !== "") {

            $.ajax({
                type: "POST",
                url: "../ServletUpdate",
                data: {
                    id: id,
                    nombre_r: nombre,
                    telefono_r: tel,
                    email_r: email,
                    password_r: pass,
                    revisor_e: ""
                },
                success: function (responseText) {
                    $('#body_r').html(responseText);
                    sessionStorage.removeItem("id");
                }
            }).fail(function() { alert("Error al actualizar"); })
              .always(function() { $('#form_revisor').modal('hide');});

        } else {
            alert("Por favor llena todos los campos");
        }
    });
});



