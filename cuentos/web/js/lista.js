
$(document).ready(function () {
    $(document).on('click', '#v-pills-messages-tab', function () {

        $.ajax({
            type: "POST",
            url: "../ServletRead",
            data: {id: "lista_a"},
            success: function (responseText) {
                $('#body_a').html(responseText);
            }
        });

    });

    $(document).on('click', '#v-pills-home-tab', function () {

        $.ajax({
            type: "POST",
            url: "../ServletRead",
            data: {id: "lista_p"},
            success: function (responseText) {
                $('#body_p').html(responseText);
            }
        });

    });

    $(document).on('click', '#v-pills-profile-tab', function () {

        $.ajax({
            type: "POST",
            url: "../ServletRead",
            data: {id: "lista_r"},
            success: function (responseText) {
                $('#body_r').html(responseText);
            }
        });

    });
    //----------------------------lista filtrada-------------------------------------
    $(document).on('click', '#buscar_a', function () {

        if ($("#txt_b_a").val() !== "") {

            $.ajax({
                type: "POST",
                url: "../ServletRead",
                data: {id: "lista_a_filtrada", cadena: $("#txt_b_a").val()},
                success: function (responseText) {
                    $('#body_a').html(responseText);
                }
            });
        } else {
            alert("Ingrese por favor texto en el campo de búsqueda");
        }

    });

    $(document).on('click', '#buscar_p', function () {

        if ($("#txt_b_p").val() !== "") {
            $.ajax({
                type: "POST",
                url: "../ServletRead",
                data: {id: "lista_p_filtrada", cadena: $("#txt_b_p").val()},
                success: function (responseText) {
                    $('#body_p').html(responseText);
                }
            });
        } else {
            alert("Ingrese por favor texto en el campo de búsqueda");
        }

    });

    $(document).on('click', '#buscar_r', function () {

        if ($("#txt_b_r").val() !== "") {
            $.ajax({
                type: "POST",
                url: "../ServletRead",
                data: {id: "lista_r_filtrada", cadena: $("#txt_b_r").val()},
                success: function (responseText) {
                    $('#body_r').html(responseText);
                }
            });
        } else {
            alert("Ingrese por favor texto en el campo de búsqueda");
        }

    });

});






