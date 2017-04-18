<%-- 
    Document   : risktier
    Created on : 22-03-2017, 16:56:49
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
                               <a href="javascript:;" onclick="go('cmd', [{id: 'code', val: 'index'}], undefined, 'cmd');">Inicio</a>
                            </li>
                            <i class="fa fa-circle"></i>
                            <li>
                                Administraci&#243;n Risk Tier
                            </li>
                            <i class="fa fa-circle"></i>
                            <li>
                                Home
                            </li>
                        </ul>
                        <!-- Fin ruta -->

                        <div class="row">
                            <div class="col-md-12 col-lg-12">
                                <div class="portlet light">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-database"></i> Risk Tier 
                                            <br><br>
                                            <div class="col-md-2 col-lg-2">
                                                <select name="order_status" class="form-control form-filter input-sm" style="width: 300px;">
                                                    <option value="">Natural</option>
                                                    <option value="pending">Jur&#237;dico</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="tools">
                                            <!--<a href="#" class="collapse" data-original-title="" title=""> </a>-->
                                            <br>
                                            <button type="button" class="btn blue mt-ladda-btn ladda-button btn-circle btn-outline" data-style="slide-up" data-spinner-color="#333">
                                                <span class="ladda-label"><i class="fa fa-wrench"></i> Configuraci&#243;n</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <!-- BEGIN SAMPLE TABLE PORTLET-->
                                        <div class="portlet box blue">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <i class="fa fa-comments"></i>
                                                    Contextual Rows
                                                </div>
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
                                                                <th> renta / score </th>
                                                                <th style="text-align: center;">100</th>
                                                                <th style="text-align: center;">250</th>
                                                                <th style="text-align: center;">500</th>
                                                                <th style="text-align: center;">600</th>
                                                                <th style="text-align: center;">650</th>
                                                                <th style="text-align: center;">700</th>
                                                                <th style="text-align: center;">750</th>
                                                                <th style="text-align: center;">800</th>
                                                                <th style="text-align: center;">850</th>
                                                                <th style="text-align: center;">900</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th style="text-align: center;">200000</th><td id="87_77">F</td><td id="87_78">F</td><td id="87_79">F</td><td id="87_80">F</td><td id="87_81">E</td><td id="87_82">E</td><td id="87_83">E</td><td id="87_84">E</td><td id="87_85">E</td><td id="87_86">E</td></tr><tr><th style="text-align: center;">250000</th><td id="88_77">F</td><td id="88_78">F</td><td id="88_79">F</td><td id="88_80">F</td><td id="88_81">E</td><td id="88_82">E</td><td id="88_83">D</td><td id="88_84">D</td><td id="88_85">D</td><td id="88_86">D</td></tr><tr><th style="text-align: center;">300000</th><td id="89_77">F</td><td id="89_78">F</td><td id="89_79">F</td><td id="89_80">E</td><td id="89_81">E</td><td id="89_82">E</td><td id="89_83">D</td><td id="89_84">C</td><td id="89_85">C</td><td id="89_86">C</td></tr><tr><th style="text-align: center;">350000</th><td id="90_77">F</td><td id="90_78">F</td><td id="90_79">E</td><td id="90_80">D</td><td id="90_81">D</td><td id="90_82">C</td><td id="90_83">C</td><td id="90_84">B</td><td id="90_85">B</td><td id="90_86">B</td></tr><tr><th style="text-align: center;">450000</th><td id="91_77">F</td><td id="91_78">F</td><td id="91_79">D</td><td id="91_80">D</td><td id="91_81">C</td><td id="91_82">C</td><td id="91_83">B</td><td id="91_84">B</td><td id="91_85">B</td><td id="91_86">A</td></tr><tr><th style="text-align: center;">600000</th><td id="92_77">F</td><td id="92_78">F</td><td id="92_79">D</td><td id="92_80">D</td><td id="92_81">C</td><td id="92_82">C</td><td id="92_83">B</td><td id="92_84">A</td><td id="92_85">A</td><td id="92_86">A</td></tr><tr><th style="text-align: center;">800000</th><td id="93_77">E</td><td id="93_78">F</td><td id="93_79">D</td><td id="93_80">C</td><td id="93_81">B</td><td id="93_82">C</td><td id="93_83">A</td><td id="93_84">A</td><td id="93_85">A</td><td id="93_86">A</td></tr><tr><th style="text-align: center;">900000</th><td id="94_77">E</td><td id="94_78">E</td><td id="94_79">C</td><td id="94_80">C</td><td id="94_81">B</td><td id="94_82">C</td><td id="94_83">A</td><td id="94_84">A</td><td id="94_85">A</td><td id="94_86">A</td></tr><tr><th style="text-align: center;">1500000</th><td id="95_77">E</td><td id="95_78">E</td><td id="95_79">C</td><td id="95_80">C</td><td id="95_81">B</td><td id="95_82">B</td><td id="95_83">A</td><td id="95_84">A</td><td id="95_85">A</td><td id="95_86">A</td></tr><tr><th style="text-align: center;">2500000</th><td id="96_77">E</td><td id="96_78">E</td><td id="96_79">C</td><td id="96_80">C</td><td id="96_81">B</td><td id="96_82">B</td><td id="96_83">A</td><td id="96_84">A</td><td id="96_85">A</td><td id="96_86">A</td></tr></tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END SAMPLE TABLE PORTLET-->
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
        <!-- END THEME LAYOUT SCRIPTS -->
        <script src="js/funciones.js"></script>
        <!-- End -->
        
        <!-- Codigo A.M.-->
        <script src="js/sidebar.js"></script>
        <script> menuSelected("<%=request.getParameter("code")%>");  </script>
            
    </body>
    
    <!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Mar 2017 15:44:48 GMT -->
</html>