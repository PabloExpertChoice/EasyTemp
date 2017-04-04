<%-- 
    Document   : index
    Created on : 13-03-2017, 15:22:02
    Author     : ignacio
--%>
<%@page import="cl.expertchoice.clases.Usuario"%>
<%@page import="org.json.JSONObject"%>
<%
    Usuario user = (Usuario) session.getAttribute("sesion");
    if (user == null) {
        response.sendRedirect("cmd");
        return;
    }

    JSONObject datos = (JSONObject) request.getAttribute("datos");
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
    <head>
        <meta charset="utf-8" />
        <title>Dashboard</title>
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
                        <div class="portlet light bordered">
                            <div class="page-head">
                                <!-- BEGIN PAGE TITLE -->
                                <div class="page-title">
                                    <h1>Informacion de Cliente
                                        <small>para evaluacion</small>
                                    </h1>
                                    <br>
                                    <!--<h1><small class="small" style="display: inline-block;width: 155px; color: #697882;">Nombre o razon social </small><small>:  <%//= datos.get("nombre")%></small></h1>-->
                                <h1><small class="small" style="display: inline-block;width: 155px; color: #697882;">Nombre o razon social </small><small id="razonSocial"> </small></h1>
                                <h1><small class="small" style="display: inline-block;width: 155px; color: #697882;">Rut </small><small id="rut"></small></h1>
                                <!--                                            <span class="small" style="display: inline-block;width: 155px; color: #5b9bd1">Razon Social</span>: <span class="small" style="color: #5b9bd1">Pedro Pablo Perez</span><br>
                                                                            <span class="small" style="display: inline-block;width: 155px; color: #5b9bd1">Rut</span>: <span class="small" style="color: #5b9bd1">10.497.521-9</span>-->
                            </div>
                        </div>
                        <!-- END PAGE TITLE -->
                    </div>
                    <!-- END PAGE HEAD-->



                    <!--indicadores principales-->
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <a class="dashboard-stat dashboard-stat-v2 blue" href="#">
                                <div class="visual">
                                    <i class="fa fa-comments"></i>
                                </div>
                                <div class="details">
                                    <div class="number"> +
                                        <span data-counter="counterup" data-value="89">89</span>% </div>
                                    <div class="desc"> Estimacion de Leverage </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <a class="dashboard-stat dashboard-stat-v2 red" href="#">
                                <div class="visual">
                                    <i class="fa fa-bar-chart-o"></i>
                                </div>
                                <div class="details">
                                    <div class="number">
                                        <span data-counter="counterup" data-value="12,5">12,5</span>M$ </div>
                                    <div class="desc"> Estimacion de Activos </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <a class="dashboard-stat dashboard-stat-v2 green" href="#">
                                <div class="visual">
                                    <i class="fa fa-shopping-cart"></i>
                                </div>
                                <div class="details">
                                    <div class="number">
                                        <span data-counter="counterup" data-value="8,5">8,5</span>M$ </div>
                                    <div class="desc"> Estimacion de Deuda </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <a class="dashboard-stat dashboard-stat-v2 purple" href="#">
                                <div class="visual">
                                    <i class="fa fa-globe"></i>
                                </div>
                                <div class="details">
                                    <div class="number">
                                        <span data-counter="counterup" data-value="4,5">4,5</span>M$ </div>
                                    <div class="desc"> Estimacion de mora </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!--fin indicadores principales-->

                    <!--seccion de graficos-->
                    <div class="row">

                        <div class="col-lg-7 col-xs-12 col-sm-12">
                            <div class="portlet box blue" style="border: none;">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <!--                                            <span class="caption-subject bold uppercase font-dark">RISK TIER</span>
                                                                                    <span class="caption-helper">distance stats...</span>-->
                                        <div class="caption"><i class="fa fa-database"></i> ANSWER TREE BUSINESS</div>
                                    </div>
                                    <div class="tools">
                                        <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                        <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                        <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                        <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                    </div>
                                    <div class="actions">
                                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#" data-original-title="" title=""> </a>
                                    </div>
                                </div>
                                <!--grafico de barras-->
                                <div class="portlet-body">
                                    <%--<jsp:include page="seccion/grafico_risktier.jsp"></jsp:include>--%>
                                    <div id="dashboard_amchart_1" class="CSSAnimationChart" style="height: 380px"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-5 col-md-12 col-xs-12 col-sm-12">
                            <div class="portlet box blue" style="border: none;" >
                                <div class="portlet-title">
                                    <div class="caption"><i class="fa fa-info"></i>Score Financiero</div>
                                    <div class="tools">
                                        <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                        <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                        <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                        <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                            <font size=2 style="color: #6980a5;">
                                            <p>DATOS: Cliente con una probabilidad de pago dentro de los próximos 90 días mayor al 80% con un KS > 40%, AUC > 70% y ROC > 75%</p>
                                            <p>NOTA Este estimador o clasificador cumple con la Ley Nº 20.521 (que modifica la ley Nº 19.628), el cual se encuentra basado únicamente en información objetiva relativa a las morosidades y protestos.</p>
                                            </font>
                                        </div>
                                        <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                            <div id="contenedor" style="max-width: 235px; height: 235px; margin: 0 auto"></div>
                                        </div>

                                    </div>
                                </div>
                                <!--fin grafico de score-->
                                <!--                                    <div class="portlet-title">
                                                                        <div class="caption">
                                                                            <i class="icon-cursor font-dark hide"></i>
                                                                            <span class="small">Detalle ultimos 3 meses pagados</span>
                                                                        </div>
                                                                        <div class="actions">
                                                                            <a href="javascript:;" class="btn btn-sm btn-circle red easy-pie-chart-reload">
                                                                                <i class="fa fa-repeat"></i> Reload </a>
                                                                        </div>
                                                                    </div>-->
                                <div class="portlet light bordered">
                                    <div class="portlet-body">
                                        <div class="row">
                                            <div class="col-md-4 col-xs-4 col-lg-4" style="height: 50px;">
                                                <div class="easy-pie-chart">
                                                    <div class="number transactions" data-percent="55">
                                                        <span>+55</span>% <canvas height="75" width="75"></canvas></div>
                                                    <a class="title" href="javascript:;"> Mes 3
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-4 col-xs-4 col-lg-4">
                                                <div class="easy-pie-chart">
                                                    <div class="number visits" data-percent="85">
                                                        <span>+85</span>% <canvas height="75" width="75"></canvas></div>
                                                    <a class="title" href="javascript:;"> Mes 2
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-4 col-xs-4 col-lg-4">
                                                <div class="easy-pie-chart">
                                                    <div class="number bounce" data-percent="46">
                                                        <span>-46</span>% <canvas height="75" width="75"></canvas></div>
                                                    <a class="title" href="javascript:;"> Mes 1
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--                                <div class="portlet light bordered">
                            
                                                                grafico de score
                                                                <div class="panel-body">
                                                                    <div class="caption">
                                                                        <span class="caption-subject bold uppercase font-dark">Score</span>
                                                                    </div>
                                                                    <div id="contenedor" style="width: 235px; height: 235px; margin: 0 auto"></div>
                                                                </div>
                                                                fin grafico de score
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        <i class="icon-cursor font-dark hide"></i>
                                                                        <span class="small">Detalle ultimos 3 meses pagados</span>
                                                                    </div>
                                                                    <div class="actions">
                                                                        <a href="javascript:;" class="btn btn-sm btn-circle red easy-pie-chart-reload">
                                                                            <i class="fa fa-repeat"></i> Reload </a>
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <div class="row">
                                                                        <div class="col-md-4 col-xs-4 col-lg-4" style="height: 50px;">
                                                                            <div class="easy-pie-chart">
                                                                                <div class="number transactions" data-percent="55">
                                                                                    <span>+55</span>% <canvas height="75" width="75"></canvas></div>
                                                                                <a class="title" href="javascript:;"> Mes 3
                                                                                    <i class="icon-arrow-right"></i>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="margin-bottom-10 visible-sm"> </div>
                                                                        <div class="col-md-4 col-xs-4 col-lg-4">
                                                                            <div class="easy-pie-chart">
                                                                                <div class="number visits" data-percent="85">
                                                                                    <span>+85</span>% <canvas height="75" width="75"></canvas></div>
                                                                                <a class="title" href="javascript:;"> Mes 2
                                                                                    <i class="icon-arrow-right"></i>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="margin-bottom-10 visible-sm"> </div>
                                                                        <div class="col-md-4 col-xs-4 col-lg-4">
                                                                            <div class="easy-pie-chart">
                                                                                <div class="number bounce" data-percent="46">
                                                                                    <span>-46</span>% <canvas height="75" width="75"></canvas></div>
                                                                                <a class="title" href="javascript:;"> Mes 1
                                                                                    <i class="icon-arrow-right"></i>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>-->
                        </div>
                    </div>
                    <!--fin de los graficos-->

                    <!--datos para aprobar-->
                    <div class="row">
                        <div class="col-lg-6 col-xs-12 col-sm-12">

                            <div class="portlet light bordered" style="height: 200px">

                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="icon-speech"></i>
                                        <span class="caption-subject bold uppercase"> BLACK LIST</span>
                                        <span class="caption-helper">fetch clicked menu item</span>
                                    </div>
                                    <div class="tools">
                                        <a href="#" class="collapse" data-original-title="" title=""> </a>
                                    </div>
                                    <div class="actions">
                                        <div class="btn-group btn-group-devided" data-toggle="buttons">
                                            <div class="btn-toolbar">
                                                <div class="btn-group">
                                                    <button class="btn small active" style="background: #1bbc9b; color: rgb(255, 255, 255);"><i class="fa fa-plus"></i></button>
                                                    <button class="btn small" style="background: #f3565d; color: rgb(255, 255, 255);"><i class="fa fa-remove"> </i></button> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="input-group input-group-lg">
                                        <input type="text" class="form-control" placeholder="Agregar comentario...">
                                        <span class="input-group-btn">
                                            <button class="btn green-haze"  type="button"><i class="fa fa-plus"></i></button>
                                        </span>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-xs-12 col-sm-12 col-md-6">
                            <div class="portlet light bordered" >
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="icon-settings font-dark"></i>
                                        <span class="caption-subject font-dark sbold uppercase">PROPUESTA DE NEGOCIO A</span>
                                    </div>
                                    <div class="tools">
                                        <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                        <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                    </div>
                                    <div class="actions">
                                        <!--<a class="btn btn-circle btn-icon-only btn-default fullscreen fa fa-circle" data-toggle="modal" href="#basic"> </a>-->
                                        <a data-toggle="modal" href="#basic"> <i style="color: #b1b1b1"class="btn btn-circle btn-icon-only btn-default fa fa-expand"></i> </a>
                                    </div>
                                </div>
                                <div class="portlet-body" style="display: block; margin: 0;">
                                    <div class="portlet-body">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12 col-sm-6 col-lg-6">
                                                <div class="progress-info">
                                                    <div class="number">
                                                        <small>MONTO</small>
                                                        <span class="pull-right" data-counter="counterup" data-value="40000000">40000000</span>
                                                        <small class="font-green-sharp pull-right">$</small>
                                                    </div>
                                                    <div class="progress" style="height: 10px;">
                                                        <span style="width: 70%;" class="progress-bar progress-bar-success blue">
                                                            <span class="sr-only">70% progress</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="progress-info">
                                                    <div class="number">
                                                        <small>TASA</small>
                                                        <small class="font-green-sharp pull-right">%</small>
                                                        <span class="pull-right" data-counter="counterup" data-value="0.80">0.80</span>
                                                    </div>
                                                    <div class="progress" style="height: 10px;">
                                                        <span style="width: 50%;" class="progress-bar progress-bar-success blue">
                                                            <span class="sr-only">50% progress</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--<div class="margin-bottom-10 visible-sm"> </div>-->
                                            <div class="col-md-6 col-xs-12 col-sm-6 col-lg-6">
                                                <div class="progress-info">             
                                                    <div class="number">
                                                        <small>PLAZO</small>
                                                        <span class="pull-right" data-counter="counterup" data-value="72">72</span>
                                                    </div>
                                                    <div class="progress" style="height: 10px;">
                                                        <span style="width: 100%;" class="progress-bar progress-bar-success blue">
                                                            <span class="sr-only">100% progress</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="progress-info">
                                                    <div class="number">
                                                        <small>CUOTA</small>
                                                        <small class="font-green-sharp pull-right">$</small>
                                                        <span class="pull-right" data-counter="counterup" data-value="600000">600000</span>
                                                    </div>
                                                    <div class="progress" style="height: 10px;">
                                                        <span style="width: 50%;" class="progress-bar progress-bar-success blue">
                                                            <span class="sr-only">60% progress</span>
                                                        </span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--//////////////////modal configuracion risktier///////////////////-->
                    <div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
                        <div class="modal-dialog modal-full">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                    <h4 class="modal-title">Configuracion Risk Tier</h4>
                                </div>
                                <div class="modal-body"> Reglas de negocio del Risk Tier</div>
                                <img src="images/risktier.png">
                                <div class="modal-footer">
                                    <button type="button" class="btn dark btn-outline" data-dismiss="modal">Volver</button>
                                    <button type="button" class="btn green">Ir a configuracion Risk Tier</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                    <!--calugas con otros datos-->
                    <div class="row">
                        <!--datos de informacion previsional-->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat2 bordered">
                                <div class="display">
                                    <img src="images/info_previsional-icon.png" style="width: 15%;" class="pull-right">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="7800">7800</span>
                                            <small class="font-green-sharp">$</small>
                                        </h3>
                                        <div class="progress-info">
                                            <div class="status">
                                                <div class="status-title"> INFORMACION PREVISIONAL </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                            <span class="sr-only">76% progress</span>
                                        </span>
                                    </div>
                                    <!--                                        <div class="status">
                                                                                <div class="status-title"> progress </div>
                                                                                <div class="status-number"> 76% </div>
                                                                            </div>-->
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-3 col-sm-6 col-xs-12" onclick="return verModalPJUD()">
                            <div class="dashboard-stat2 bordered" id="boxPjud">
                                <div class="display">
                                    <img src="images/poder_judicial-icon.png" style="width: 15%;" class="pull-right">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="7800">7800</span>
                                            <small class="font-green-sharp">$</small>
                                        </h3>
                                        <div class="progress-info">
                                            <div class="status">
                                                <div class="status-title"> PODER JUDICIAL </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                            <span class="sr-only">76% progress</span>
                                        </span>
                                    </div>
                                    <!--                                        <div class="status">
                                                                                <div class="status-title"> progress </div>
                                                                                <div class="status-number"> 76% </div>
                                                                            </div>-->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat2 bordered">
                                <div class="display">
                                    <img src="images/sanctions_search-icon.png" style="width: 15%;" class="pull-right">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="7800">7800</span>
                                            <small class="font-green-sharp">$</small>
                                        </h3>
                                        <div class="progress-info">
                                            <div class="status">
                                                <div class="status-title"> SANCTIONS OFAC </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                            <span class="sr-only">76% progress</span>
                                        </span>
                                    </div>
                                    <!--                                        <div class="status">
                                                                                <div class="status-title"> progress </div>
                                                                                <div class="status-number"> 76% </div>
                                                                            </div>-->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat2 bordered">
                                <div class="display">
                                    <img src="images/sanctions_search-icon.png" style="width: 15%;" class="pull-right">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="7800">7800</span>
                                            <small class="font-green-sharp">$</small>
                                        </h3>
                                        <div class="progress-info">
                                            <div class="status">
                                                <div class="status-title"> SANCTIONS OFAC </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                            <span class="sr-only">76% progress</span>
                                        </span>
                                    </div>
                                    <!--                                        <div class="status">
                                                                                <div class="status-title"> progress </div>
                                                                                <div class="status-number"> 76% </div>
                                                                            </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!--datos de informacion previsional-->
                        <!--INFORMACION DE SUPERINTENDENCIA DE QUIEBRES-->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat2 bordered">
                                <div class="display">
                                    <img src="images/superintendencia-icon.png" style="width: 15%;" class="pull-right">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="7800">7800</span>
                                            <small class="font-green-sharp">$</small>
                                        </h3>
                                        <div class="progress-info">
                                            <div class="status">
                                                <div class="status-title">SUPERINTENDENCIA QUIEBRAS</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                            <span class="sr-only">76% progress</span>
                                        </span>
                                    </div>
                                    <!--                                                                            <div class="status">
                                                                                                                    <div class="status-title"> progress </div>
                                                                                                                    <div class="status-number"> 76% </div>
                                                                                                                </div>-->
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat2 bordered">
                                <div class="display">
                                    <img src="images/sii-icon.png" style="width: 15%;" class="pull-right">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="7800">7800</span>
                                            <small class="font-green-sharp">$</small>
                                        </h3>
                                        <div class="progress-info">
                                            <div class="status">
                                                <div class="status-title"> ACTIVIDAD COMERCIAL </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                            <span class="sr-only">76% progress</span>
                                        </span>
                                    </div>
                                    <!--                                        <div class="status">
                                                                                <div class="status-title"> progress </div>
                                                                                <div class="status-number"> 76% </div>
                                                                            </div>-->
                                </div>
                            </div>
                        </div>
                        <!--informacion de sociedades-->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat2 bordered">
                                <div class="display">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="4">4</span>
                                            <small class="font-green-sharp">°</small>
                                        </h3>
                                        <div class="progress-info">
                                            <div class="status">
                                                <div class="status-title"> SOCIEDADES </div>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="images/empresas.png" style="width: 15%;" class="pull-right">

                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 0%;" class="progress-bar progress-bar-success green-sharp">
                                        </span>
                                    </div>
                                    <!--                                        <div class="status">
                                                                                <div class="status-title"> numero de sociedades </div>
                                                                                <div class="status-number"> </div>
                                                                            </div>-->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat2 bordered">
                                <div class="display">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="4">4</span>
                                            <small class="font-green-sharp">°</small>
                                        </h3>
                                        <div class="progress-info">
                                            <div class="status">
                                                <div class="status-title"> SOCIEDADES </div>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="images/empresas.png" style="width: 15%;" class="pull-right">
                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 0%;" class="progress-bar progress-bar-success green-sharp">
                                        </span>
                                    </div>
                                    <!--                                        <div class="status">
                                                                                <div class="status-title"> numero de sociedades </div>
                                                                                <div class="status-number"> </div>
                                                                            </div>-->
                                </div>
                            </div>
                        </div>
                        <!--                        <div class="col-md-3" onclick="return verModalPJUD()" style="cursor: pointer;">
                                                    <div class="info-box bg-orange" id="boxPjud">
                                                        <span class="info-box-icon">
                                                            <i class="ion ion-ios-pricetag-outline"></i>
                                                            <img src="images/poder_judicial-icon.png" style="width: 60%;" >
                                                        </span>
                                                        <div class="info-box-content" >
                                                            <span class="info-box-text">Poder Judicial</span>
                                                            <span class="pull-right"><i class="fa fa-plus-circle"></i></span>
                                                            <span class="info-box-number">-</span>
                                                            <div class="progress">
                                                                <div class="progress-bar" style="width: 50%"></div>
                                                            </div>
                                                            <span class="progress-description pull-left">
                                                                Número de demandas
                                                            </span>
                                                            <span class="progress-description pull-right"><i style="cursor: pointer;" class="fa fa-warning"></i></span>
                                                        </div>
                                                    </div>
                                                </div>-->
                    </div>
                    <!--fin de calugas con otros datos-->
                    <div class="modal fade" id="modalPJUD" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title"></h4>
                                </div>
                                <div class="modal-body">
                                    <div id="tblPjudCont">
                                        <table id="tblPJUD" class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th></th>
                                                    <th>ROL</th>
                                                    <th>FECHA</th>
                                                    <th>CARATULADO</th>
                                                    <th>TRIBUNAL</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END CONTENT BODY -->
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

            <script src="assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
            <script src="assets/global/plugins/jquery-ui/jquery-ui.min.js"></script>
            <script src="assets/global/plugins/datatables/dataTables.bootstrap.min.js"></script>
            <script src="js/funciones.js"></script>
            <script src="js/jquery.validate.min.js"></script>
            <script src="js/messages_es.min.js"></script>
            <script src="js/number_format.js"></script>

            <!--librerias para grafico highcharts-->
            <script src="https://code.highcharts.com/highcharts.js"></script>
            <script src="https://code.highcharts.com/highcharts-more.js"></script>
            <script src="https://code.highcharts.com/modules/exporting.js"></script>
            <script src="js/dash.js" type="text/javascript"></script>
            <script src="js/funciones.js"></script>
            <script src="js/dashboard.js"></script>
            <!-- END THEME LAYOUT SCRIPTS -->
            <script>
                            function goTransunion() {
                                var datos = <%= datos%>;
                                go('Svl_Informacion', [{id: 'code', val: 'transunion'}, {id: 'obDatos', val: JSON.stringify(datos)}], undefined, 'Svl_Informacion');
                            }
        </script>
        <script>
            $(function () {
                $('#menuBarRut').show();
                $('#menuBarPrint').show();
                $('#menuBarCampana').show();
                $('#menuBarFlag').show();


            <%
                String nom_completo = datos.get("nombre").toString();
                String[] arrNom_completo = nom_completo.split(" ");
                String nom = arrNom_completo[0] + arrNom_completo[1];
                String apellPat = arrNom_completo[2];
                String apellMat = arrNom_completo[3];
            %>;
                nomCompleto = '<%= nom_completo%>';
                nombre = '<%= nom%>';
                apePaterno = '<%= apellPat%>';
                apeMaterno = '<%= apellMat%>';

                rut = '<%= datos.get("rut").toString()%>';
                dv = '<%= datos.get("dv").toString()%>';

                $('#razonSocial').html(': ' + (nombre + " " + apePaterno + " " + apeMaterno));
                $('#rut').html(': ' + rut + "-" + dv);
//                $('#rut').html(': ' + number_format(rut, 0, ',', '.') + '-' + dv);

//                buscarBl(idCliente);

//                validarQuiebra(rut, dv);
//                buscarPosicionCliente(rut, dv);
//                buscarCalificacion(rut, dv);
//                cargaIframe(rut, dv, nombre, apePaterno, apeMaterno, idCliente);
//                buscarDatosOfac(nombre, apePaterno, apeMaterno);
//                buscarActividadComercial(rut, dv);
//                buscarBlackList(idUsuario, idCliente);
                getDatosPJUD(rut, dv, nombre, apePaterno, apeMaterno);
//                getSociedades(idCliente, nombre, apePaterno, apeMaterno);
//                propuestaNegocio(rut, dv, rentaDepurada);
//                consultas(rut);
//
                tblPjud = $("#tblPJUD").DataTable({
                    language: {
                        url: 'json/Spanish.json'
                    },
                    "aoColumns": [
                        {
                            "className": 'details-control',
                            "orderable": false,
                            "data": null,
                            "defaultContent": ''
                        },
                        {"mData": "",
                            "mRender": function (data, type, full) {
                                if (full.documentoDemanda == undefined || full.documentoDemanda == '') {
                                    return '<i class="fa fa-file-o"></i>';
                                } else {
                                    return '<img style="cursor: pointer;"  src="images/iconos/pdf.png" onclick="return verPdfPjud(this)" />';
                                }
                            }
                        },
                        {"mData": "rol"},
                        {"mData": "fecha"},
                        {"mData": "caratulado"},
                        {"mData": "tribunal.nombre"}
                    ]
                });
//                reglasAtb();
            });
        </script>
        <!-- End -->
    </body>



    <!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Mar 2017 15:44:48 GMT -->
</html>