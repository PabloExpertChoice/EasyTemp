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

function login() {
    $('#msgLogin').html('');
    var usuario = $('#username').val();
    var password = $('#password').val();

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
                    'txtUser': usuario,
                    'txtPass': password
                },
                beforeSend: function (xhr) {
                    $('#btnEntrar').html('Validando... <i class="fa fa-spinner fa-spin"></i>');
                },
                success: function (data, textStatus, jqXHR) {
                    $('#btnEntrar').html(html);
                    $('#btnEntrar').prop('disabled', false);
                    try {
                        if ($('#chboxRecordarme').is(':checked')) {
                            var username = $('#username').val();
                            var password = $('#password').val();
                            $.cookie('username_mvec', username, {expires: 14});
                            $.cookie('password_mvec', password, {expires: 14});
                            $.cookie('remember_mvec', true, {expires: 14});
                        } else {
                            $.cookie('username_mvec', null);
                            $.cookie('password_mvec', null);
                            $.cookie('remember_mvec', null);
                        }
                    } catch (ex) {
                        console.log(ex);
                    }

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