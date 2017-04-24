var logeando = false;
$(function () {
    var remember = $.cookie('remember_mvec');
    if (remember == 'true') {
        var username = $.cookie('username_mvec');
        var password = $.cookie('password_mvec');
        $('#username').val(username);
        $('#password').val(password);
        $('#chboxRecordarme').prop('checked', true);
    }
});

//esta funcion comprueba que los campos posean datos y se le envian al servlet svl_login
function login() {
    $('#msgLogin').html('');
    var username = $('#username').val();
    var password = $('#password').val();
    console.log(username,password);

    if (usuario.trim().length > 0 && password.trim().length > 0) {
        if (!logeando) {
            logeando = true;
            var html = $('#btnEntrar').html();
            $('#btnEntrar').prop('disabled', true);
            $.ajax({
                url: 'slv_login',
                dataType: 'json',
                type: 'POST',
                data: {
                    code: 'login',
                    'username': username,
                    'password': password
                },
                beforeSend: function (xhr) {
                    $('#btnEntrar').html('Validando... <i class="fa fa-spinner fa-spin"></i>');
                },
                success: function (data, textStatus, jqXHR) {
                    $('#btnEntrar').html(html);
                    $('#btnEntrar').prop('disabled', false);
                    
                    if (data['estado'] == 200) {
                        location.href = 'cmd';
                    } else {
                        logeando = false;
                        $('#msgLogin').html('!Error de usuario o contraseña¡ <br />');
                    }
                }
            });
        }
    } else {
        $('#username').focus();
    }

    return false;
}