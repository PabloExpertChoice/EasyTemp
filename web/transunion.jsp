<%-- 
    Document   : index
    Created on : 13-03-2017, 15:22:02
    Author     : ignacio
--%>
<%@page import="org.json.JSONObject"%>
<%
JSONObject datos = (JSONObject) request.getAttribute("datos");
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->
    <!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Mar 2017 15:40:53 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
    <head>
        <meta charset="utf-8" />
        <title>Metronic Admin Theme #4 | Admin Dashboard 2</title>
        <link rel="shortcut icon" href="images/logo1.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #4 for statistics, charts, recent events and reports" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />


        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="assets/layouts/layout4/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/layouts/layout4/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="assets/layouts/layout4/css/custom.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> 
    </head>
    <!-- END HEAD -->

    <body class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo">
        
        <!-- BEGIN HEADER -->
        <jsp:include page="seccion/head.jsp"></jsp:include>


            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                <!-- BEGIN SIDEBAR -->
            <jsp:include page="seccion/sidebar.jsp"></jsp:include>
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEAD-->
                        <!-- Ruta-->
                        <ul class="page-breadcrumb breadcrumb">
                            <li>
                                <a href="index.jsp">Inicio</a>
                            </li>
                            <i class="fa fa-circle"></i>
                            <li>
                                Home
                            </li>
                        </ul>
                        <!-- Fin ruta -->
                        <div class="page-head">
                            <!-- BEGIN PAGE TITLE -->
                            <div class="page-title">
                                <h1>Informacion detallada Trans Union
                                </h1>
                            </div>
                        </div>
                        <!-- END PAGE TITLE -->
                        <!-- END PAGE HEAD-->
                    </div>
                    <!-- END CONTENT BODY -->
                </div>

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
                                            <span>Informaci&#243;n de Persona Bureau</span>
                                        </li>
                                    </ol>
                                </div>
                                <h2 class="font-light m-b-xs">
                                    Informaci&#243;n de Persona Bureau
                                </h2>
                                <small>
                                    <div>
                                        Rut: <%= datos.get("rut") + "-" + datos.get("dv")%>
                                </div>
                                <div>
                                    Nombre: <%= datos.get("nombre")%>  
                                </div>
                                <button onclick="generarPdf()" class="btn btn-primary">Exportar</button>
                                <!--<button id="crearimagen" class="form-control">Crear Imagen</button>  El div id="img-out" sera el contenedor en donde visualizaremos la imagen exportada -->
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
                                    <li class=""><a data-toggle="tab" href="#tab-3"><i class="fa fa-database"></i> Antecedentes laborales</a></li>
                                    <li class=""><a data-toggle="tab" href="#tab-4"><i class="fa fa-database"></i> Antecedentes financieros</a></li>
                                    <!--<li class=""><a data-toggle="tab" href="#tab-5"><i class="fa fa-database"></i> Antecedentes judiciales</a></li>-->
                                    <li class=""><a data-toggle="tab" href="#tab-6"><i class="fa fa-database"></i> Consultas al RUT</a></li>
                                </ul>
                                <!--Contenido de los tab -->
                                <div class="tab-content">
                                    <!-- Tab antecedentes generales-->
                                    <div id="tab-1" class="tab-pane active">
                                        <div class="col-lg-8">
                                            <table cellpadding="1" cellspacing="1" class="table">
                                                <tr>
                                                    <th>Score</th>
                                                    <td><%= datos.get("score")%></td>
                                                <tr>
                                                <tr>
                                                    <th></th>
                                                        
                                                <tr>
                                                <tr>
                                                    <th>Estado C&eacute;dula</th>
                                                    <td><%= datos.get("estado_cedula")%></td>
                                                <tr>
                                                    <th>N&uacute;m Serie</th>
                                                    <td><%= datos.get("numero_serie")%></td>
                                                </tr>
                                                </tr>
                                                <tr>
                                                    <th>Defunci&oacute;n</th>
                                                    <td><%= datos.get("defuncion")%></td>
                                                </tr>
                                                <!--                                        <tr>
                                                                                            <th>Acreditaciones</th>
                                                                                            <td>--</td>
                                                                                        </tr>-->
                                                <tr>
                                                    <th>Consultas al RUT (&uacute;lt. 6 meses)</th>
                                                    <td><%= datos.get("num_consultas6Meses")%></td>
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
                                                    <td><%= datos.get("dct_resumen_anotacion_vigente/nro_documentos")%></td>
                                                    <td><%= datos.get("dct_resumen_anotacion_vigente/nro_acreedores")%></td>
                                                    <td><%= datos.get("dct_resumen_anotacion_vigente/fecha_mas_reciente")%></td>
                                                </tr>
                                                <tr>
                                                    <th>Bolet&iacute;n Impagos Laboral y Previsional</th>
                                                    <td><%= datos.get("dct_resumen_boletin_laboral/total_documentos")%></td>
                                                    <td><%= datos.get("dct_resumen_boletin_laboral/acreedores")%></td>
                                                    <td><%= datos.get("dct_resumen_boletin_laboral/fecha_mas_reciente")%></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <label class="header">Antecedentes Protestos y Morosidades (Informaci&oacute;n para Evaluaci&oacute;n)</label>
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <tr>
                                                <th>Producto</th>
                                                <th>Total Documentos</th>
                                                <th>Acreedores</th>
                                                <th>Fecha M&aacute;s Reciente</th>
                                            </tr>
                                            <tr>
                                                <th>Protestos vigentes</th>
                                                <td><%= datos.get("protestos_vigentes/nro_documentos")%></td>
                                                <td><%= datos.get("protestos_vigentes/nro_acreedores")%></td>
                                                <td><%= datos.get("protestos_vigentes/fecha_mas_reciente")%></td>
                                            </tr>
                                            <tr>
                                                <th>Morosidad Consolidada</th>
                                                <td><%= datos.get("morosidad_consolidada/nro_documentos")%></td>
                                                <td><%= datos.get("morosidad_consolidada/nro_acreedores")%></td>
                                                <td><%= datos.get("morosidad_consolidada/fecha_mas_reciente")%></td>
                                            </tr>
                                        </table>
                                    </div>

                                    <!-- inicio de tab 2 -->
                                    <!-- Tab antecedentes particulares -->
                                    <div id="tab-2" class="tab-pane">
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <tr>
                                                <th>Fecha Nacimiento</th>
                                                <td><%= datos.get("fecha_de_nacimiento")%></td>
                                                <th>Edad</th>
                                                <td><%= datos.get("edad")%></td>
                                            </tr>
                                            <tr>
                                                <th>Sexo</th>
                                                <td><%= datos.get("sexo")%></td>
                                                <th>Nacionalidad</th>
                                                <td><%= datos.get("nacionalidad")%></td>
                                            </tr>
                                            <tr>
                                                <th>Estado Civil</th>
                                                <td><%= datos.get("estado_civil")%></td>
                                                <th>Fecha Matrimonio</th>
                                                <td><%= datos.get("fecha_civil")%></td>
                                            </tr>
                                            <tr>
                                                <th>Direcci&oacute;n</th>
                                                <td><%= datos.get("direccion")%></td>
                                                <th>Informadas</th>
                                                <td><%= datos.get("nro_direcciones_informadas")%></td>
                                            </tr>
                                            <tr>
                                                <th>Tel&eacute;fono(s)</th>
                                                <td colspan="3"><%= datos.get("telefono")%></td>
                                            </tr>
                                            <tr>
                                                <th>E-mail</th>
                                                <td colspan="3"><%= datos.get("email")%></td>
                                            </tr>
                                        </table>
                                    </div>

                                    <!-- inicio de tab 3 -->
                                    <!-- Tab antecedentes laborales -->
                                    <div id="tab-3" class="tab-pane">
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <tr>
                                                <th>Actividad o Profesi&oacute;n</th>
                                                <td><%= datos.get("actividad_profesion")%></td>
                                            </tr>
                                            <tr>
                                                <th>Actividad Econ&oacute;mica</th>
                                                    <%
                                                        int largo = datos.getJSONArray("dct_detalle_antecedentes_laborales").length();
                                                        if (largo == 0) {
                                                            out.write("<td> No se registra informaci&oacute;n</td>");
                                                        } else {
                                                            for (int i = 0; i < largo; i++) {
                                                                JSONObject consulta = datos.getJSONArray("dct_detalle_antecedentes_laborales").getJSONObject(i);
                                                                out.write("<td>" + consulta.get("glosa") + "</td>");
                                                            }
                                                        }
                                                    %>
                                            </tr>

                                        </table>
                                    </div>

                                    <!-- inicio tab 4 -->
                                    <!-- Tab antecedentes financieros -->
                                    <div id="tab-4" class="tab-pane">
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <tr>
                                                <th>Movimientos en bancos</th>
                                                <td><%= datos.get("movimientos_de_bancos").toString()%></td>
                                                <td>Esto no significa que la cuenta corriente est&eacute; vigente</td>
                                            </tr>
                                            <tr>
                                                <th>Cantidad de Veh&iacute;culos</th>
                                                <td><%= datos.get("numero_vehiculos").toString()%></td>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <!--                                    <br> <label class="header">&Oacute;rdenes de no pago</label>
                                                                            <table class="tableSH" style="width: 100%">
                                                                                <tr>
                                                                                    <th>Bancos</th>
                                                                                    <th>Cant. Cheques</th>
                                                                                    <th>Fecha de Publicaci&oacute;n</th>
                                                                                    <th>Motivo</th>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4" style="text-align: center">No se registra informaci&oacute;n</td>
                                                                                </tr>
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
                                                    <td><%= datos.get("protestos_vigentes/nro_documentos")%></td>
                                                    <td><%= datos.get("protestos_vigentes/nro_acreedores")%></td>
                                                    <td><%= datos.get("protestos_vigentes/fecha_mas_reciente")%></td>
                                                    <td><%= datos.get("protestos_vigentes/monto_total")%></td>
                                                </tr>
                                                <tr>
                                                    <th>Morosidad</th>
                                                    <td><%= datos.get("morosidad_consolidada/nro_documentos")%></td>
                                                    <td><%= datos.get("morosidad_consolidada/nro_acreedores")%></td>
                                                    <td><%= datos.get("morosidad_consolidada/fecha_mas_reciente")%></td>
                                                    <td><%= datos.get("morosidad_consolidada/monto_total")%></td>
                                                </tr>
                                                <tr>
                                                    <th>Bolet&iacute;n Laboral</th>
                                                    <td><%= datos.get("boletin_laboral/nro_documentos")%></td>
                                                    <td><%= datos.get("boletin_laboral/nro_acreedores")%></td>
                                                    <td><%= datos.get("boletin_laboral/fecha_mas_reciente")%></td>
                                                    <td><%= datos.get("boletin_laboral/monto_total")%></td>
                                                </tr>
                                                <tr>
                                                    <th>Totales</th>
                                                    <td><%= datos.get("totales/nro_documentos")%></td>
                                                    <td><%= datos.get("totales/nro_acreedores")%></td>
                                                    <td>-</td>
                                                    <td><%= datos.get("totales/monto_total")%></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br> <label class="header">Antecedentes de Protestos y Morosidades (Informaci&oacute;n para Evaluaci&oacute;n)</label>
                                        <table cellpadding="1" cellspacing="1" class="table">
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </table>
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
                                                <tr>
                                                    <%
                                                        int largo1 = datos.getJSONArray("dct_detalle_individual_de_registros_de_morosidad_y_protestos").length();
                                                        if (largo1 == 0) {
                                                            out.write("<td> No se registra informaci&oacute;n</td>");
                                                            out.write("<td></td>");
                                                            out.write("<td></td>");
                                                            out.write("<td></td>");
                                                            out.write("<td></td>");
                                                            out.write("<td></td>");
                                                            out.write("<td></td>");
                                                            out.write("<td></td>");
                                                            out.write("<td></td>");
                                                            out.write("<td></td>");
                                                        } else {
                                                            for (int i = 0; i < largo1; i++) {
                                                                JSONObject prot = datos.getJSONArray("dct_detalle_individual_de_registros_de_morosidad_y_protestos").getJSONObject(i);
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
                                                            }
                                                        }
                                                    %>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- inicio tab 6 -->
                                    <!-- Tab consulta RUT -->
                                    <div id="tab-6" class="tab-pane">
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
                                                    int largo2 = datos.getJSONArray("dct_detalle_consultas_al_rut").length();
                                                    if (largo2 == 0) {
                                                        out.write("<tr>");
                                                        out.write("<td> No se registra informaci&oacute;n</td>");
                                                        out.write("<td></td>");
                                                        out.write("<td></td>");
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
                                    </div>
                                    <div id="container"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END CONTAINER -->

        <!-- BEGIN FOOTER -->
        <div class="page-footer">
            <jsp:include page="seccion/footer.jsp"></jsp:include>
            </div>
            <!-- END FOOTER -->

            <!--boton flotante-->
        <jsp:include page="seccion/flotante.jsp"></jsp:include>

        <!-- BEGIN CORE PLUGINS -->
        <script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="assets/global/plugins/moment.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/morris/morris.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/morris/raphael-min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/counterup/jquery.waypoints.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/amcharts/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="assets/global/plugins/amcharts/amcharts/serial.js" type="text/javascript"></script>
        <script src="assets/global/plugins/amcharts/amcharts/pie.js" type="text/javascript"></script>
        <script src="assets/global/plugins/amcharts/amcharts/radar.js" type="text/javascript"></script>
        <script src="assets/global/plugins/amcharts/amcharts/themes/light.js" type="text/javascript"></script>
        <script src="assets/global/plugins/amcharts/amcharts/themes/patterns.js" type="text/javascript"></script>
        <script src="assets/global/plugins/amcharts/amcharts/themes/chalk.js" type="text/javascript"></script>
        <script src="assets/global/plugins/amcharts/ammap/ammap.js" type="text/javascript"></script>
        <script src="assets/global/plugins/amcharts/ammap/maps/js/worldLow.js" type="text/javascript"></script>
        <script src="assets/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>
        <script src="assets/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/horizontal-timeline/horizontal-timeline.js" type="text/javascript"></script>
        <script src="assets/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <script src="https://www.amcharts.com/lib/3/lang/es.js"></script>
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="assets/pages/scripts/dashboard.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="assets/layouts/layout4/scripts/layout.min.js" type="text/javascript"></script>
        <script src="assets/layouts/layout4/scripts/demo.min.js" type="text/javascript"></script>
        <script src="assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>

        <!--librerias para grafico highcharts-->
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="https://code.highcharts.com/highcharts-more.js"></script>
        <script src="https://code.highcharts.com/modules/exporting.js"></script>
        <script src="js/dash.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
        <!-- Google Code for Universal Analytics -->
        <script>
                                    (function (i, s, o, g, r, a, m) {
                                        i['GoogleAnalyticsObject'] = r;
                                        i[r] = i[r] || function () {
                                            (i[r].q = i[r].q || []).push(arguments)
                                        }, i[r].l = 1 * new Date();
                                        a = s.createElement(o),
                                                m = s.getElementsByTagName(o)[0];
                                        a.async = 1;
                                        a.src = g;
                                        m.parentNode.insertBefore(a, m)
                                    })(window, document, 'script', '../../../../../www.google-analytics.com/analytics.js', 'ga');
                                    ga('create', 'UA-37564768-1', 'auto');
                                    ga('send', 'pageview');
        </script>
        <!-- End -->

        <!-- Google Tag Manager -->
        <noscript><iframe src="http://www.googletagmanager.com/ns.html?id=GTM-W276BJ"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({'gtm.start':
                            new Date().getTime(), event: 'gtm.js'});
                var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                        '../../../../../www.googletagmanager.com/gtm5445.html?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-W276BJ');</script>
        <!-- End -->
    </body>



    <!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Mar 2017 15:44:48 GMT -->
</html>