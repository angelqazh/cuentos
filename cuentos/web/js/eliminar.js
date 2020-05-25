
$(document).ready(function () {
    $(document).on('click', '.delete_a', function () {

        var id = $(this).val();

        $.ajax({
            type: "POST",
            url: "../ServletDelete",
            data: {
                id: id,
                admin_b: ""
            },
            success: function (responseText) {
                $('#body_a').html(responseText);
            }
        }).fail(function () {
            alert("Error al eliminar");
        });

    });

    $(document).on('click', '.delete_p', function () {

        var id = $(this).val();

        $.ajax({
            type: "POST",
            url: "../ServletDelete",
            data: {
                id: id,
                participante_b: ""
            },
            success: function (responseText) {
                $('#body_p').html(responseText);
            }
        }).fail(function () {
            alert("Error al eliminar");
        });
        
    });

    $(document).on('click', '.delete_r', function () {
        var id = $(this).val();

        $.ajax({
            type: "POST",
            url: "../ServletDelete",
            data: {
                id: id,
                revisor_b: ""
            },
            success: function (responseText) {
                $('#body_r').html(responseText);
            }
        }).fail(function () {
            alert("Error al eliminar");
        });
        
        
    });
});



