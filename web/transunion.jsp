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
                        <div>
                            <ul class="page-breadcrumb breadcrumb">
                                <li>
                                    <a href="index.jsp">Inicio</a>
                                </li>
                                <i class="fa fa-circle"></i>
                                <li>
                                    <a href="dashboard.jsp">Home</a>
                                </li>
                                <i class="fa fa-circle"></i>
                                <li>
                                    Transunion
                                </li>
                            </ul>
                        </div>
                        <!-- Fin ruta -->
                        <div class="page-head">
                            <!-- BEGIN PAGE TITLE -->
                            <div class="page-title">
                                <h1>Informacion detallada Transunion
                                </h1>
                            </div>
                        </div>
                        <!-- END PAGE TITLE -->
                        <!-- END PAGE HEAD-->


                        <div class="row">
                            <div class="col-md-12">
                                <!-- BEGIN TAB PORTLET-->
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-anchor"></i>
                                            <span class="caption-subject bold uppercase">Tab drop</span>
                                            <br>
                                            <br>
                                            <small>
                                                <div>
                                                    <span style="display: inline-block;width: 100px; color: #697882;">Rut </span> :<%= datos.get("rut") + "-" + datos.get("dv")%>
                                            </div>
                                            <div>
                                                <span style="display: inline-block;width: 100px; color: #697882;">Nombre</span> :<%= datos.get("nombre")%>  
                                            </div>
                                            <!--                                            <br>
                                                                                        <button onclick="generarPdf()" class="btn btn-primary">Exportar</button>-->
                                        </small>
                                    </div>

                                </div>
                                <div class="portlet-body">
                                    <div class="tabbable tabbable-tabdrop">
                                        <ul class="nav nav-tabs">
                                            <li class="active">
                                                <a href="#tab1" data-toggle="tab" aria-expanded="true">Vista resumen</a>
                                            </li>
                                            <li class="">
                                                <a href="#tab2" data-toggle="tab" aria-expanded="false">Antecedentes particulares</a>
                                            </li>
                                            <li class="">
                                                <a href="#tab3" data-toggle="tab" aria-expanded="false">Antecedentes laborales</a>
                                            </li>
                                            <li class="">
                                                <a href="#tab4" data-toggle="tab" aria-expanded="false">Antecedentes financieros</a>
                                            </li>
                                            <li class="">
                                                <a href="#tab5" data-toggle="tab" aria-expanded="false">Consultas al RUT</a>
                                            </li>
                                        </ul>

                                        <div class="tab-content" style="height: 800px">
                                            <div class="tab-pane active" id="tab1">
                                                <div class="col-md-12" style="border: 0; margin: 0;">
                                                        <!-- BEGIN SAMPLE TABLE PORTLET-->
<!--                                                        <div class="portlet box blue">
                                                            <div class="portlet-title">
                                                                <div class="caption">
                                                                    <i class="fa fa-comments"></i>Contextual Rows </div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                                                    <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <div class="table-scrollable">
                                                                    <table class="table table-bordered table-hover">
                                                                        <thead>
                                                                            <tr class="uppercase">
                                                                                <th> # </th>
                                                                                <th> Class Name </th>
                                                                                <th> Column </th>
                                                                                <th> Column </th>
                                                                                <th> Column </th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="active">
                                                                                <td> 1 </td>
                                                                                <td> active </td>
                                                                                <td> Column heading </td>
                                                                                <td> Column heading </td>
                                                                                <td> Column heading </td>
                                                                            </tr>
                                                                            <tr class="success">
                                                                                <td> 2 </td>
                                                                                <td> success </td>
                                                                                <td> Column heading </td>
                                                                                <td> Column heading </td>
                                                                                <td> Column heading </td>
                                                                            </tr>
                                                                            <tr class="warning">
                                                                                <td> 3 </td>
                                                                                <td> warning </td>
                                                                                <td> Column heading </td>
                                                                                <td> Column heading </td>
                                                                                <td> Column heading </td>
                                                                            </tr>
                                                                            <tr class="danger">
                                                                                <td> 4 </td>
                                                                                <td> danger </td>
                                                                                <td> Column heading </td>
                                                                                <td> Column heading </td>
                                                                                <td> Column heading </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>-->
                                                        <!-- END SAMPLE TABLE PORTLET-->
                                                    <!-- BEGIN SAMPLE TABLE PORTLET-->
                                                    <div class="portlet box blue">
                                                            <div class="portlet-title">
                                                                <div class="caption">
                                                                    <i class="fa fa-comments"></i>Contextual Rows </div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                                                    <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <div class="table-scrollable">
                                                                    <table class="table table-bordered table-hover">
                                                                        <thead>
                                                                            <tr class="uppercase"></tr>

                                                                    </thead>
                                                                    <tbody>
                                                                        <tr class="success">
                                                                            <td>Score</td>
                                                                            <td><%= datos.get("score")%></td>
                                                                        </tr>
                                                                        <tr class="success">
                                                                            <td>Estado C&eacute;dula</td>
                                                                            <td><%= datos.get("estado_cedula")%></td>
                                                                        </tr>
                                                                        <tr class="success">
                                                                            <td>N&uacute;m Serie</td>
                                                                            <td><%= datos.get("numero_serie")%></td>
                                                                        </tr>
                                                                        <tr class="success">
                                                                            <td>Defunci&oacute;n</td>
                                                                            <td><%= datos.get("defuncion")%></td>
                                                                        </tr>
                                                                        <tr class="success">
                                                                            <td>Consultas al RUT (&uacute;lt. 6 meses)</td>
                                                                            <td><%= datos.get("num_consultas6Meses")%></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- END SAMPLE TABLE PORTLET-->

                                                    <!-- BEGIN SAMPLE TABLE PORTLET-->
                                                    <div class="portlet box blue">
                                                            <div class="portlet-title">
                                                                <div class="caption">
                                                                    <i class="fa fa-comments"></i>Contextual Rows </div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                                                    <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <div class="table-scrollable">
                                                                    <table class="table table-bordered table-hover">
                                                                        <thead>
                                                                            <tr class="uppercase">
                                                                            <td>Producto</td>
                                                                            <td>Total Documentos</td>
                                                                            <td>Acreedores</td>
                                                                            <td>Fecha M&aacute;s Reciente</td>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td>Anotaciones vigentes</td>
                                                                            <td><%= datos.get("dct_resumen_anotacion_vigente/nro_documentos")%></td>
                                                                            <td><%= datos.get("dct_resumen_anotacion_vigente/nro_acreedores")%></td>
                                                                            <td><%= datos.get("dct_resumen_anotacion_vigente/fecha_mas_reciente")%></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Bolet&iacute;n Impagos Laboral y Previsional</td>
                                                                            <td><%= datos.get("dct_resumen_boletin_laboral/total_documentos")%></td>
                                                                            <td><%= datos.get("dct_resumen_boletin_laboral/acreedores")%></td>
                                                                            <td><%= datos.get("dct_resumen_boletin_laboral/fecha_mas_reciente")%></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- END SAMPLE TABLE PORTLET-->
                                                    <!-- BEGIN SAMPLE TABLE PORTLET-->
                                                    <div class="portlet box blue">
                                                            <div class="portlet-title">
                                                                <div class="caption">
                                                                    <i class="fa fa-comments"></i>Contextual Rows </div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                                                    <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <div class="table-scrollable">
                                                                    <table class="table table-bordered table-hover">
                                                                        <thead>
                                                                            <tr class="uppercase">

                                                                            <td>Producto</td>
                                                                            <td>Total Documentos</td>
                                                                            <td>Acreedores</td>
                                                                            <td>Fecha M&aacute;s Reciente</td>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td>Protestos vigentes</td>
                                                                            <td><%= datos.get("protestos_vigentes/nro_documentos")%></td>
                                                                            <td><%= datos.get("protestos_vigentes/nro_acreedores")%></td>
                                                                            <td><%= datos.get("protestos_vigentes/fecha_mas_reciente")%></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Morosidad Consolidada</td>
                                                                            <td><%= datos.get("morosidad_consolidada/nro_documentos")%></td>
                                                                            <td><%= datos.get("morosidad_consolidada/nro_acreedores")%></td>
                                                                            <td><%= datos.get("morosidad_consolidada/fecha_mas_reciente")%></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- END SAMPLE TABLE PORTLET-->
                                                </div>

                                            </div>
                                            <div class="tab-pane" id="tab2">
                                                <div class="portlet box blue">
                                                            <div class="portlet-title">
                                                                <div class="caption">
                                                                    <i class="fa fa-comments"></i>Contextual Rows </div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                                                    <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <div class="table-scrollable">
                                                                    <table class="table table-bordered table-hover">
                                                                        <thead>
                                                                            <tr class="uppercase">

                                                                    </tr>

                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Fecha Nacimiento</td>
                                                                        <td><%= datos.get("fecha_de_nacimiento")%></td>
                                                                        <td>Edad</td>
                                                                        <td><%= datos.get("edad")%></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Sexo</td>
                                                                        <td><%= datos.get("sexo")%></td>
                                                                        <td>Nacionalidad</td>
                                                                        <td><%= datos.get("nacionalidad")%></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Estado Civil</td>
                                                                        <td><%= datos.get("estado_civil")%></td>
                                                                        <td>Fecha Matrimonio</td>
                                                                        <td><%= datos.get("fecha_civil")%></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Direcci&oacute;n</td>
                                                                        <td><%= datos.get("direccion")%></td>
                                                                        <td>Informadas</td>
                                                                        <td><%= datos.get("nro_direcciones_informadas")%></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Tel&eacute;fono(s)</td>
                                                                        <td colspan="3"><%= datos.get("telefono")%></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>E-mail</td>
                                                                        <td colspan="3"><%= datos.get("email")%></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab3">
                                                <div class="portlet box blue">
                                                            <div class="portlet-title">
                                                                <div class="caption">
                                                                    <i class="fa fa-comments"></i>Contextual Rows </div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                                                    <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <div class="table-scrollable">
                                                                    <table class="table table-bordered table-hover">
                                                                        <thead>
                                                                            <tr class="uppercase">
                                                                        <td>Actividad o Profesi&oacute;n</td>
                                                                        <td><%= datos.get("actividad_profesion")%></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Actividad Econ&oacute;mica</td>
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
                                                                    </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab4">
                                                <div class="portlet box blue">
                                                            <div class="portlet-title">
                                                                <div class="caption">
                                                                    <i class="fa fa-comments"></i>Contextual Rows </div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                                                    <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <div class="table-scrollable">
                                                                    <table class="table table-bordered table-hover">
                                                                        <thead>
                                                                            <tr class="uppercase"></tr>

                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Movimientos en bancos</td>
                                                                        <td><%= datos.get("movimientos_de_bancos").toString()%></td>
                                                                        <td>Esto no significa que la cuenta corriente est&eacute; vigente</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Cantidad de Veh&iacute;culos</td>
                                                                        <td><%= datos.get("numero_vehiculos").toString()%></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="portlet box blue">
                                                            <div class="portlet-title">
                                                                <div class="caption">
                                                                    <i class="fa fa-comments"></i>Contextual Rows </div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                                                    <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <div class="table-scrollable">
                                                                    <table class="table table-bordered table-hover">
                                                                        <thead>
                                                                            <tr class="uppercase">
                                                                        <td>&nbsp;</td>
                                                                        <td>N° Documentos</td>
                                                                        <td>N° Acreedores</td>
                                                                        <td>Fecha m&aacute;s reciente</td>
                                                                        <td>Monto Total</td>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Protestos</td>
                                                                        <td><%= datos.get("protestos_vigentes/nro_documentos")%></td>
                                                                        <td><%= datos.get("protestos_vigentes/nro_acreedores")%></td>
                                                                        <td><%= datos.get("protestos_vigentes/fecha_mas_reciente")%></td>
                                                                        <td><%= datos.get("protestos_vigentes/monto_total")%></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Morosidad</td>
                                                                        <td><%= datos.get("morosidad_consolidada/nro_documentos")%></td>
                                                                        <td><%= datos.get("morosidad_consolidada/nro_acreedores")%></td>
                                                                        <td><%= datos.get("morosidad_consolidada/fecha_mas_reciente")%></td>
                                                                        <td><%= datos.get("morosidad_consolidada/monto_total")%></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Bolet&iacute;n Laboral</td>
                                                                        <td><%= datos.get("boletin_laboral/nro_documentos")%></td>
                                                                        <td><%= datos.get("boletin_laboral/nro_acreedores")%></td>
                                                                        <td><%= datos.get("boletin_laboral/fecha_mas_reciente")%></td>
                                                                        <td><%= datos.get("boletin_laboral/monto_total")%></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Totales</td>
                                                                        <td><%= datos.get("totales/nro_documentos")%></td>
                                                                        <td><%= datos.get("totales/nro_acreedores")%></td>
                                                                        <td>-</td>
                                                                        <td><%= datos.get("totales/monto_total")%></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="portlet box blue">
                                                            <div class="portlet-title">
                                                                <div class="caption">
                                                                    <i class="fa fa-comments"></i>Contextual Rows </div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                                                    <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <div class="table-scrollable">
                                                                    <table class="table table-bordered table-hover">
                                                                        <thead>
                                                                            <tr class="uppercase">
                                                                    <tr class="uppercase">
                                                                        <td>Fecha Venc.</td>
                                                                        <td>Tipo Documento</td>
                                                                        <td>Librador</td>
                                                                        <td>Localidad</td>
                                                                        <td>Tipo de Deuda</td>
                                                                        <td>Moneda</td>
                                                                        <td>Monto</td>
                                                                        <td>Motivo</td>
                                                                        <td>Fecha Prot.</td>
                                                                        <td>Tipo Cr&eacute;dito</td>
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
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab5">
                                                <div class="portlet box blue">
                                                            <div class="portlet-title">
                                                                <div class="caption">
                                                                    <i class="fa fa-comments"></i>Contextual Rows </div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                                                    <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                                                    <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <div class="table-scrollable">
                                                                    <table class="table table-bordered table-hover">
                                                                        <thead>
                                                                            <tr class="uppercase">
                                                                        <td>Fecha</td>
                                                                        <td>Empresa</td>
                                                                        <td>Tipo de informe</td>
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
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END TAB PORTLET-->
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="page-footer">
            <jsp:include page="seccion/footer.jsp"></jsp:include>
            </div>


            <!-- END CONTENT -->
            <!-- END CONTAINER -->

            <!-- BEGIN FOOTER -->

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