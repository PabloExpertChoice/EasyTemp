<%-- 
    Document   : 
    Created on : 
    Author     : ignacio naranjo
--%>
<%@page import="cl.expertchoice.metodo.Metodos"%>
<%@page import="org.json.JSONObject"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="cl.expertchoice.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario user = (Usuario) session.getAttribute("sesion");
    if (user == null) {
        response.sendRedirect("cmd");
        return;
    }

    JSONObject datos = (JSONObject) request.getAttribute("datos");
%>
<!DOCTYPE html>
<html>
    <head>
        <!--script src="assets/js/jquery-1.10.2.min.js"></script-->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <script src="assets/js/jquery-ui/js/jquery-ui-1.10.1.custom.min.js"></script>
        <script src="assets/js/twitter-bootstrap/bootstrap.js"></script>
        <script src="assets/js/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <script type="text/javascript" src="assets/js/jquery-cookie/jquery.cookie.js"></script>
        <script type="text/javascript" src="assets/js/jquery-simplecolorpicker/jquery.simplecolorpicker.js"></script>
        <script type="text/javascript" src="assets/js/jquery.ui.chatbox/jquery.ui.chatbox.js"></script>
        <script src="assets/js/printform.js"></script>
        <script src="assets/js/number_format.js"></script>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Page title -->
        <title>Informe Comercial</title>
        <link rel="icon" href="images/favicon.png"><!--asigna el icono al tab del navegador-->

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <!--<link rel="shortcut icon" type="image/ico" href="favicon.ico" />-->

        <!-- Vendor styles -->
        <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.css" />
        <link rel="stylesheet" href="vendor/metisMenu/dist/metisMenu.css" />
        <link rel="stylesheet" href="vendor/animate.css/animate.css" />
        <link rel="stylesheet" href="vendor/bootstrap/dist/css/bootstrap.css" />

        <!-- App styles -->
        <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css" />
        <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/helper.css" />
        <link rel="stylesheet" href="styles/style.css">
        <script src="vendor/jquery/dist/jquery.min.js"></script>
        <script src="js/funciones.js"></script>

        <!-- //// LIBRERIAS PARA GRAFICAS -->
        <script src="assets/highcharts/highcharts.js"></script>
        <script src="assets/highcharts/highcharts-more.js"></script>
        <script src="assets/highcharts/modules/exporting.js"></script>

        <!--exportar imagen-->
        <script src="assets/highcharts/modules/offline-exporting.js"></script>


    </head>
    <body class="fixed-navbar fixed-sidebar">

        <!-- Simple splash screen-->
        <div class="splash" style="display: none;"> <div class="color-line"></div><div class="splash-title"><h1>Homer - Responsive Admin Theme</h1><p>Special Admin Theme for small and medium webapp with very clean and aesthetic style and feel. </p><div class="spinner"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div> </div> </div>
        <!--[if lt IE 7]>
        <p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <jsp:include page="seccion_pagina/menubar.jsp"></jsp:include>
        <jsp:include page="seccion_pagina/menu.jsp"></jsp:include>

            <!-- Main Wrapper -->
            <div id="wrapper">            
                <div class="normalheader transition animated fadeIn">
                    <div class="hpanel">
                        <div class="panel-body">
                            <a class="small-header-action" href="">
                                <div class="clip-header">
                                    <i class="fa fa-arrow-up"></i>
                                </div>
                            </a>

                            <div id="hbreadcrumb" class="pull-right m-t-lg">
                                <ol class="hbreadcrumb breadcrumb">
                                    <li><a href="index.jsp">Inicio</a></li>
                                    <li class="active">
                                        <span>Informaci&#243;n de Bureau</span>
                                    </li>
                                </ol>
                            </div>
                            <h2 class="font-light m-b-xs">
                                Informaci&#243;n de Bureau
                            </h2>
                            <small>
                                <div>
                                    Rut: <%= datos.get("rut").toString() + "-" + datos.get("dv").toString()%>
                            </div>
                            <div>
                                Nombre: <%= datos.get("nombre").toString()%>
                            </div>
                            <button onclick="generarPdf()" class="btn btn-primary">Exportar</button>
                        </small>
                    </div>
                </div>
            </div>
            <div class="content animate-panel">
                <div class="row">
                    <!--Cuerpo de la pagina-->
                    <div style="" class="col-lg-12">
                        <div class="hpanel">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1"><i class="fa fa-laptop"></i> Vista resumen</a></li>
                                <li class=""><a data-toggle="tab" href="#tab-2"><i class="fa fa-desktop"></i> Antecedentes particulares</a></li>
                                <li class=""><a data-toggle="tab" href="#tab-3"><i class="fa fa-database"></i> Antecedentes financieros</a></li>
                                <li class=""><a data-toggle="tab" href="#tab-4"><i class="fa fa-database"></i> Consultas al RUT</a></li>
                            </ul>
                            <!--Contenido de los tab -->
                            <div class="tab-content">
                                <!-- Tab antecedentes generales-->
                                <div id="tab-1" class="tab-pane active">
                                    <div class="panel-body">
                                        <div class="col-lg-8">
                                            <table cellpadding="1" cellspacing="1" class="table">
                                                <tr>
                                                    <th>Score</th>
                                                    <td><%= datos.get("score")%></td>
                                                <tr>
                                                <tr>
                                                    <th></th>
                                                        <%
                                                            String clasificacion = Metodos.ObtenerClasificacion(datos.get("score").toString());
                                                            out.write("<td>" + clasificacion + "</td>");
                                                        %>
                                                <tr>
                                                </tr>
                                                <tr>
                                                    <th>Disoluci&oacute;n Vigente</th>
                                                    <td>
                                                        <%= datos.get("disolucion_vigente").toString()%>
                                                    </td>
                                                    <th>Fecha disoluci&oacute;n</th>
                                                    <td>
                                                        <%= datos.get("fecha_disolucion").toString()%>
                                                    </td>
                                                </tr>
                                                <!--                                            <tr>
                                                                                                <th>Acreditaciones</th>
                                                                                                <td>--</td>
                                                                                            </tr>-->
                                                <tr>
                                                    <th>Consultas al RUT (&uacute;lt. 6 meses)</th>
                                                    <td><%= datos.get("num_consultas6Meses").toString()%></td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="col-lg-4" id="indicador_rating" style="min-width: 210px; max-width: 300px; height: 200px;"></div>
                                        <br>
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <thead>
                                                <tr>
                                                    <th>Producto</th>
                                                    <th>Total Documentos</th>
                                                    <th>Acreedores</th>
                                                    <th>Fecha M&aacute;s Reciente</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>Anotaciones vigentes</th>
                                                    <td><%= datos.get("anota_vigentes_nro_documentos").toString()%></td>
                                                    <td><%= datos.get("anotacion_vigente/nro_acreedores").toString()%></td>
                                                    <td><%= datos.get("anota_vigentes_fecha_mas_reciente").toString()%></td>
                                                </tr>
                                                <tr>
                                                    <th>Bolet&iacute;n Impagos Laboral y Previsional</th>
                                                    <td><%= datos.get("boletin_laboral/nro_documentos").toString()%></td>
                                                    <td><%= datos.get("boletin_laboral/nro_acreedores").toString()%></td>
                                                    <td><%= datos.get("boletin_laboral/fecha_mas_reciente").toString()%></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                        <label class="header">Antecedentes Protestos y Morosidades (Informaci&oacute;n para Evaluaci&oacute;n)</label>
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <thead>
                                                <tr>
                                                    <th>Producto</th>
                                                    <th>Total Documentos</th>
                                                    <th>Acreedores</th>
                                                    <th>Fecha M&aacute;s Reciente</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>Protestos vigentes</th>
                                                    <td><%= datos.get("protestos_vigentes/nro_documentos").toString()%></td>
                                                    <td><%= datos.get("protestos_vigentes/nro_acreedores").toString()%></td>
                                                    <td><%= datos.get("protestos_vigentes/fecha_mas_reciente").toString()%></td>
                                                </tr>
                                                <tr>
                                                    <th>Morosidad Consolidada</i></th>
                                                    <td><%= datos.get("morosidad_consolidada/nro_documentos").toString()%></td>
                                                    <td><%= datos.get("morosidad_consolidada/nro_acreedores").toString()%></td>
                                                    <td><%= datos.get("morosidad_consolidada/fecha_mas_reciente").toString()%></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <thead>
                                                <tr>
                                                    <th>Distribuci&oacute;n de Impagos</th>
                                                    <th>Documentos Per&iacute;odo</th>
                                                    <th>Montos Per&iacute;odo M$</th>
                                                    <th>Documentos Acumulados</th>
                                                    <th>Montos Acumulados M$</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>&Uacute;ltimos 6 meses</th>
                                                    <td><%= datos.get("ultimos_6_meses/periodo_documentos").toString()%></td>
                                                    <td><%= datos.get("ultimos_6_meses/periodo_montos").toString()%></td>
                                                    <td><%= datos.get("ultimos_6_meses/acumulado_documentos").toString()%></td>
                                                    <td><%= datos.get("ultimos_6_meses/acumulado_montos").toString()%></td>
                                                </tr>
                                                <tr>
                                                    <th>6 a 12 meses</th>
                                                    <td><%= datos.get("mes_6_a_12/periodo_documentos").toString()%></td>
                                                    <td><%= datos.get("mes_6_a_12/periodo_montos").toString()%></td>
                                                    <td><%= datos.get("mes_6_a_12/acumulado_documentos").toString()%></td>
                                                    <td><%= datos.get("mes_6_a_12/acumulado_montos").toString()%></td>
                                                </tr>
                                                <tr>
                                                    <th>12 a 24 meses<i class="icon-ok" style="color: #3C0; float:right"></i></th>
                                                    <td><%= datos.get("mes_12_a_24/periodo_documentos").toString()%></td>
                                                    <td><%= datos.get("mes_12_a_24/periodo_montos").toString()%></td>
                                                    <td><%= datos.get("mes_12_a_24/acumulado_documentos").toString()%></td>
                                                    <td><%= datos.get("mes_12_a_24/acumulado_montos").toString()%></td>
                                                </tr>
                                                <tr>
                                                    <th>M&aacute;s de 24 meses</th>
                                                    <td><%= datos.get("mas_de_24/periodo_documentos").toString()%></td>
                                                    <td><%= datos.get("mas_de_24/periodo_montos").toString()%></td>
                                                    <td><%= datos.get("mas_de_24/acumulado_documentos").toString()%></td>
                                                    <td><%= datos.get("mas_de_24/acumulado_montos").toString()%></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <!-- inicio de tab 2 -->
                                <!-- Tab antecedentes particulares -->
                                <div id="tab-2" class="tab-pane">
                                    <div class="panel-body">
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <tr>
                                                <th>Nombre</th>
                                                <td><%= datos.get("nombre").toString()%>  </td>
                                                <th>Actividad</td>
                                                <td><%= datos.get("actividad").toString()%>  </td>
                                            </tr>
                                            <tr>
                                                <th>Nombre de fantas&iacute;a</th>
                                                <td><%= datos.get("nombre_fantasia").toString()%>  </td>
                                                <th>Fecha Constituci&oacute;n</th>
                                                <td><%= datos.get("fecha_constitucion").toString()%>  </td>
                                            </tr>
                                            <tr>
                                                <!--                                                <th>Registro comercio</th>
                                                                                                <td>--</td>-->
                                                <th>Fojas</th>
                                                <td><%= datos.get("fojas").toString()%> </td>
                                                <th>N&uacute;mero</th>
                                                <td><%= datos.get("numero").toString()%> </td>
                                            </tr>
                                            <tr>
                                                <th>A&ntilde;o</th>
                                                <td><%= datos.get("ano").toString()%></td>
                                                <th>C&oacute;digo Postal</th>
                                                <td><%= datos.get("codigo_postal").toString()%></td>
                                            </tr>
                                            <tr>
                                                <th>Disoluci&oacute;n vigente</th>
                                                <td><%= datos.get("disolucion_vigente").toString()%></td>
                                                <th>Fecha disoluci&oacute;n</th>
                                                <td><%= datos.get("fecha_disolucion").toString()%></td>
                                            </tr>
                                            <tr>
                                                <th>Rubro</th>
                                                <td><%= datos.get("rubro").toString()%></td>

                                            </tr>
                                            <tr>
                                                <th>Direcci&oacute;n</th>
                                                <td><%= datos.get("direccion").toString()%></td>
                                                <th>N&uacute;m Direcciones Informadas</th>
                                                <td><%= datos.get("nro_direcciones_informadas").toString()%></td>
                                            </tr>
                                            <tr>
                                                <th>C&oacute;digo de &Aacute;rea</th>
                                                <td><%= datos.get("cod_area").toString()%></td>
                                                <th>Tel&eacute;fono</th>
                                                <td><%= datos.get("telefono").toString()%></td>
                                            </tr>
                                            <tr>
                                                <th>C&oacute;digo de &Aacute;rea 2</th>
                                                <td><%= datos.get("cod_area_2").toString()%></td>
                                                <th>Tel&eacute;fono 2</th>
                                                <td><%= datos.get("telefono_2").toString()%></td>
                                            </tr>
                                            <tr>
                                                <th>e-mail</th>
                                                <td><%= datos.get("email").toString()%></td>
                                            </tr>
                                        </table>
                                        <br> <label class="header">Detalle de contactos de la empresa</label>
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <thead>
                                                <tr>
                                                    <th>RUT</th>
                                                    <th>Nombre o Raz&oacute;n Social</th>
                                                    <th>Cargo</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    //se valida que el arraylist contenga infotmacion
                                                    int largo1 = datos.getJSONArray("dct_detalle_contactos_empresa").length();
                                                    if (largo1 == 0) {
                                                        out.write("<tr>");
                                                        out.write("<td> No se registra informaci&oacute;n</td>");
                                                        out.write("</tr>");
                                                    } else {
                                                        for (int i = 0; i < largo1; i++) {
                                                            JSONObject contacto = datos.getJSONArray("dct_detalle_contactos_empresa").getJSONObject(i);
                                                            out.write("<tr>");
                                                            out.write("<td>" + contacto.get("rut") + "</td>");
                                                            out.write("<td>" + contacto.get("nombre_razon") + "</td>");
                                                            out.write("<td>" + contacto.get("cargo") + "</td>");
                                                            out.write("</tr>");

                                                        }
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <!-- inicio de tab 3 -->
                                <!-- Tab antecedentes financieros -->
                                <div id="tab-3" class="tab-pane">
                                    <div class="panel-body">
                                        <label class="header">Acreditaciones</label>
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <tr>
                                                <th>Movimientos en bancos</th>
                                                <td><%= datos.get("movimientos_de_bancos").toString()%></td>
                                                <td>Esto no significa que la cuenta corriente est&eacute; vigente</td>
                                            </tr>
                                            <tr>
                                                <th>N&uacute;mero de veh&iacute;culos</th>
                                                <td><%= datos.get("numero_vehiculos").toString()%></td>
                                                <th>&Uacute;ltima verificaci&oacute;n de domicilio</th>
                                                <td><%= datos.get("ultima_verificacion_de_domicilio").toString()%></td>
                                            </tr>
                                            <tr>
                                                <th>Publicaciones como sociedad</th>
                                                <td><%= datos.get("publicaciones_como_sociedad").toString()%></td>
                                                <th>Publicaciones como socio</th>
                                                <td><%= datos.get("publicaciones_como_socio").toString()%></td>
                                            </tr>
                                            <tr>
                                                <th>Comercio exterior: importaciones al a&ntilde;o</th>
                                                <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/operaciones").toString()%></td>
                                                <th>Comercio exterior: exportaciones al a&ntilde;o</th>
                                                <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/operaciones").toString()%></td>
                                            </tr>
                                            <tr>
                                                <th>Comercio exterior: importaciones CIF US$</th>
                                                <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/us").toString()%></td>
                                                <th>Comercio exterior: exportaciones FOB US$</th>
                                                <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/us").toString()%></td>
                                            </tr>
                                            <tr>
                                                <th>Bienes ra&iacute;ces: num propiedades</th>
                                                <td><%= datos.get("bienes_raices_nro_propiedades").toString()%></td>
                                                <th>Bienes ra&iacute;ces: aval&uacute;o fiscal total</th>
                                                <td><%= datos.get("bienes_raices_avaluo_fiscal_total").toString()%></td>
                                            </tr>
                                            <tr>
                                                <th>Prendas: n&uacute;mero</th>
                                                <td><%= datos.get("prendas_nro_prendas").toString()%></td>
                                                <th>Prendas: fecha m&aacute;s reciente</th>
                                                <td><%= datos.get("prendas_fecha_mas_reciente").toString()%></td>
                                            </tr>
                                            <tr>
                                                <th>Prendas: num acreedores</th>
                                                <td><%= datos.get("prendas_nro_acreedores").toString()%></td>
                                            </tr>
                                        </table>
                                        <br> <label class="">Detalle de comercio exterior</label> <br>
                                        <b>Per&iacute;odo actual</b>
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <thead>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <th>US$</th>
                                                    <th># Ops</th>
                                                    <th>Ene</th>
                                                    <th>Feb</th>
                                                    <th>Mar</th>
                                                    <th>Abr</th>
                                                    <th>May</th>
                                                    <th>Jun</th>
                                                    <th>Jul</th>
                                                    <th>Ago</th>
                                                    <th>Sep</th>
                                                    <th>Oct</th>
                                                    <th>Nov</th>
                                                    <th>Dic</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>Import</th>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/us").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/operaciones").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/ENE").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/FEB").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/MAR").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/ABR").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/MAY").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/JUN").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/JUL").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/AGO").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/SEP").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/OCT").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/NOV").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_importaciones/DIC").toString()%></td>
                                                </tr>
                                                <tr>
                                                    <th>Export</th>

                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/us").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/operaciones").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/ENE").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/FEB").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/MAR").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/ABR").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/MAY").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/JUN").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/JUL").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/AGO").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/SEP").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/OCT").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/NOV").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_actual/cmx_detalle_exportaciones/DIC").toString()%></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                        <b>Per&iacute;odo anterior</b>
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <thead>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <th>US$</th>
                                                    <th># Ops</th>
                                                    <th>Ene</th>
                                                    <th>Feb</th>
                                                    <th>Mar</th>
                                                    <th>Abr</th>
                                                    <th>May</th>
                                                    <th>Jun</th>
                                                    <th>Jul</th>
                                                    <th>Ago</th>
                                                    <th>Sep</th>
                                                    <th>Oct</th>
                                                    <th>Nov</th>
                                                    <th>Dic</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>Import</th>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/us").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/operaciones").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/ENE").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/FEB").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/MAR").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/ABR").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/MAY").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/JUN").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/JUL").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/AGO").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/SEP").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/OCT").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/NOV").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_importaciones/DIC").toString()%></td>
                                                </tr>
                                                <tr>
                                                    <th>Export</th>

                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/us").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/operaciones").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/ENE").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/FEB").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/MAR").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/ABR").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/MAY").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/JUN").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/JUL").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/AGO").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/SEP").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/OCT").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/NOV").toString()%></td>
                                                    <td><%= datos.get("cmx_detalle_periodo_anterior/cmx_detalle_exportaciones/DIC").toString()%></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!--<br> <label class="header">&Oacute;rdenes de no pago</label>-->
                                        <!--                                        <table cellpadding="1" cellspacing="1" class="table">
                                                                                    <thead>
                                                                                        <tr>
                                                                                            <th>Bancos</th>
                                                                                            <th>Cant. Cheques</th>
                                                                                            <th>Fecha de Publicaci&oacute;n</th>
                                                                                            <th>Motivo</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td colspan="4" style="text-align: center">No se registra informaci&oacute;n</td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>-->
                                        <br> <label class="header">Protestos</label>
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <thead>
                                                <tr>
                                                    <th>&nbsp;</th>
                                                    <th>N° Documentos</th>
                                                    <th>N° Acreedores</th>
                                                    <th>Fecha m&aacute;s reciente</th>
                                                    <th>Monto Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>Protestos</th>
                                                    <td><%= datos.get("protestos_vigentes/nro_documentos").toString()%></td>
                                                    <td><%= datos.get("protestos_vigentes/nro_acreedores").toString()%></td>
                                                    <td><%= datos.get("protestos_vigentes/fecha_mas_reciente").toString()%></td>
                                                    <td><%= datos.get("protestos_vigentes/monto_total").toString()%></td>                                                 
                                                </tr>
                                                <tr>
                                                    <th>Morosidad</th>
                                                    <td><%= datos.get("morosidad_consolidada/nro_documentos").toString()%></td>                                                 
                                                    <td><%= datos.get("morosidad_consolidada/nro_acreedores").toString()%></td>                                                 
                                                    <td><%= datos.get("morosidad_consolidada/fecha_mas_reciente").toString()%></td>                                                 
                                                    <td><%= datos.get("morosidad_consolidada/monto_total").toString()%></td>                                                 
                                                </tr>
                                                <tr>
                                                    <th>Bolet&iacute;n Laboral</th>
                                                    <td><%= datos.get("boletin_laboral/nro_documentos").toString()%></td>
                                                    <td><%= datos.get("boletin_laboral/nro_acreedores").toString()%></td>
                                                    <td><%= datos.get("boletin_laboral/fecha_mas_reciente").toString()%></td>
                                                    <td><%= datos.get("boletin_laboral/monto_total").toString()%></td>
                                                </tr>
                                                <tr>
                                                    <th>Totales</th>
                                                    <td><%= datos.get("totales/nro_documentos").toString()%></td>
                                                    <td><%= datos.get("totales/nro_acreedores").toString()%></td>
                                                    <td>-</td>
                                                    <td><%= datos.get("totales/monto_total").toString()%></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br> <label class="header">Antecedentes de Protestos y Morosidades (Informaci&oacute;n para Evaluaci&oacute;n)</label>
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <thead>
                                                <tr>
                                                    <th>Fecha Venc.</th>
                                                    <th>Tipo Documento</th>
                                                    <th>Librador</th>
                                                    <th>Localidad</th>
                                                    <th>Tipo de Deuda</th>
                                                    <th>Moneda</th>
                                                    <th>Monto</th>
                                                    <th>Motivo</th>
                                                    <th>Fecha Prot.</th>
                                                    <th>Tipo Cr&eacute;dito</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    int largo = datos.getJSONArray("dct_detalle_individual_de_registros_de_morosidad_y_protestos").length();
                                                    if (largo == 0) {
                                                        out.write("<tr>");
                                                        out.write("<td> No se registra informaci&oacute;n</td>");
                                                        out.write("</tr>");
                                                    } else {
                                                        for (int i = 0; i < largo; i++) {
                                                            JSONObject prot = datos.getJSONArray("dct_detalle_individual_de_registros_de_morosidad_y_protestos").getJSONObject(i);
                                                            out.write("<tr>");
                                                            out.write("<td>" + prot.get("fecha_vencimiento") + "</td>");
                                                            out.write("<td>" + prot.get("tipo_documento") + "</td>");
                                                            out.write("<td>" + prot.get("emisor_librador") + "</td>");
                                                            out.write("<td>" + prot.get("localidad") + "</td>");
                                                            out.write("<td>" + prot.get("tipo_deuda") + "</td>");
                                                            out.write("<td>" + prot.get("moneda") + "</td>");
                                                            out.write("<td>" + prot.get("monto") + "</td>");
                                                            out.write("<td>" + prot.get("motivo") + "</td>");
                                                            out.write("<td>" + prot.get("fecha_protesto") + "</td>");
                                                            out.write("<td>" + prot.get("tipo_credito") + "</td>");
                                                            out.write("</tr>");
                                                        }
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <!-- inicio tab 4 -->
                                <!-- Tab consulta RUT -->
                                <div id="tab-4" class="tab-pane">
                                    <div class="panel-body">
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <thead>
                                                <tr>
                                                    <th>Fecha</th>
                                                    <th>Empresa</th>
                                                    <th>Tipo de informe</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    //se valida que el arraylist contenga infotmacion
                                                    int largo2 = datos.getJSONArray("dct_detalle_consultas_al_rut").length();
                                                    if (largo2 == 0) {
                                                        out.write("<tr>");
                                                        out.write("<td> No se registra informaci&oacute;n</td>");
                                                        out.write("</tr>");
                                                    } else {
                                                    for (int i = 0; i < largo2; i++) {
                                                        JSONObject consulta = datos.getJSONArray("dct_detalle_consultas_al_rut").getJSONObject(i);
                                                        out.write("<tr>");
                                                        out.write("<td>" + consulta.get("fecha_consulta") + "</td>");
                                                        out.write("<td>" + consulta.get("empresa") + "</td>");
                                                        out.write("<td>" + consulta.get("informe_solicitado") + "</td>");
                                                        out.write("</tr>");
                                                    }
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                        <div id="container"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 

            <jsp:include page="seccion_pagina/siderbar.jsp"></jsp:include>
            <jsp:include page="seccion_pagina/footer.jsp"></jsp:include>
            </div>

            <script src="vendor/slimScroll/jquery.slimscroll.min.js"></script>
            <script src="vendor/metisMenu/dist/metisMenu.min.js"></script>
            <script src="vendor/iCheck/icheck.min.js"></script>
            <script src="vendor/sparkline/index.js"></script>
            <script src="js/menu.js"></script>
            <script src="scripts/homer.js"></script>

            <script type="text/javascript">
                                var _IMAGEN;

                                var nav = Highcharts.win.navigator,
                                        isMSBrowser = /Edge\/|Trident\/|MSIE /.test(nav.userAgent),
                                        isEdgeBrowser = /Edge\/\d+/.test(nav.userAgent),
                                        containerEl = document.getElementById('container'),
                                        parentEl = containerEl.parentNode,
                                        oldDownloadURL = Highcharts.downloadURL;


                                function fallbackHandler(options) {
                                    if (options.type !== 'image/svg+xml' && isEdgeBrowser ||
                                            options.type === 'application/pdf' && isMSBrowser) {
                                        addText(options.type + ' fell back on purpose');
                                    } else {
                                        throw 'Should not have to fall back for this combination. ' +
                                                options.type;
                                    }
                                }

                                Highcharts.downloadURL = function (dataURL, filename) {
                                    // Emulate toBlob behavior for long URLs
                                    if (dataURL.length > 2000000) {
                                        dataURL = Highcharts.dataURLtoBlob(dataURL);
                                        if (!dataURL) {
                                            throw 'Data URL length limit reached';
                                        }
                                    }
                                    _IMAGEN = dataURL;
                                    //                console.log(_IMAGEN);
                                };

                                Highcharts.Chart.prototype.exportTest = function (type) {
                                    this.exportChartLocal({
                                        type: type
                                    }, {
                                        title: {
                                            text: type
                                        },
                                        subtitle: {
                                            text: false
                                        }
                                    });
                                };

                                Highcharts.Chart.prototype.callbacks.push(function (chart) {
                                    if (!chart.options.chart.forExport) {
                                        chart.exportTest('');
                                    }
                                });

                                var _CLASIFICACION = 0;
                                switch ('<%= datos.get("score")%>') {
                                    case 'A':
                                        _CLASIFICACION = 7;
                                        break;
                                    case 'B':
                                        _CLASIFICACION = 6;
                                        break;
                                    case 'C':
                                        _CLASIFICACION = 5;
                                        break;
                                    case 'D':
                                        _CLASIFICACION = 4;
                                        break;
                                    case 'E':
                                        _CLASIFICACION = 3;
                                        break;
                                    case 'F':
                                        _CLASIFICACION = 2;
                                        break;
                                    case 'G':
                                        _CLASIFICACION = 1;
                                        break;
                                    case 'SC':
                                        _CLASIFICACION = 0;
                                        break;
                                }

                                //    <///////////////GRÁFICO RATING//////////////////>
                                $(function () {
                                    $('#indicador_rating').highcharts({
                                        chart: {
                                            type: 'gauge',
                                            backgroundColor: 'rgba(255, 255, 255, 0.1)',
                                            plotBackgroundColor: null,
                                            plotBackgroundImage: null,
                                            plotBorderWidth: 0,
                                            plotShadow: false,
                                            animation: {
                                                duration: 5000
                                            },
                                        },
                                        credits: {
                                            enabled: false
                                        },
                                        title: {
                                            text: ''
                                        },
                                        pane: {
                                            startAngle: -150,
                                            endAngle: 150,
                                            background: [{
                                                    backgroundColor: {linearGradient: {x1: 0, y1: 0, x2: 0, y2: 1}, stops: [[0, '#FFF'], [1, '#333']]},
                                                    borderWidth: 0,
                                                    outerRadius: '109%'
                                                },
                                                {
                                                    // este es el estilo del circulo que rodea el grafico
                                                }, {
                                                    backgroundColor: '#DDD',
                                                    borderWidth: 0,
                                                    outerRadius: '105%',
                                                    innerRadius: '103%'
                                                }
                                            ]
                                        },
                                        yAxis: {
                                            min: 0,
                                            max: 7,
                                            minorTickInterval: 'auto',
                                            minorTickWidth: 1,
                                            minorTickLength: 10,
                                            minorTickPosition: 'inside',
                                            minorTickColor: '#666',
                                            tickPixelInterval: 30,
                                            tickWidth: 2,
                                            tickPosition: 'inside',
                                            tickLength: 10,
                                            tickColor: '#666',
                                            labels: {
                                                style: {
                                                    color: '#000',
                                                    font: '15px Trebuchet MS, Verdana, sans-serif, bolt'
                                                },
                                                formatter: function () {
                                                    if (this.value === 0)
                                                        return 'SC';
                                                    if (this.value === 0.5)
                                                        return '';
                                                    if (this.value === 1)
                                                        return 'G';
                                                    if (this.value === 1.5)
                                                        return '';
                                                    if (this.value === 2)
                                                        return 'F';
                                                    if (this.value === 2.5)
                                                        return '';
                                                    if (this.value === 3)
                                                        return 'E';
                                                    if (this.value === 3.5)
                                                        return '';
                                                    if (this.value === 4)
                                                        return 'D';
                                                    if (this.value === 4.5)
                                                        return '';
                                                    if (this.value === 5)
                                                        return 'C';
                                                    if (this.value == 5.5)
                                                        return '';
                                                    if (this.value == 6)
                                                        return 'B';
                                                    if (this.value == 6.5)
                                                        return '';
                                                    if (this.value == 7)
                                                        return 'A';
                                                    return this.value;
                                                }
                                            },
                                            title: {
                                                text: 'Level'
                                            },
                                            plotBands: [
                                                {
                                                    thickness: 30,
                                                    from: 0,
                                                    to: 2,
                                                    color: '#DD4B39' // red
                                                },
                                                {
                                                    thickness: 30,
                                                    from: 2,
                                                    to: 5,
                                                    color: '#F39C12' // yellow
                                                },
                                                {
                                                    thickness: 30,
                                                    from: 5,
                                                    to: 7,
                                                    color: '#00A65A' // green
                                                }
                                            ]
                                        },
                                        //metodo que da la opcion para exportar
                                        exporting: {
                                            enabled: false/*false: desabilita la opcion para exportar*/
                                        }
                                        ,
                                        series: [{
                                                name: 'Scoring',
                                                data: [0],
                                                tooltip: {valueSuffix: ''}
                                            }]

                                    },
                                            function (chart) {
                                                chart.series[0].points[0].update(_CLASIFICACION);
                                                if (!chart.renderer.forExport) {
                                                }
                                            });

                                });
        </script>
        <script>
            function generarPdf() {
                var img = _IMAGEN;
                var datos = <%= datos%>;
                go('Svl_PDF', [
                    {id: 'code', val: 'j'},
                    {id: 'grafico', val: img},
                    {id: 'obDatos', val: JSON.stringify(datos)}],
                        true,
                        'Svl_PDF');
            }
        </script>
    </body>
</html>
