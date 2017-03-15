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
                        <div class="page-head">
                            <!-- BEGIN PAGE TITLE -->
                            <div class="page-title">
                                <h1>Informacion de Cliente
                                    <small>para evaluacion</small>
                                </h1>
                            </div>
                            <!-- END PAGE TITLE -->
                        </div>
                        <!-- END PAGE HEAD-->

                        <div class="panel-body">
                            <div class="row">
                                <span style="display: inline-block;width: 155px;">Razon Social</span><span id="razonSocial"></span>:<br>
                                <span style="display: inline-block;width: 155px;">RUT</span><span id="rut"></span>:<br>
                            </div>
                        </div>

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
                                        <div class="desc"> New Feedbacks </div>
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
                                        <div class="desc"> Total Profit </div>
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
                                        <div class="desc"> New Orders </div>
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
                                        <div class="desc"> Brand Popularity </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!--fin indicadores principales-->

                        <!-- BEGIN PAGE BASE CONTENT -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-anchor font-green-sharp"></i>
                                            <span class="caption-subject font-green-sharp bold uppercase">Tab drop</span>
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
                                        <p> Basic exemple. Resize the window to see how the tabs are moved into the dropdown </p>
                                        <div class="tabbable tabbable-tabdrop">
                                            <ul class="nav nav-tabs">

                                                <li class="active">
                                                    <a href="#tab1" data-toggle="tab">Resumen</a>
                                                </li>
                                                <li>
                                                    <a href="#tab2" data-toggle="tab">Detalle valoracion</a>
                                                </li>
                                                <li>
                                                    <a href="#tab3" data-toggle="tab">Otros datos</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab1">

                                                    <div class="portlet box blue">
                                                        <div class="portlet-title">
                                                            <div class="caption">
                                                                <i class="fa fa-comments"></i>Resultado Evaluacion Cliente 
                                                            </div>
                                                            <div class="tools">
                                                                <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body">
                                                            <div class="table-scrollable">
                                                                <table class="table table-striped table-hover">
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
                                                                        <tr>
                                                                            <th>Consulta cedula</th>
                                                                            <td>SI</td>
                                                                            
                                                                        </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab2">
                                                    <div class="row">
                                                        <div class="col-lg-6" style="">
                                                            <div class="hpanel filter-item">
                                                                <a href="#">
                                                                    <div class="portlet light bordered">
                                                                        <div class="pull-right text-right">
                                                                            <small class="stat-label">Valor</small>
                                                                            <h4>250 <i class="fa fa-level-down text-danger"></i></h4>
                                                                        </div>
                                                                        <h4 class="m-b-xs">Sinacofi</h4>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="hpanel filter-item">
                                                                <a href="#">
                                                                    <div class="portlet light bordered">
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
                                                                    <div class="portlet light bordered">
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
                                                                    <div class="portlet light bordered">
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
                                                <div class="tab-pane" id="tab3">
                                                    <p> Howdy, I'm in Section 3. </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-lg-6 col-xs-12 col-sm-12">
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <span class="caption-subject bold uppercase font-dark">Score</span>
                                        </div>
                                        <div class="actions">
                                            <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#" data-original-title="" title=""> </a>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <div id="contenedor" style="min-width: 310px; max-width: 400px; height: 300px; margin: 0 auto"></div>
                                    </div>

                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-cursor font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Detalle ultimos 3 meses pagados</span>
                                        </div>
                                        <div class="actions">
                                            <a href="javascript:;" class="btn btn-sm btn-circle red easy-pie-chart-reload">
                                                <i class="fa fa-repeat"></i> Reload </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row">

                                            <div class="col-md-4">
                                                <div class="easy-pie-chart">
                                                    <div class="number transactions" data-percent="55">
                                                        <span>+55</span>% <canvas height="75" width="75"></canvas></div>
                                                    <a class="title" href="javascript:;"> Mes 3
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-4">
                                                <div class="easy-pie-chart">
                                                    <div class="number visits" data-percent="85">
                                                        <span>+85</span>% <canvas height="75" width="75"></canvas></div>
                                                    <a class="title" href="javascript:;"> Mes 2
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-4">
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


                            <div class="col-lg-6 col-xs-12 col-sm-12">
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <span class="caption-subject bold uppercase font-dark">RISK TIER</span>
                                            <span class="caption-helper">distance stats...</span>
                                        </div>
                                        <div class="actions">
                                            
                                            <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#" data-original-title="" title=""> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="dashboard_amchart_1" class="CSSAnimationChart" style="overflow: hidden; text-align: left;"><div style="position: relative;" class="amcharts-main-div"><div style="overflow: hidden; position: relative; text-align: left; width: 588px; height: 393px; padding: 0px; cursor: default;" class="amcharts-chart-div"><svg version="1.1" style="position: absolute; width: 588px; height: 393px; top: 0.200012px; left: 0px;"><desc>JavaScript chart by amCharts 3.17.1</desc><g><path cs="100,100" d="M0.5,0.5 L587.5,0.5 L587.5,392.5 L0.5,392.5 Z" fill="#FFFFFF" stroke="#000000" fill-opacity="0" stroke-width="1" stroke-opacity="0" class="amcharts-bg"></path><path cs="100,100" d="M0.5,0.5 L473.5,0.5 L473.5,340.5 L0.5,340.5 L0.5,0.5 Z" fill="#FFFFFF" stroke="#000000" fill-opacity="0" stroke-width="1" stroke-opacity="0" class="amcharts-plot-area" transform="translate(74,20)"></path></g><g><g class="amcharts-category-axis" transform="translate(74,20)"><g><path cs="100,100" d="M0.5,0.5 L0.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M0.5,340.5 L0.5,340.5 L0.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g><g><path cs="100,100" d="M43.5,0.5 L43.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M43.5,340.5 L43.5,340.5 L43.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g><g><path cs="100,100" d="M86.5,0.5 L86.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M86.5,340.5 L86.5,340.5 L86.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g><g><path cs="100,100" d="M129.5,0.5 L129.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M129.5,340.5 L129.5,340.5 L129.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g><g><path cs="100,100" d="M172.5,0.5 L172.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M172.5,340.5 L172.5,340.5 L172.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g><g><path cs="100,100" d="M215.5,0.5 L215.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M215.5,340.5 L215.5,340.5 L215.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g><g><path cs="100,100" d="M258.5,0.5 L258.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M258.5,340.5 L258.5,340.5 L258.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g><g><path cs="100,100" d="M301.5,0.5 L301.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M301.5,340.5 L301.5,340.5 L301.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g><g><path cs="100,100" d="M344.5,0.5 L344.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M344.5,340.5 L344.5,340.5 L344.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g><g><path cs="100,100" d="M387.5,0.5 L387.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M387.5,340.5 L387.5,340.5 L387.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g><g><path cs="100,100" d="M430.5,0.5 L430.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M430.5,340.5 L430.5,340.5 L430.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g><g><path cs="100,100" d="M473.5,0.5 L473.5,5.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(0,340)" class="amcharts-axis-tick"></path><path cs="100,100" d="M473.5,340.5 L473.5,340.5 L473.5,0.5" fill="none" stroke-width="1" stroke-opacity="0.1" stroke="#FFFFFF" class="amcharts-axis-grid"></path></g></g><g class="amcharts-value-axis value-axis-a1" transform="translate(74,20)" visibility="visible"></g><g class="amcharts-value-axis value-axis-a2" transform="translate(74,20)" visibility="visible"></g><g class="amcharts-value-axis value-axis-a3" transform="translate(74,20)" visibility="visible"></g></g><g></g><g></g><g></g><g><g transform="translate(74,20)"><g class="amcharts-graph-column amcharts-graph-g1" transform="translate(5,340)" visibility="visible"><path cs="100,100" d="M0.5,0.5 L0.5,-211.5 L34.5,-211.5 L34.5,0.5 L0.5,0.5 Z" fill="#08a3cc" stroke="#08a3cc" fill-opacity="0.7" stroke-width="1" stroke-opacity="1" class="amcharts-graph-column-front amcharts-graph-column-element"></path></g><g class="amcharts-graph-column amcharts-graph-g1" transform="translate(48,340)" visibility="visible"><path cs="100,100" d="M0.5,0.5 L0.5,-140.5 L34.5,-140.5 L34.5,0.5 L0.5,0.5 Z" fill="#08a3cc" stroke="#08a3cc" fill-opacity="0.7" stroke-width="1" stroke-opacity="1" class="amcharts-graph-column-front amcharts-graph-column-element"></path></g><g class="amcharts-graph-column amcharts-graph-g1" transform="translate(91,340)" visibility="visible"><path cs="100,100" d="M0.5,0.5 L0.5,-111.5 L34.5,-111.5 L34.5,0.5 L0.5,0.5 Z" fill="#08a3cc" stroke="#08a3cc" fill-opacity="0.7" stroke-width="1" stroke-opacity="1" class="amcharts-graph-column-front amcharts-graph-column-element"></path></g><g class="amcharts-graph-column amcharts-graph-g1" transform="translate(134,340)" visibility="visible"><path cs="100,100" d="M0.5,0.5 L0.5,-28.5 L34.5,-28.5 L34.5,0.5 L0.5,0.5 Z" fill="#08a3cc" stroke="#08a3cc" fill-opacity="0.7" stroke-width="1" stroke-opacity="1" class="amcharts-graph-column-front amcharts-graph-column-element"></path></g><g class="amcharts-graph-column amcharts-graph-g1" transform="translate(177,340)" visibility="visible"><path cs="100,100" d="M0.5,0.5 L0.5,-13.5 L34.5,-13.5 L34.5,0.5 L0.5,0.5 Z" fill="#08a3cc" stroke="#08a3cc" fill-opacity="0.7" stroke-width="1" stroke-opacity="1" class="amcharts-graph-column-front amcharts-graph-column-element"></path></g><g class="amcharts-graph-column amcharts-graph-g1" transform="translate(220,340)" visibility="visible"><path cs="100,100" d="M0.5,0.5 L0.5,-112.5 L34.5,-112.5 L34.5,0.5 L0.5,0.5 Z" fill="#08a3cc" stroke="#08a3cc" fill-opacity="0.7" stroke-width="1" stroke-opacity="1" class="amcharts-graph-column-front amcharts-graph-column-element"></path></g><g class="amcharts-graph-column amcharts-graph-g1" transform="translate(263,340)" visibility="visible"><path cs="100,100" d="M0.5,0.5 L0.5,-303.5 L34.5,-303.5 L34.5,0.5 L0.5,0.5 Z" fill="#08a3cc" stroke="#08a3cc" fill-opacity="0.7" stroke-width="1" stroke-opacity="1" class="amcharts-graph-column-front amcharts-graph-column-element"></path></g><g class="amcharts-graph-column amcharts-graph-g1" transform="translate(306,340)" visibility="visible"><path cs="100,100" d="M0.5,0.5 L0.5,-251.5 L34.5,-251.5 L34.5,0.5 L0.5,0.5 Z" fill="#08a3cc" stroke="#08a3cc" fill-opacity="0.7" stroke-width="1" stroke-opacity="1" class="amcharts-graph-column-front amcharts-graph-column-element"></path></g><g class="amcharts-graph-column amcharts-graph-g1" transform="translate(349,340)" visibility="visible"><path cs="100,100" d="M0.5,0.5 L0.5,-169.5 L34.5,-169.5 L34.5,0.5 L0.5,0.5 Z" fill="#08a3cc" stroke="#08a3cc" fill-opacity="0.4" stroke-width="1" stroke-opacity="1" class="amcharts-graph-column-front amcharts-graph-column-element"></path></g></g></g><g><g transform="translate(74,20)" class="amcharts-graph-column amcharts-graph-g1"><g></g></g><g transform="translate(74,20)" class="amcharts-graph-line amcharts-graph-g2"><g></g><g></g><g clip-path="url(#AmChartsEl-4)"><path cs="100,100" d="M22.5,305.5 L65.5,218.5 L108.5,228.5 L151.5,231.5 L194.5,174.5 L237.5,123.5 L280.5,55.5 L323.5,43.5 L366.5,24.5 L409.5,111.5 M0,0 L0,0" fill="none" stroke-width="1" stroke-opacity="1" stroke="#786c56" class="amcharts-graph-stroke"></path></g><clipPath id="AmChartsEl-4"><rect x="0" y="0" width="475" height="342" rx="0" ry="0" stroke-width="0"></rect></clipPath></g><g transform="translate(74,20)" class="amcharts-graph-line amcharts-graph-g3"><g></g><g></g><g clip-path="url(#AmChartsEl-5)"><path cs="100,100" d="M22.5,194.5 L65.5,222.5 L108.5,240.5 L151.5,287.5 L194.5,298.5 L237.5,202.5 L280.5,5.5 L323.5,44.5 L366.5,112.5 L409.5,209.5 M0,0 L0,0" fill="none" stroke-width="1" stroke-opacity="0.8" stroke="#e26a6a" class="amcharts-graph-stroke"></path></g><clipPath id="AmChartsEl-5"><rect x="0" y="0" width="475" height="342" rx="0" ry="0" stroke-width="0"></rect></clipPath></g></g><g></g><g><g class="amcharts-category-axis"><path cs="100,100" d="M0.5,0.5 L473.5,0.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#555555" transform="translate(74,360)" class="amcharts-axis-line"></path></g><g class="amcharts-value-axis value-axis-a1"><path cs="100,100" d="M0.5,0.5 L0.5,340.5" fill="none" stroke-width="1" stroke-opacity="0" stroke="#000000" transform="translate(74,20)" class="amcharts-axis-line" visibility="visible"></path></g><g class="amcharts-value-axis value-axis-a2"><path cs="100,100" d="M0.5,0.5 L0.5,340.5 L0.5,340.5" fill="none" stroke-width="1" stroke-opacity="0" stroke="#000000" transform="translate(547,20)" class="amcharts-axis-line" visibility="visible"></path></g><g class="amcharts-value-axis value-axis-a3"><path cs="100,100" d="M0.5,0.5 L0.5,340.5 L0.5,340.5" fill="none" stroke-width="1" stroke-opacity="0" stroke="#000000" transform="translate(547,20)" class="amcharts-axis-line" visibility="visible"></path></g></g><g><g transform="translate(74,20)" visibility="hidden"><path cs="100,100" d="M0.5,0.5 L0.5,0.5 L0.5,340.5" fill="none" stroke-width="1" stroke-opacity="0" stroke="#CC0000" class="amcharts-cursor-line" style="pointer-events: none;" visibility="hidden"></path></g></g><g></g><g><g transform="translate(74,20)" class="amcharts-graph-column amcharts-graph-g1"></g><g transform="translate(74,20)" class="amcharts-graph-line amcharts-graph-g2"><circle r="5" cx="0" cy="0" fill="#89c4f4" stroke="#02617a" fill-opacity="1" stroke-width="2" stroke-opacity="1" transform="translate(22,305)" class="amcharts-graph-bullet"></circle><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" style="pointer-events: none;" class="amcharts-graph-label" transform="translate(30,303)"><tspan y="6" x="0">Miami</tspan></text><circle r="3.5" cx="0" cy="0" fill="#89c4f4" stroke="#02617a" fill-opacity="1" stroke-width="2" stroke-opacity="1" transform="translate(65,218)" class="amcharts-graph-bullet"></circle><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" style="pointer-events: none;" class="amcharts-graph-label" transform="translate(72,218)"><tspan y="6" x="0"></tspan></text><circle r="5" cx="0" cy="0" fill="#89c4f4" stroke="#02617a" fill-opacity="1" stroke-width="2" stroke-opacity="1" transform="translate(108,228)" class="amcharts-graph-bullet"></circle><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" style="pointer-events: none;" class="amcharts-graph-label" transform="translate(116,228)"><tspan y="6" x="0"></tspan></text><circle r="8" cx="0" cy="0" fill="#89c4f4" stroke="#02617a" fill-opacity="1" stroke-width="2" stroke-opacity="1" transform="translate(151,231)" class="amcharts-graph-bullet"></circle><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" style="pointer-events: none;" class="amcharts-graph-label" transform="translate(162,229)"><tspan y="6" x="0">Houston</tspan></text><circle r="8.5" cx="0" cy="0" fill="#89c4f4" stroke="#02617a" fill-opacity="1" stroke-width="2" stroke-opacity="1" transform="translate(194,174)" class="amcharts-graph-bullet"></circle><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" style="pointer-events: none;" class="amcharts-graph-label" transform="translate(206,174)"><tspan y="6" x="0"></tspan></text><circle r="5.5" cx="0" cy="0" fill="#89c4f4" stroke="#02617a" fill-opacity="1" stroke-width="2" stroke-opacity="1" transform="translate(237,123)" class="amcharts-graph-bullet"></circle><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" style="pointer-events: none;" class="amcharts-graph-label" transform="translate(246,123)"><tspan y="6" x="0"></tspan></text><circle r="5" cx="0" cy="0" fill="#89c4f4" stroke="#02617a" fill-opacity="1" stroke-width="2" stroke-opacity="1" transform="translate(280,55)" class="amcharts-graph-bullet"></circle><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" style="pointer-events: none;" class="amcharts-graph-label" transform="translate(288,55)"><tspan y="6" x="0"></tspan></text><circle r="9" cx="0" cy="0" fill="#89c4f4" stroke="#02617a" fill-opacity="1" stroke-width="2" stroke-opacity="1" transform="translate(323,43)" class="amcharts-graph-bullet"></circle><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" style="pointer-events: none;" class="amcharts-graph-label" transform="translate(335,41)"><tspan y="6" x="0">Denver</tspan></text><circle r="6" cx="0" cy="0" fill="#89c4f4" stroke="#02617a" fill-opacity="1" stroke-width="2" stroke-opacity="1" transform="translate(366,24)" class="amcharts-graph-bullet"></circle><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" style="pointer-events: none;" class="amcharts-graph-label" transform="translate(375,24)"><tspan y="6" x="0"></tspan></text><circle r="4" cx="0" cy="0" fill="#89c4f4" stroke="#02617a" fill-opacity="1" stroke-width="2" stroke-opacity="1" transform="translate(409,111)" class="amcharts-graph-bullet lastBullet"></circle><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" style="pointer-events: none;" class="amcharts-graph-label" transform="translate(416,109)"><tspan y="6" x="0">Las Vegas</tspan></text></g><g transform="translate(74,20)" class="amcharts-graph-line amcharts-graph-g3"><path cs="100,100" d="M-3.5,4.5 L4.5,4.5 L4.5,-3.5 L-3.5,-3.5 Z" fill="#e26a6a" stroke="#e26a6a" fill-opacity="1" stroke-width="1" stroke-opacity="0.8" transform="translate(22,194)" class="amcharts-graph-bullet"></path><path cs="100,100" d="M-3.5,4.5 L4.5,4.5 L4.5,-3.5 L-3.5,-3.5 Z" fill="#e26a6a" stroke="#e26a6a" fill-opacity="1" stroke-width="1" stroke-opacity="0.8" transform="translate(65,222)" class="amcharts-graph-bullet"></path><path cs="100,100" d="M-3.5,4.5 L4.5,4.5 L4.5,-3.5 L-3.5,-3.5 Z" fill="#e26a6a" stroke="#e26a6a" fill-opacity="1" stroke-width="1" stroke-opacity="0.8" transform="translate(108,240)" class="amcharts-graph-bullet"></path><path cs="100,100" d="M-3.5,4.5 L4.5,4.5 L4.5,-3.5 L-3.5,-3.5 Z" fill="#e26a6a" stroke="#e26a6a" fill-opacity="1" stroke-width="1" stroke-opacity="0.8" transform="translate(151,287)" class="amcharts-graph-bullet"></path><path cs="100,100" d="M-3.5,4.5 L4.5,4.5 L4.5,-3.5 L-3.5,-3.5 Z" fill="#e26a6a" stroke="#e26a6a" fill-opacity="1" stroke-width="1" stroke-opacity="0.8" transform="translate(194,298)" class="amcharts-graph-bullet"></path><path cs="100,100" d="M-3.5,4.5 L4.5,4.5 L4.5,-3.5 L-3.5,-3.5 Z" fill="#e26a6a" stroke="#e26a6a" fill-opacity="1" stroke-width="1" stroke-opacity="0.8" transform="translate(237,202)" class="amcharts-graph-bullet"></path><path cs="100,100" d="M-3.5,4.5 L4.5,4.5 L4.5,-3.5 L-3.5,-3.5 Z" fill="#e26a6a" stroke="#e26a6a" fill-opacity="1" stroke-width="1" stroke-opacity="0.8" transform="translate(280,5)" class="amcharts-graph-bullet"></path><path cs="100,100" d="M-3.5,4.5 L4.5,4.5 L4.5,-3.5 L-3.5,-3.5 Z" fill="#e26a6a" stroke="#e26a6a" fill-opacity="1" stroke-width="1" stroke-opacity="0.8" transform="translate(323,44)" class="amcharts-graph-bullet"></path><path cs="100,100" d="M-3.5,4.5 L4.5,4.5 L4.5,-3.5 L-3.5,-3.5 Z" fill="#e26a6a" stroke="#e26a6a" fill-opacity="1" stroke-width="1" stroke-opacity="0.8" transform="translate(366,112)" class="amcharts-graph-bullet"></path><path cs="100,100" d="M-3.5,4.5 L4.5,4.5 L4.5,-3.5 L-3.5,-3.5 Z" fill="#e26a6a" stroke="#e26a6a" fill-opacity="1" stroke-width="1" stroke-opacity="0.8" transform="translate(409,209)" class="amcharts-graph-bullet"></path></g></g><g><g class="amcharts-category-axis" transform="translate(74,20)" visibility="visible"><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="middle" transform="translate(21.500000022622054,353)" class="amcharts-axis-label"><tspan y="6" x="0">05</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="middle" transform="translate(64.50000002262206,353)" class="amcharts-axis-label"><tspan y="6" x="0">06</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="middle" transform="translate(107.50000002262206,353)" class="amcharts-axis-label"><tspan y="6" x="0">07</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="middle" transform="translate(150.50000002262206,353)" class="amcharts-axis-label"><tspan y="6" x="0">08</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="middle" transform="translate(193.50000002262206,353)" class="amcharts-axis-label"><tspan y="6" x="0">09</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="middle" transform="translate(236.50000002262206,353)" class="amcharts-axis-label"><tspan y="6" x="0">10</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="middle" transform="translate(279.50000002262203,353)" class="amcharts-axis-label"><tspan y="6" x="0">11</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="middle" transform="translate(322.50000002262203,353)" class="amcharts-axis-label"><tspan y="6" x="0">12</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="middle" transform="translate(365.50000002262203,353)" class="amcharts-axis-label"><tspan y="6" x="0">13</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="middle" transform="translate(408.50000002262203,353)" class="amcharts-axis-label"><tspan y="6" x="0">14</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="middle" transform="translate(451.50000002262203,353)" class="amcharts-axis-label"><tspan y="6" x="0">15</tspan></text></g><g class="amcharts-value-axis value-axis-a1" transform="translate(74,20)" visibility="visible"><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(-12,337.5)" class="amcharts-axis-label"><tspan y="6" x="0">200</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(-12,299.5)" class="amcharts-axis-label"><tspan y="6" x="0">250</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(-12,261.5)" class="amcharts-axis-label"><tspan y="6" x="0">300</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(-12,224.5)" class="amcharts-axis-label"><tspan y="6" x="0">350</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(-12,186.5)" class="amcharts-axis-label"><tspan y="6" x="0">400</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(-12,148.5)" class="amcharts-axis-label"><tspan y="6" x="0">450</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(-12,110.5)" class="amcharts-axis-label"><tspan y="6" x="0">500</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(-12,73.5)" class="amcharts-axis-label"><tspan y="6" x="0">550</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(-12,35.5)" class="amcharts-axis-label"><tspan y="6" x="0">600</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(-12,-2.5)" class="amcharts-axis-label"><tspan y="6" x="0">650</tspan></text><text y="7" fill="#6c7b88" font-family="Open Sans" font-size="13px" opacity="1" font-weight="bold" text-anchor="middle" class="amcharts-axis-title" transform="translate(-52,170) rotate(-90)"><tspan y="7" x="0">distance</tspan></text></g><g class="amcharts-value-axis value-axis-a2" transform="translate(74,20)" visibility="visible"></g><g class="amcharts-value-axis value-axis-a3" transform="translate(74,20)" visibility="visible"><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(464,330.5)" class="amcharts-axis-label"><tspan y="6" x="0">03h 20min</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(464,281.5)" class="amcharts-axis-label"><tspan y="6" x="0">05h 00min</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(464,233.5)" class="amcharts-axis-label"><tspan y="6" x="0">06h 40min</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(464,184.5)" class="amcharts-axis-label"><tspan y="6" x="0">08h 20min</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(464,136.5)" class="amcharts-axis-label"><tspan y="6" x="0">10h 00min</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(464,87.5)" class="amcharts-axis-label"><tspan y="6" x="0">11h 40min</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="end" transform="translate(464,39.5)" class="amcharts-axis-label"><tspan y="6" x="0">13h 20min</tspan></text><text y="7" fill="#6c7b88" font-family="Open Sans" font-size="13px" opacity="1" font-weight="bold" text-anchor="middle" class="amcharts-axis-title" transform="translate(490,170) rotate(-90)"><tspan y="7" x="0">duration</tspan></text></g></g><g><g></g></g><g></g><g></g><g></g></svg><a href="http://www.amcharts.com/javascript-charts/" title="JavaScript charts" style="position: absolute; text-decoration: none; color: rgb(108, 123, 136); font-family: Open Sans; font-size: 12px; opacity: 0.7; display: block; left: 79px; top: 25px;">JS chart by amCharts</a></div><div style="overflow: hidden; position: relative; text-align: left; width: 588px; height: 107px; cursor: default;" class="amChartsLegend amcharts-legend-div"><svg version="1.1" style="position: absolute; width: 588px; height: 107px;"><desc>JavaScript chart by amCharts 3.17.1</desc><g transform="translate(74,0)"><path cs="100,100" d="M0.5,0.5 L473.5,0.5 L473.5,96.5 L0.5,96.5 Z" fill="#FFFFFF" stroke="#000000" fill-opacity="0" stroke-width="1" stroke-opacity="0" class="amcharts-legend-bg"></path><g transform="translate(0,11)"><g cursor="pointer" class="amcharts-legend-item-g1" transform="translate(0,0)"><path cs="100,100" d="M-15.5,8.5 L16.5,8.5 L16.5,-7.5 L-15.5,-7.5 Z" fill="#08a3cc" stroke="#08a3cc" fill-opacity="0.7" stroke-width="1" stroke-opacity="1" transform="translate(16,8)" class="amcharts-graph-column amcharts-graph-g1 amcharts-legend-marker"></path><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" class="amcharts-legend-label" transform="translate(37,7)"><tspan y="6" x="0">distance</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" class="amcharts-legend-value" transform="translate(110,7)">total: 3,581 mi</text><rect x="32" y="0" width="213.5" height="19" rx="0" ry="0" stroke-width="0" stroke="none" fill="#fff" fill-opacity="0.005"></rect></g><g cursor="pointer" class="amcharts-legend-item-g2" transform="translate(0,29)"><g class="amcharts-graph-line amcharts-graph-g2 amcharts-legend-marker"><path cs="100,100" d="M0.5,8.5 L32.5,8.5" fill="none" stroke-width="1" stroke-opacity="1" stroke="#786c56" class="amcharts-graph-stroke"></path><circle r="4" cx="0" cy="0" fill="#89c4f4" stroke="#02617a" fill-opacity="1" stroke-width="2" stroke-opacity="1" class="amcharts-graph-bullet" transform="translate(17,8)"></circle></g><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" class="amcharts-legend-label" transform="translate(37,7)"><tspan y="6" x="0">latitude/city</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" class="amcharts-legend-value" transform="translate(129,7)"> </text><rect x="32" y="0" width="232.5" height="19" rx="0" ry="0" stroke-width="0" stroke="none" fill="#fff" fill-opacity="0.005"></rect></g><g cursor="pointer" class="amcharts-legend-item-g3" transform="translate(0,58)"><g class="amcharts-graph-line amcharts-graph-g3 amcharts-legend-marker"><path cs="100,100" d="M0.5,8.5 L32.5,8.5" fill="none" stroke-width="1" stroke-opacity="0.8" stroke="#e26a6a" class="amcharts-graph-stroke"></path><path cs="100,100" d="M-3.5,4.5 L4.5,4.5 L4.5,-3.5 L-3.5,-3.5 Z" fill="#e26a6a" stroke="#e26a6a" fill-opacity="1" stroke-width="1" stroke-opacity="0.8" class="amcharts-graph-bullet" transform="translate(17,8)"></path></g><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" class="amcharts-legend-label" transform="translate(37,7)"><tspan y="6" x="0">duration</tspan></text><text y="6" fill="#6c7b88" font-family="Open Sans" font-size="12px" opacity="1" text-anchor="start" class="amcharts-legend-value" transform="translate(110,7)"> </text><rect x="32" y="0" width="213.5" height="19" rx="0" ry="0" stroke-width="0" stroke="none" fill="#fff" fill-opacity="0.005"></rect></g></g></g></svg></div></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <!--datos de informacion previsional-->

                            <div class="col-md-4">
                                <div class="dashboard-stat2 bordered">
                                    <div class="display">
                                        <img src="images/info_previsional-icon.png" style="width: 15%;">
                                        <div class="number">
                                            <h3 class="font-green-sharp">
                                                <span data-counter="counterup" data-value="7800">7800</span>
                                                <small class="font-green-sharp">$</small>
                                            </h3>
                                            <small style="display: inline-block;width: 300px;">INFORMACION PREVISIONAL</small>
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                                <span class="sr-only">76% progress</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> progress </div>
                                            <div class="status-number"> 76% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="dashboard-stat2 bordered">
                                    <div class="display">
                                        <img src="images/poder_judicial-icon.png" style="width: 15%;">
                                        <div class="number">
                                            <h3 class="font-green-sharp">
                                                <span data-counter="counterup" data-value="7800">7800</span>
                                                <small class="font-green-sharp">$</small>
                                            </h3>
                                            <small style="display: inline-block;width: 300px;">PODER JUDICIAL</small>
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                                <span class="sr-only">76% progress</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> progress </div>
                                            <div class="status-number"> 76% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="dashboard-stat2 bordered">
                                    <div class="display">
                                        <img src="images/sanctions_search-icon.png" style="width: 15%;">
                                        <div class="number">
                                            <h3 class="font-green-sharp">
                                                <span data-counter="counterup" data-value="7800">7800</span>
                                                <small class="font-green-sharp">$</small>
                                            </h3>
                                            <small style="display: inline-block;width: 300px;">SANCTIONS OFAC</small>
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                                <span class="sr-only">76% progress</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> progress </div>
                                            <div class="status-number"> 76% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <!--datos de informacion previsional-->

                            <!--INFORMACION DE SUPERINTENDENCIA DE QUIEBRES-->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2 bordered">
                                    <div class="display">
                                        <img src="images/superintendencia-icon.png" style="width: 15%;">
                                        <div class="number">
                                            <h3 class="font-green-sharp">
                                                <span data-counter="counterup" data-value="7800">7800</span>
                                                <small class="font-green-sharp">$</small>
                                            </h3>
                                            <small style="display: inline-block;width: 300px;">SUPERINTENDENCIA DE QUIEBRAS</small>
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                                <span class="sr-only">76% progress</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> progress </div>
                                            <div class="status-number"> 76% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2 bordered">
                                    <div class="display">
                                        <img src="images/sii-icon.png" style="width: 15%;">
                                        <div class="number">
                                            <h3 class="font-green-sharp">
                                                <span data-counter="counterup" data-value="7800">7800</span>
                                                <small class="font-green-sharp">$</small>
                                            </h3>
                                            <small style="display: inline-block;width: 300px;">ACTIVIDAD COMERCIAL</small>
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                                <span class="sr-only">76% progress</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> progress </div>
                                            <div class="status-number"> 76% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--informacion de sociedades-->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2 bordered">
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-green-sharp">
                                                <span data-counter="counterup" data-value="4">4</span>
                                                <small class="font-green-sharp">°</small>
                                            </h3>
                                            <small style="display: inline-block;width: 300px;">Sociedades</small>
                                        </div>
                                        <img src="images/empresas.png" style="width: 15%;">

                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 0%;" class="progress-bar progress-bar-success green-sharp">
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> numero de sociedades </div>
                                            <div class="status-number"> </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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