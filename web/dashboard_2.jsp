<%-- 
    Document   : index
    Created on : 13-03-2017, 15:22:02
    Author     : ignacio
--%>

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
                        <div class="portlet light bordered">
                            <div class="page-head">
                                <!-- BEGIN PAGE TITLE -->
                                <div class="page-title">
                                    <h1>Informacion de Cliente
                                        <small>para evaluacion</small>
                                    </h1>
                                    <br>
                                    <h1><small class="small" style="display: inline-block;width: 155px; color: #697882;">Nombre o razon social </small><small>: Pedro Pablo Perez</small></h1>
                                    <h1><small class="small" style="display: inline-block;width: 155px; color: #697882;">Rut </small><small>: 10.898.953-2</small></h1>
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
                                        <div class="number">
                                            <span data-counter="counterup" data-value="1349">1349</span>
                                        </div>
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
                                            <span data-counter="counterup" data-value="549">549</span>
                                        </div>
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
                                        <div class="number"> +
                                            <span data-counter="counterup" data-value="89">89</span>% </div>
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
                                        <div class="col-md-6 col-lg-6 col-xs-6 col-sm-6">
                                            <font size=2 style="color: #6980a5;">
                                            <p>DATOS: Cliente con una probabilidad de pago dentro de los pr�ximos 90 d�as mayor al 80% con un KS > 40%, AUC > 70% y ROC > 75%</p>
                                            <p>NOTA Este estimador o clasificador cumple con la Ley N� 20.521 (que modifica la ley N� 19.628), el cual se encuentra basado �nicamente en informaci�n objetiva relativa a las morosidades y protestos.</p>
                                            </font>
                                        </div>
                                        <div class="col-md-6 col-lg-6 col-xs-6 col-sm-6">
                                            <div id="contenedor" style="width: 235px; height: 235px; margin: 0 auto"></div>
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
                                            <!--                                                <label class="btn btn-transparent dark btn-outline btn-circle btn-sm">
                                                                                                <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                                                                                            <label class="btn btn-transparent dark btn-outline btn-circle btn-sm active">
                                                                                                <input type="radio" name="options" class="toggle" id="option2">Settings</label>-->

                                            <div class="btn-toolbar">
                                                <div class="btn-group">
                                                    <button class="btn small active" style="background: #009900; color: rgb(255, 255, 255);"><i class="fa fa-plus"></i></button>
                                                    <button class="btn small" style="background: #ff0000; color: rgb(255, 255, 255);"><i class="fa fa-remove"> </i></button> 
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
                                        <a data-toggle="modal" href="#basic"><i class="icon-settings font-dark"></i></a>
                                        <span class="caption-subject font-dark sbold uppercase">PROPUESTA DE NEGOCIO A</span>
                                    </div>
                                    <div class="tools">
                                        <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                        <a href="javascript:;" class="remove" data-original-title="" title=""> </a>
                                    </div>
                                </div>
                                <div class="portlet-body" style="display: block; margin: 0;">
                                    <div class="portlet-body">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12 col-sm-12 col-lg-6">
                                                <div class="progress-info">
                                                    <div class="number">
                                                        <small style="display: inline-block;width: 180px;">MONTO</small>
                                                        <small class="font-green-sharp">$</small>
                                                        <span data-counter="counterup" data-value="40000000">40000000</span>
                                                    </div>
                                                    <div class="progress" style="height: 10px;">
                                                        <span style="width: 70%;" class="progress-bar progress-bar-success blue">
                                                            <span class="sr-only">70% progress</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="progress-info">
                                                    <div class="number">
                                                        <small style="display: inline-block;width: 180px;">TASA</small>
                                                        <span data-counter="counterup" data-value="0.80">0.80</span>
                                                        <small class="font-green-sharp">%</small>
                                                    </div>
                                                    <div class="progress" style="height: 10px;">
                                                        <span style="width: 50%;" class="progress-bar progress-bar-success blue">
                                                            <span class="sr-only">50% progress</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--<div class="margin-bottom-10 visible-sm"> </div>-->
                                            <div class="col-md-6 col-xs-12 col-sm-12 col-lg-6">
                                                <div class="progress-info">             
                                                    <div class="number">
                                                        <small style="display: inline-block; width: 220px;">PLAZO</small>
                                                        <span data-counter="counterup" data-value="72">72</span>
                                                    </div>
                                                    <div class="progress" style="height: 10px;">
                                                        <span style="width: 100%;" class="progress-bar progress-bar-success blue">
                                                            <span class="sr-only">100% progress</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="progress-info">
                                                    <div class="number">
                                                        <small style="display: inline-block;width: 200px;">CUOTA</small>
                                                        <small class="font-green-sharp">$</small>
                                                        <span data-counter="counterup" data-value="600000">600000</span>
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
                    <!--fin de datos para aprovar-->
<!--                    <div class="modal fade in" id="full" tabindex="-1" role="dialog" aria-hidden="true" style="display: block; padding-right: 15px;">
                                        <div class="modal-dialog modal-full">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                                    <h4 class="modal-title">Modal Title</h4>
                                                </div>
                                                <div class="modal-body"> Modal body goes here </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn dark btn-outline" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn green">Save changes</button>
                                                </div>
                                            </div>
                                             /.modal-content 
                                        </div>
                                         /.modal-dialog 
                                    </div>-->
                    
                    
                    <div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
                                        <div class="modal-dialog modal-full">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                                    <h4 class="modal-title">Modal Title</h4>
                                                </div>
                                                <div class="modal-body"> Modal body goes here </div>
                                                <img src="images/risktier.png">
                                                <div class="modal-footer">
                                                    <button type="button" class="btn dark btn-outline" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn green">Save changes</button>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->
                    <!--informacion de bureaos-->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light bordered" style="height: 320px;">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="icon-anchor"></i>
                                        <span class="caption-subject bold uppercase">Indicadores generales</span>
                                    </div>
                                    <div class="actions">
                                        <div class="btn-group">
                                            <a class="btn green-haze btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Actions
                                                <i class="fa fa-angle-down"></i>
                                            </a>
                                            <ul class="dropdown-menu pull-right">
                                                <li>
                                                    <a href="javascript:;"> Option 1</a>
                                                </li>
                                                <li class="divider"> </li>
                                                <li>
                                                    <a href="javascript:;">Option 2</a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">Option 3</a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">Option 4</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="tabbable tabbable-tabdrop">
                                        <ul class="nav nav-tabs">
                                            <li class="active">
                                                <a href="#tab1" data-toggle="tab">Detalle valoracion</a>
                                            </li>
                                            <li>
                                                <a href="#tab2" data-toggle="tab">Informacion Resumida</a>
                                            </li>
                                            <li>
                                                <a href="#tab3" data-toggle="tab">Otros datos</a>
                                            </li>
                                        </ul>
                                        <!--cuerpo de los tab-->
                                        <!--tab 1-->
                                        <div class="tab-content" style="height: 200px;">
                                            <div class="tab-pane active" id="tab1">
                                                <div class="row">
                                                    <div class="col-lg-6" style="">
                                                        <div class="hpanel filter-item">
                                                            <a href="#">
                                                                <div class="portlet light bordered" style="height: 70px;">
                                                                    <div class="pull-right text-right">
                                                                        <small class="stat-label">Valor</small>
                                                                        <h4>250 <i class="fa fa-level-down text-danger"></i></h4>
                                                                    </div>
                                                                    <h4 class="m-b-xs">Sinacofi</h4>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="hpanel filter-item">
                                                            <a href="Svl_informacion">
                                                                <div class="portlet light bordered" style="height: 70px;">
                                                                    <div class="pull-right text-right">
                                                                        <small class="stat-label">Valor</small>
                                                                        <h4>511 <i class="fa fa-level-up text-warning"></i></h4>
                                                                    </div>
                                                                    <h4 class="m-b-xs">Transunion</h4>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6" style="">
                                                        <div class="hpanel filter-item">
                                                            <a href="#">
                                                                <div class="portlet light bordered" style="height: 70px;">
                                                                    <div class="pull-right text-right">
                                                                        <small class="stat-label">Valor</small>
                                                                        <h4>882 <i class="fa fa-level-up text-success"></i></h4>
                                                                    </div>
                                                                    <h4 class="m-b-xs">Equifax</h4>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="hpanel filter-item">
                                                            <a href="#">
                                                                <div class="portlet light bordered" style="height: 70px;">
                                                                    <div class="pull-right text-right">
                                                                        <small class="stat-label">Valor</small>
                                                                        <h4>420 <i class="fa fa-level-up text-warning"></i></h4>
                                                                    </div>
                                                                    <h4 class="m-b-xs">Otros</h4>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="tab-pane" id="tab2">
                                                <div class="portlet-body">
                                                    <div class="table-scrollable">
                                                        <table class="table table-striped table-hover font-dark">
                                                            <tr>
                                                                <th> Status </th>
                                                                <td>
                                                                    <span class="label label-sm label-success"> Approved </span>
                                                                    <span class="label label-sm label-info"> Pending </span>
                                                                    <span class="label label-sm label-warning"> Suspended </span>
                                                                    <span class="label label-sm label-danger"> Blocked </span>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <th>Score</th>
                                                                <td> 750 </td>

                                                            </tr>
                                                            <tr>
                                                                <th>Fecha nacimiento</th>
                                                                <td> 21-07-1678 </td>

                                                            </tr>
                                                            <tr>
                                                                <th>Edad</th>
                                                                <td> 32</td>

                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="tab-pane" id="tab3">
                                                <p> Howdy, I'm in Section 3. </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--fin informacion de bureaos-->

                    <!--calugas con otros datos-->
                    <div class="row">
                        <!--datos de informacion previsional-->

                        <div class="col-md-3">
                            <div class="dashboard-stat2 bordered" style="height: 110px">
                                <div class="display">
                                    <img src="images/info_previsional-icon.png" style="width: 15%;">
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
                        <div class="col-md-3">
                            <div class="dashboard-stat2 bordered" style="height: 110px">
                                <div class="display">
                                    <img src="images/poder_judicial-icon.png" style="width: 15%;">
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
                        <div class="col-md-3">
                            <div class="dashboard-stat2 bordered" style="height: 110px">
                                <div class="display">
                                    <img src="images/sanctions_search-icon.png" style="width: 15%;">
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
                        <div class="col-md-3">
                            <div class="dashboard-stat2 bordered" style="height: 110px">
                                <div class="display">
                                    <img src="images/sanctions_search-icon.png" style="width: 15%;">
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
                            <div class="dashboard-stat2 bordered" style="height: 110px">
                                <div class="display">
                                    <img src="images/superintendencia-icon.png" style="width: 15%;">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="7800">7800</span>
                                            <small class="font-green-sharp">$</small>
                                        </h3>
                                        <div class="progress-info">
                                            <div class="status">
                                                <div class="status-title"> SUPERINTENDENCIA DE QUIEBRAS </div>
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
                            <div class="dashboard-stat2 bordered" style="height: 110px">
                                <div class="display">
                                    <img src="images/sii-icon.png" style="width: 15%;">
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
                            <div class="dashboard-stat2 bordered" style="height: 110px">
                                <div class="display">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="4">4</span>
                                            <small class="font-green-sharp">�</small>
                                        </h3>
                                        <div class="progress-info">
                                            <div class="status">
                                                <div class="status-title"> SOCIEDADES </div>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="images/empresas.png" style="width: 15%;">

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
                            <div class="dashboard-stat2 bordered" style="height: 110px">
                                <div class="display">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="4">4</span>
                                            <small class="font-green-sharp">�</small>
                                        </h3>
                                        <div class="progress-info">
                                            <div class="status">
                                                <div class="status-title"> SOCIEDADES </div>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="images/empresas.png" style="width: 15%;">
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
                    </div>
                    <!--fin de calugas con otros datos-->
                </div>




                <!--                    <div class="row widget-row">
                                        <div class="col-md-3">
                                             BEGIN WIDGET THUMB 
                                            <div class="widget-thumb widget-bg-color-white text-uppercase margin-bottom-20 bordered">
                                                <h4 class="widget-thumb-heading">Actividad comercial</h4>
                                                <div class="widget-thumb-wrap">
                                                    <img src="images/sii-icon.png" style="width: 20%;">
                                                    <div class="widget-thumb-body">
                                                        <span class="widget-thumb-subtitle">$</span>
                                                        <span class="widget-thumb-body-stat" data-counter="counterup" data-value="7,644">7,644</span>
                                                    </div>
                                                </div>
                                            </div>
                                             END WIDGET THUMB 
                                        </div>
                                        <div class="col-md-3">
                                             BEGIN WIDGET THUMB 
                                            <div class="widget-thumb widget-bg-color-white text-uppercase margin-bottom-20 bordered">
                                                <h4 class="widget-thumb-heading">Superintendencia de Quiebras</h4>
                                                <div class="widget-thumb-wrap">
                                                    <img src="images/superintendencia-icon.png" style="width: 20%;">
                
                                                    <div class="widget-thumb-body">
                                                        <span class="widget-thumb-subtitle">USD</span>
                                                        <span class="widget-thumb-body-stat" data-counter="counterup" data-value="1,293">1,293</span>
                                                    </div>
                                                </div>
                                            </div>
                                             END WIDGET THUMB 
                                        </div>
                                        <div class="col-md-3">
                                             BEGIN WIDGET THUMB 
                                            <div class="widget-thumb widget-bg-color-white text-uppercase margin-bottom-20 bordered">
                                                <h4 class="widget-thumb-heading">Sancion Search OFAC Treas </h4>
                                                <div class="widget-thumb-wrap">
                                                    <img src="images/sanctions_search-icon.png" style="width: 20%;">
                                                    <div class="widget-thumb-body">
                                                        <span class="widget-thumb-subtitle">USD</span>
                                                        <span class="widget-thumb-body-stat" data-counter="counterup" data-value="815">815</span>
                                                    </div>
                                                </div>
                                            </div>
                                             END WIDGET THUMB 
                                        </div>
                                        <div class="col-md-3">
                                             BEGIN WIDGET THUMB 
                                            <div class="widget-thumb widget-bg-color-white text-uppercase margin-bottom-20 bordered">
                                                <h4 class="widget-thumb-heading">Poder judicial </h4>
                                                <div class="widget-thumb-wrap">
                                                    <img src="images/info_previsional-icon.png" style="width: 15%;">
                                                    <div class="widget-thumb-body">
                                                        <span class="widget-thumb-subtitle">USD</span>
                                                        <span class="widget-thumb-body-stat" data-counter="counterup" data-value="5,071">5,071</span>
                                                    </div>
                                                </div>
                                            </div>
                                             END WIDGET THUMB 
                                        </div>
                                        <div class="col-md-3">
                                             BEGIN WIDGET THUMB 
                                            <div class="widget-thumb widget-bg-color-white text-uppercase margin-bottom-20 bordered">
                                                <h4 class="widget-thumb-heading">Informacion Previsional  </h4>
                                                <div class="widget-thumb-wrap">
                                                    <img src="images/info_previsional-icon.png" style="width: 15%;">
                                                    <div class="widget-thumb-body">
                                                        <span class="widget-thumb-subtitle">USD</span>
                                                        <span class="widget-thumb-body-stat" data-counter="counterup" data-value="5,071">5,071</span>
                                                    </div>
                                                </div>
                                            </div>
                                             END WIDGET THUMB 
                                        </div>
                                    </div>-->
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