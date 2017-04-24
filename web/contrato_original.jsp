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
        <title>Contrato</title>
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



        <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
        <link rel="stylesheet" href="vendor/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" />


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

                        <!-- Ruta-->
                        <ul class="page-breadcrumb breadcrumb">
                            <li>
                                <a href="index.jsp">Inicio</a>
                            </li>
                            <i class="fa fa-circle"></i>
                            <li>
                                Contratos
                            </li>
                        </ul>
                        <!-- Fin ruta -->
                        <div class="row">
                            <div class="col-lg-12">
                                <!-- BEGIN PORTLET-->
                                <div class="portlet light">
                                    <div class="hpanel filter-item">
                                        <div class="panel-body">
                                            <div class="pull-right text-right">
                                                <div class="portlet">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" data-toggle="toggle">
                                                        </label>
                                                    </div>

                                                </div>
                                            </div>
                                            <h4 class="m-b-xs">Sinacofi</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet light">
                                    <div class="hpanel filter-item">
                                        <div class="panel-body">
                                            <div class="pull-right text-right">
                                                <div class="portlet">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" data-toggle="toggle">
                                                        </label>
                                                    </div>

                                                </div>
                                            </div>
                                            <h4 class="m-b-xs">Equifax</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet light">
                                    <div class="hpanel filter-item">
                                        <div class="panel-body">
                                            <div class="pull-right text-right">
                                                <div class="portlet">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" data-toggle="toggle">
                                                        </label>
                                                    </div>

                                                </div>
                                            </div>
                                            <h4 class="m-b-xs">Transunion</h4>
                                        </div>
                                    </div>
                                </div>
                                <!-- END PORTLET-->
                            </div>
                        </div>
                        <!-- BEGIN PAGE BASE CONTENT -->
                        <!-- END CONTENT BODY -->
                    </div>
                    <!-- END CONTENT -->
                    <!-- MODALS -->
                    <div class="modal fade" id="modalContrato" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h5 class="modal-title">Contrato</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="box-body chat" id="chatbox2" style="overflow-y: scroll; height: 300px;">
                                        <jsp:include page="contrato.jsp"></jsp:include>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <div class="row text-right">
                                        <div class="checkbox checkbox-success">
                                            <input id="checkbox1"  onchange="checkModal(this)" type="checkbox">
                                            <label for="checkbox1">
                                                Aceptar Terminos
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" id="aceptarModal" onclick="validarBtnAceptar()" disabled class="btn btn-default" data-dismiss="modal">Aceptar</button>
                                    <button type="button" id="cancelarModal" class="btn btn-default" onclick="validarBtnCancelar()" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--MODAL2-->                            
                    <div class="modal fade" id="modalContrato2" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h5 class="modal-title">Contrato2</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="box-body chat" id="chatbox2" style="overflow-y: scroll; height: 300px;">
                                        <jsp:include page="contrato.jsp"></jsp:include>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <div class="row text-right">
                                        <div class="checkbox checkbox-success">
                                            <input id="checkbox2"  onchange="checkModal2(this)" type="checkbox">
                                            <label for="checkbox2">
                                                Aceptar Terminos
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" id="aceptarModal2" disabled onclick="validarBtnAceptar()" class="btn btn-default" data-dismiss="modal">Aceptar</button>
                                    <button type="button" class="btn btn-default" onclick="validarBtnCancelar2()" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </div>
                    </div>                            
                    <!--MODAL3-->                            
                    <div class="modal fade" id="modalContrato3" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h5 class="modal-title">Contrato3</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="box-body chat" id="chatbox2" style="overflow-y: scroll; height: 300px;">
                                        <jsp:include page="contrato.jsp"></jsp:include>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <div class="row text-right">
                                        <div class="checkbox checkbox-success">
                                            <input id="checkbox3"  onchange="checkModal3(this)" type="checkbox">
                                            <label for="checkbox3">
                                                Aceptar Terminos
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" id="aceptarModal3" disabled onclick="validarBtnAceptar()" class="btn btn-default" data-dismiss="modal">Aceptar</button>
                                    <button type="button" class="btn btn-default" onclick="validarBtnCancelar3()" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--MODAL4-->                            
                    <div class="modal fade" id="modalContrato4" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h5 class="modal-title">Contrato4</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="box-body chat" id="chatbox2" style="overflow-y: scroll; height: 300px;">
                                        <jsp:include page="contrato.jsp"></jsp:include>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <div class="row text-right">
                                        <div class="checkbox checkbox-success">
                                            <input id="checkbox4"  onchange="checkModal4(this)" type="checkbox">
                                            <label for="checkbox4">
                                                Aceptar Terminos
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" id="aceptarModal4" disabled onclick="validarBtnAceptar()" class="btn btn-default" data-dismiss="modal">Aceptar</button>
                                    <button type="button" class="btn btn-default" onclick="validarBtnCancelar4()" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END CONTAINER -->

                    <!-- BEGIN FOOTER -->
                    <div class="page-footer">
                    <jsp:include page="seccion/footer.jsp"></jsp:include>
                </div>
                <!-- END FOOTER -->

                <!--boton flotante-->
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
                <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
                <script src="js/parametros.js"></script>
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