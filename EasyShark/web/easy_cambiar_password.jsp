<%@page import="cl.expertchoice.clases.Usuario"%>
<%@page import="soporte.Encriptar"%>
<%@page import="soporte.D"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getAttribute("usuario") == null) {
        response.sendRedirect("cmd");
        return;
    }

    Usuario usu = (Usuario) request.getAttribute("usuario");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="shortcut icon" href="images/toro-ico.ico">
        <title><%= D.TITULO%></title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="plugins/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
        <link rel="stylesheet" href="plugins/morris/morris.css">
        <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
        <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
        <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <link rel='stylesheet' type="text/css" href="css/awesome-bootstrap-checkbox.css"/>


        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <style>
            html {
                position: relative;
                min-height: 100%;
            }
            body {
                /* Margin bottom by footer height */
                margin-bottom: 60px;
            }
            .footer {
                position: absolute;
                bottom: 0;
                width: 100%;
                height: 30px;
                background-color: #f5f5f5;
            }

            /* centered columns styles */
            .row-centered {
                text-align:center;
            }
            .col-centered {
                display:inline-block;
                float:none;
                /* reset the text-align */
                text-align:left;
                /* inline-block space fix */
                margin-right:-4px;
            }

        </style>

    </head>
    <body class="hold-transition skin-yellow sidebar-mini">
        <div class="page-logo" style="text-align: center; background-color: #3B3F51">
            <a href="index.jsp">
                <img src="assets/layouts/layout4/img/logo4.png" alt="logo" class="logo-default" style="margin:0px;margin-top: 10px;height: 60px"/> </a>
            <div class="menu-toggler sidebar-toggler">
                <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
            </div>
        </div>
        <div class="row row-centered" style="padding: 10px;">
            <div class="col-md-3 col-xs-12 col-centered" style="margin: 0 auto;">
                <form role="form" action="javascript:;">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-10 col-xs-10">
                                <label for="txtPassword1">Ingrese contraseña nueva</label>
                                <br>
                                <input type="password" class="form-control" id="txtPassword1" >
                            </div>
                            <div class="form-group">
                                <label for="txtPassword2">Repita contraseña</label>
                                <br>
                                <input type="password" class="form-control" id="txtPassword2" >
                            </div>
                            <button type="submit" class="btn btn-primary" id="btnEnviar" name="btnEnviar">Actualizar</button>
                        </div>
                    </div>
                </form>
            </div>

            <footer class="footer">
                <div class="modal" id="modalError">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p id="msgError" style="font-size: 15px;"></p>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
                <div class="">
                    <p class="footer-company-name text-muted" style="margin-left: 60px;">
                        <b style="color: black; font-size: 15px;">Powered by CHDoccc</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span style="font-size: 15px;">Todos los derechos reservados &copy; 2016</span>
                    </p>

                </div>
            </footer>


            <script src="js/jquery-2.1.3.min.js"></script>
            <script src="js/number_format.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="dist/js/app.min.js"></script>
            <script src="js/funciones.js"></script>
            <script src="js/registro_ws.js"></script>
            <script>
                $('#btnEnviar').click(function () {
                    var txtPassword1 = $('#txtPassword1').val().trim();
                    var txtPassword2 = $('#txtPassword2').val().trim();

                    if (txtPassword1.length == 0 || txtPassword2.length == 0) {
                        $('#modalError').modal({backdrop: 'static'});
                        $('#msgError').html('Debe ingresar contraseñas');
                    } else if (txtPassword1 != txtPassword2) {
                        $('#modalError').modal({backdrop: 'static'});
                        $('#msgError').html('Las contraseñas no coinciden');
                    } else {
                        $.ajax({
                            url: 'Svl_Password',
                            type: 'POST',
                            dataType: 'json',
                            data: {
                                code: 'cambiar-password',
                                idUsuario: '<%= usu.getId()%>',
                                password: txtPassword1
                            }, beforeSend: function (xhr) {
                                $('#btnEnviar').prop('disabled', true);
                                $('#btnEnviar').html('actualizando... <i class="fa fa-spinner fa-spin"></i>');
                            }, success: function (data, textStatus, jqXHR) {
                                $('#btnEnviar').prop('disabled', false);
                                $('#btnEnviar').html('Actualizar');
                                if (data.estado == 200) {
                                    go('Svl_Usuarios', [{id: 'accion', val: 'respuesta-cambio-password'}, {id: 'msgTipo', val: '3'}], undefined, 'Svl_Usuarios');
                                } else {
                                    go('Svl_Usuarios', [{id: 'accion', val: 'respuesta-cambio-password-error'}, {id: 'msgTipo', val: '4'}], undefined, 'Svl_Usuarios');
                                }
                            }
                        });
                    }
                });
            </script>
    </body>
</html>
