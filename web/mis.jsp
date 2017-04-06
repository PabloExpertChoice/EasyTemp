<%-- 
    Document   : risktier
    Created on : 22-03-2017, 16:56:49
    Author     : ignacio
--%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html>
    <!--<![endif]-->
    <!-- BEGIN HEAD -->
    <!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Mar 2017 15:40:53 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
    <head>
        <meta charset="utf-8" />
        <title>Risk Tier</title>
        <link rel="shortcut icon" href="images/logo1.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #4 for statistics, charts, recent events and reports" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
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
                                <h1>Administraci&#243;n Risk Tier</h1>
                            </div>
                            <!-- END PAGE TITLE -->
                            <!-- BEGIN PAGE TOOLBAR -->
                            <div class="page-toolbar" style="font-size: 13px;">
                                <!-- BEGIN THEME PANEL -->
                                <i class="fa fa-home" style="color: #69788c;"> Home</i> 
                                <i class="fa fa-angle-left"></i>
                                <a href="risktier_config.jsp"><i class="fa fa-cogs"> Configuraci&#243;n</i>  </a>
                                <i class="fa fa-angle-left"></i>
                                <a href="risktier_tree.jsp"><i class="fa fa-reorder"> Tree</i>  </a>
                                <!-- END THEME PANEL -->
                            </div>
                            <!-- END PAGE TOOLBAR -->
                        </div>
                        <!-- END PAGE HEAD-->

                        <!-- Ruta-->
                        <ul class="page-breadcrumb breadcrumb">
                            <li>
                                <a href="index.jsp">Inicio</a>
                            </li>
                            <i class="fa fa-circle"></i>
                            <li>
                                MIS Riesgo de cr&#233;dito
                            </li>
                        </ul>
                        <!-- Fin ruta -->

                        <div class="row">
                            <!-- BEGIN SAMPLE TABLE PORTLET-->
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                <div class="panel panel-primary" style="border:  0;">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">P&#233;rdida Esperada por Admisi&#243;n de Clientes </h3>
                                    </div>
                                    <div class="panel-body"> 
                                        <div id="container" style="width: 100%; margin: 0 auto"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Distribuci&#243;n de la Poblaci&#243;n </h3>
                                    </div>
                                    <div class="panel-body"> 
                                        <div id="container2" style="width: 100%; margin: 0 auto"></div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Gr&#225;fico ROC </h3>
                                    </div>
                                    <div class="panel-body"> 
                                        <div id="container3" style="width: 100%; margin: 0 auto"></div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Gr&#225;fico K-S </h3>
                                    </div>
                                    <div class="panel-body"> 
                                        <div id="container4" style="width: 100%; margin: 0 auto"></div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Gr&#225;fico AUC </h3>
                                    </div>
                                    <div class="panel-body"> 
                                        <div id="container5" style="width: 100%; margin: 0 auto"></div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Evaluaci&#243;n de Vintage </h3>
                                    </div>
                                    <div class="panel-body"> 
                                        <div id="container6" style="width: 100%; margin: 0 auto"></div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Cuotas en Mora</h3>

                                    </div>
                                    <div class="panel-body">   
                                        <div style="overflow-x: auto;max-height: 485px">
                                            <table id="container-11" class="table table-bordered" style="width: 100%;min-height: 380px;max-width: 485px;">
                                                <tbody>
                                                    <tr>
                                                        <td rowspan="12"><br><br><br><br><br>W<br><br>a<br><br>s<br></td><td colspan="10" style="text-align: center;">is</td></tr><tr><td> </td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td></tr><tr><td>0</td>
                                                        <td style="background: orange;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td>
                                                    </tr><tr><td>1</td>
                                                        <td style="background: #1bbc9b;color:black">0</td>
                                                        <td style="background: orange;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td>
                                                        <td style="background: #f3565d;color:black">0</td><td style="background: #f3565d;color:black">0</td><td style="background: #f3565d;color:black">0</td><td style="background: #f3565d;color:black">0</td></tr><tr><td>2</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: orange;color:black">0</td><td style="background: #f3565d;color:black">0</td><td style="background: #f3565d;color:black">2</td><td style="background: #f3565d;color:black">0</td><td style="background: #f3565d;color:black">1</td><td style="background: #f3565d;color:black">1</td><td style="background: #f3565d;color:black">1</td></tr><tr><td>3</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">1</td><td style="background: orange;color:black">0</td><td style="background: #f3565d;color:black">0</td><td style="background: #f3565d;color:black">2</td><td style="background: #f3565d;color:black">3</td><td style="background: #f3565d;color:black">7</td><td style="background: #f3565d;color:black">1</td></tr><tr><td>4</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: orange;color:black">1</td><td style="background: #f3565d;color:black">4</td><td style="background: #f3565d;color:black">2</td><td style="background: #f3565d;color:black">0</td><td style="background: #f3565d;color:black">2</td></tr><tr><td>5</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: orange;color:black">1</td><td style="background: #f3565d;color:black">2</td><td style="background: #f3565d;color:black">1</td><td style="background: #f3565d;color:black">2</td></tr><tr><td>6</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">1</td><td style="background: #1bbc9b;color:black">1</td><td style="background: #1bbc9b;color:black">2</td><td style="background: #1bbc9b;color:black">1</td><td style="background: orange;color:black">2</td><td style="background: #f3565d;color:black">0</td><td style="background: #f3565d;color:black">4</td></tr><tr><td>7</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">1</td><td style="background: #1bbc9b;color:black">3</td><td style="background: #1bbc9b;color:black">1</td><td style="background: #1bbc9b;color:black">2</td><td style="background: #1bbc9b;color:black">4</td><td style="background: orange;color:black">1</td><td style="background: #f3565d;color:black">2</td></tr><tr><td>8</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">2</td><td style="background: #1bbc9b;color:black">3</td><td style="background: #1bbc9b;color:black">1</td><td style="background: #1bbc9b;color:black">2</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: orange;color:black">1</td></tr><tr><td>9</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">1</td><td style="background: #1bbc9b;color:black">6</td><td style="background: #1bbc9b;color:black">0</td><td style="background: #1bbc9b;color:black">3</td><td style="background: #1bbc9b;color:black">2</td><td style="background: #1bbc9b;color:black">4</td><td style="background: #1bbc9b;color:black">1</td></tr></tbody></table>
                                            <table id="container-11b" class="table table-bordered" style="width: 100%"><thead><tr><th>Neutras</th><th>Positivas</th><th>Negativas</th><th>Total</th></tr></thead><tbody><tr><td>6</td><td>42</td><td>37</td><td>85</td></tr><tr><td>7.06%</td><td>49.41%</td><td>43.53%</td><td>100.00%</td></tr></tbody></table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title"> An&#225;lisis Roll Rates </h3>

                                    </div>
                                    <div class="panel-body">   

                                        <div style="overflow-x: auto;max-height: 485px;;height: 485px">
                                            <table id="tblRollRates" class="table table-bordered" style="width: 100%;min-height: 380px">
                                                <thead><tr><th></th><th>12-2016</th><th>11-2016</th><th>10-2016</th><th>09-2016</th><th>08-2016</th><th>06-2016</th><th>02-2016</th><th>01-2016</th></tr></thead>
                                                <tbody><tr><td>0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td></td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>2</td><td></td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td>0.00</td><td>1.72</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>4</td><td></td><td>0.00</td><td>0.00</td><td>0.00</td><td>1.21</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>5</td><td></td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.97</td><td>0.00</td><td>0.00</td></tr><tr><td>6</td><td></td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>7</td><td></td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>8</td><td></td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>9</td><td></td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>10</td><td></td><td>0.51</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Evoluci&#243;n mensual Roll Rates </h3>
                                    </div>
                                    <div class="panel-body"> 
                                        <div id="container7" style="width: 100%; margin: 0 auto"></div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Forzajes de Pol&#237;ticas</h3>
                                    </div>
                                    <div class="panel-body"> 
                                        <div id="container8" style="width: 100%; margin: 0 auto"></div>

                                    </div>
                                </div>
                            </div>
<!--                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Evolución taza de Vintage </h3>
                                    </div>
                                    <div class="panel-body">  
                                        <div style="overflow-x: auto;width:100%">
                                            <table id="tblVintage" class="table table-bordered" style="width: 100%">
                                                <thead><tr><th></th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th><th>8</th><th>9</th><th>10</th><th>11</th><th>12</th><th>13</th><th>14</th><th>15</th><th>16</th></tr></thead><tbody><tr><td>01-01-2015</td><td>0%</td><td>66%</td><td>32%</td><td>50%</td><td>20%</td><td>22%</td><td>30%</td><td>0%</td><td>43%</td><td>37%</td><td>0%</td><td>21%</td><td>45%</td><td>0%</td><td>0%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">15%</td></tr><tr><td>01-02-2015</td><td>0%</td><td>53%</td><td>79%</td><td>12%</td><td>51%</td><td>6%</td><td>14%</td><td>22%</td><td>42%</td><td>68%</td><td>39%</td><td>14%</td><td>0%</td><td>30%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">12%</td><td></td></tr><tr><td>01-03-2015</td><td>0%</td><td>10%</td><td>40%</td><td>22%</td><td>37%</td><td>19%</td><td>14%</td><td>49%</td><td>0%</td><td>54%</td><td>8%</td><td>0%</td><td>20%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">11%</td><td></td><td></td></tr><tr><td>01-04-2015</td><td>0%</td><td>0%</td><td>19%</td><td>32%</td><td>20%</td><td>6%</td><td>49%</td><td>23%</td><td>22%</td><td>15%</td><td>0%</td><td>29%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">7%</td><td></td><td></td><td></td></tr><tr><td>01-05-2015</td><td>0%</td><td>26%</td><td>31%</td><td>32%</td><td>60%</td><td>5%</td><td>73%</td><td>13%</td><td>33%</td><td>45%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">39%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>01-06-2015</td><td>0%</td><td>28%</td><td>21%</td><td>11%</td><td>11%</td><td>14%</td><td>22%</td><td>15%</td><td>18%</td><td>58%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">68%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>01-07-2015</td><td>0%</td><td>48%</td><td>11%</td><td>34%</td><td>23%</td><td>27%</td><td>16%</td><td>0%</td><td>13%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">30%</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>01-08-2015</td><td>0%</td><td>31%</td><td>15%</td><td>23%</td><td>23%</td><td>15%</td><td>16%</td><td>23%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">21%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>01-09-2015</td><td>0%</td><td>16%</td><td>11%</td><td>10%</td><td>79%</td><td>54%</td><td>49%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">65%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>01-10-2015</td><td>0%</td><td>44%</td><td>0%</td><td>9%</td><td>54%</td><td>41%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">21%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>01-11-2015</td><td>27%</td><td>20%</td><td>15%</td><td>11%</td><td>8%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">20%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>01-12-2015</td><td>33%</td><td>0%</td><td>0%</td><td>0%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">57%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>01-01-2016</td><td>0%</td><td>4%</td><td>0%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">16%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>01-02-2016</td><td>1%</td><td>21%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">3%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>01-03-2016</td><td>37%</td><td style="background: rgb(1, 170, 221) none repeat scroll 0% 0%;">16%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table>
                                        </div>
                                    </div>
                                </div>
                            </div>-->
                        </div>
                        <!-- END SAMPLE TABLE PORTLET-->
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
        <!-- END THEME LAYOUT SCRIPTS -->
        <!-- Google Code for Universal Analytics -->

        <!--librerias para grafico highcharts-->
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="https://code.highcharts.com/highcharts-more.js"></script>
        <script src="https://code.highcharts.com/modules/exporting.js"></script>
        <script src="js/graficos_mis.js" type="text/javascript"></script>

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