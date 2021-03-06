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
        <title>Usuarios</title>
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
                                <h1>Usuarios</h1>
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
                                Usuarios
                            </li>
                        </ul>
                        <!-- Fin ruta -->

                        <!-- BEGIN PAGE BASE CONTENT -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="portlet box blue">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-gift"></i>Usuarios</div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div style="margin-bottom: 0.1cm;">
                                            <a id="ing_usu" class="btn btn-default next" onclick="dlgAgregarPerfil();" style="background: #3498DB;color:#FFF"><i class="fa fa-plus" aria-hidden="true"></i> Nuevo perfil</a><br>
                                        </div>
                                        <div id="tblPerfiles_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="tblPerfiles_length"><label>Mostrar <select name="tblPerfiles_length" aria-controls="tblPerfiles" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> registros</label></div></div><div class="col-sm-6"><div id="tblPerfiles_filter" class="dataTables_filter"><label>Buscar:<input class="form-control input-sm" placeholder="" aria-controls="tblPerfiles" type="search"></label></div></div></div><div class="row"><div class="col-sm-12"><table class="table table-bordered table-hover dataTable no-footer" id="tblPerfiles" style="width: 100%; text-align: center;" role="grid" aria-describedby="tblPerfiles_info">
                                                        <thead>
                                                            <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="tblPerfiles" rowspan="1" colspan="1" style="width: 797px;" aria-sort="ascending" aria-label="Nombre: Activar para ordenar la columna de manera descendente">Nombre</th><th class="sorting" tabindex="0" aria-controls="tblPerfiles" rowspan="1" colspan="1" style="width: 401px;" aria-label=": Activar para ordenar la columna de manera ascendente"></th></tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr role="row" class="odd"><td class="sorting_1">ADMINISTRADOR</td><td><button class="btn btn-sm btn-default icono" title="Menu" onclick="dlgMenu(2)"><i class="fa fa-list"></i></button> <button class="btn btn-sm btn-default icono" title="Menu" onclick="dlgEliminarPerfil(this)"><i class="fa fa-times-circle"></i></button></td></tr><tr role="row" class="even"><td class="sorting_1">SUPER ADMINISTRADOR</td><td><button class="btn btn-sm btn-default icono" title="Menu" onclick="dlgMenu(1)"><i class="fa fa-list"></i></button> <button class="btn btn-sm btn-default icono" title="Menu" onclick="dlgEliminarPerfil(this)"><i class="fa fa-times-circle"></i></button></td></tr><tr role="row" class="odd"><td class="sorting_1">VIZUALIZADOR</td><td><button class="btn btn-sm btn-default icono" title="Menu" onclick="dlgMenu(3)"><i class="fa fa-list"></i></button> <button class="btn btn-sm btn-default icono" title="Menu" onclick="dlgEliminarPerfil(this)"><i class="fa fa-times-circle"></i></button></td></tr></tbody>
                                                    </table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="tblPerfiles_info" role="status" aria-live="polite">Mostrando registros del 1 al 3 de un total de 3 registros</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="tblPerfiles_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="tblPerfiles_previous"><a href="#" aria-controls="tblPerfiles" data-dt-idx="0" tabindex="0">Anterior</a></li><li class="paginate_button active"><a href="#" aria-controls="tblPerfiles" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button next disabled" id="tblPerfiles_next"><a href="#" aria-controls="tblPerfiles" data-dt-idx="2" tabindex="0">Siguiente</a></li></ul></div></div></div></div>
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
            
            <!-- Codigo A.M.-->
            <script src="js/funciones.js"></script>
            <script src="js/sidebar.js"></script>
            <script> menuSelected("<%=request.getParameter("code")%>");  </script>
    </body>



    <!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Mar 2017 15:44:48 GMT -->
</html>