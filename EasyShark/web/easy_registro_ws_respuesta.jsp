<%@page import="soporte.D"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getAttribute("msgTipo") == null) {
        return;
    }
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

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="hold-transition skin-yellow sidebar-mini">

        <div class="page-logo" style="text-align: center; background-color: #3B3F51">
            <a href="index.jsp">
                <img src="assets/layouts/layout4/img/logo4.png" alt="logo" class="logo-default" style="margin:0px;margin-top: 10px;height: 60px"/> </a>
            <div class="menu-toggler sidebar-toggler">
                <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
            </div>
        </div>

     
        <div class="row row-centered" style="padding-top: 10px;">
            <% if (request.getAttribute("msgTipo") == "1") { %>
            <div class="col-md-4">
            </div>
            <div class="col-md-4 col-xs-12" style="margin: 0 auto;">
                <div style="text-align: center;font-size: 20px;">
                    <p>El proceso de registro se ha completado.</p>
                    <p>Se ha enviado un link a su correo para el cambio de contraseña y activación de su cuenta.</p>
                    <input class="btn green pull-right" id="volverLogin" type="submit" value="volver a Login" onclick="location.href = 'login.jsp'"/>
                </div>

            </div>
            <div class="col-md-4">
            </div>
            <% } else if (request.getAttribute("msgTipo") == "2") { %>
            <div class="col-md-4">
            </div>
            <div class="col-md-4 col-xs-12" style="margin: 0 auto;">
                <div style="text-align: center;font-size: 20px;">
                    <p>Hubo un error al intentar registrar empresa.</p>
                    <p>Porfavor intente más tarde.</p>
                </div>
            </div>
            <div class="col-md-4">
            </div>
            <% } else if (request.getAttribute("msgTipo") == "3") {%>
            <div class="col-md-4">
            </div>
            <div class="col-md-4 col-xs-12" style="margin: 0 auto;">
                <div style="text-align: center;font-size: 20px;">
                    <p align="center">
                        OK
                    </p>
                    <p><a href="http://<%= D.DOMINIO%>">Click aquí para ir a inicio de sesión</a></p>
                </div>

            </div>
            <div class="col-md-4">
            </div>
            <% } else if (request.getAttribute("msgTipo") == "4") {%>
            <div class="col-md-4">
            </div>
            <div class="col-md-4 col-xs-12" style="margin: 0 auto;">
                <div style="text-align: center;font-size: 20px;">
                    <p>Hubo un error al intentar cambiar la contraseÃ±a.</p>
                    <p>Porfavor intente mÃ¡s tarde.</p>
                </div>
            </div>
            <div class="col-md-4">
            </div>
            <% }%>
        </div>

        <footer class="footer">
            <div class="">
                <p class="footer-company-name text-muted" style="margin-left: 60px;">
                    <b style="color: black; font-size: 15px;">Powered by CHDoccc</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="font-size: 15px;">Todos los derechos reservados &copy; 2016</span>
                </p>
            </div>
        </footer>


        <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
        <script src="js/number_format.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.cookie.js"></script>
        <script src="dist/js/app.min.js"></script>
        <script src="js/funciones.js"></script>
        <script src="js/registro_ws.js"></script>
    </body>
</html>