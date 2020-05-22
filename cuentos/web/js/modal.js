
$(document).ready(function () {
    $(document).on('click', '.edit_a', function () {
        var id = $(this).val();
        var nombre = $('#nombre_a_' + id).text();
        var tel = $('#telefono_a_' + id).text();
        var email = $('#email_a_' + id).text();
        var pass = $('#password_a_' + id).text();


        $('#form_admin').modal('show');
        $('#nombre_a').val(nombre);
        $('#telefono_a').val(tel);
        $('#email_a').val(email);
        $('#password_a').val(pass);

    });

    $(document).on('click', '.edit_p', function () {
        var id = $(this).val();
        var nombre = $('#nombre_p_' + id).text();
        var apellido = $('#apellido_p_' + id).text();
        var email = $('#email_p_' + id).text();
        var pass = $('#password_p_' + id).text();
        var foto = $('#foto_' + id).text();
        var bio = $('#bio_' + id).text();

        $('#form_participante').modal('show');
        $('#nombre_p').val(nombre);
        $('#apellido_p').val(apellido);
        $('#email_p').val(email);
        $('#password_p').val(pass);
        $('#foto').val(foto);
        $('#bio').val(bio);
    });

    $(document).on('click', '.edit_r', function () {
        var id = $(this).val();
        var nombre = $('#nombre_r_' + id).text();
        var tel = $('#telefono_r_' + id).text();
        var email = $('#email_r_' + id).text();
        var pass = $('#password_r_' + id).text();

        $('#form_revisor').modal('show');
        $('#nombre_r').val(nombre);
        $('#telefono_r').val(tel);
        $('#email_r').val(email);
        $('#password_r').val(pass);
    });
});

