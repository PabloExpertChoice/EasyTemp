<%-- 
    Document   : answer
    Created on : 14-03-2017, 18:01:51
    Author     : erick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><!--<![endif]--><!-- BEGIN HEAD --><!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Mar 2017 15:40:53 GMT --><!-- Added by HTTrack --><head><meta http-equiv="content-type" content="text/html;charset=UTF-8"><!-- /Added by HTTrack -->
    
        <meta charset="utf-8">
        <title>Metronic Admin Theme #4 | Admin Dashboard 2</title>
        <link rel="shortcut icon" href="images/logo1.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport">
        <meta content="Preview page of Metronic Admin Theme #4 for statistics, charts, recent events and reports" name="description">
        <meta content="" name="author">
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">


        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css">
        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
        <link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css">
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css">
        <link href="assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css">
        <link href="assets/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css">
        <link href="assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css">
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css">
        <link href="assets/global/css/plugins.min.css" rel="stylesheet" type="text/css">
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="assets/layouts/layout4/css/layout.min.css" rel="stylesheet" type="text/css">
        <link href="assets/layouts/layout4/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color">
        <link href="assets/layouts/layout4/css/custom.min.css" rel="stylesheet" type="text/css">
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico"> 
    <style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>
    <!-- END HEAD -->

        <!-- BEGIN HEADER -->
        <body class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo">
        <!-- BEGIN HEADER -->
        <jsp:include page="seccion/head.jsp"></jsp:include>


            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                <!-- BEGIN SIDEBAR -->
            <jsp:include page="seccion/sidebar.jsp"></jsp:include>


<!-- BEGIN HEADER -->
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                <!-- BEGIN SIDEBAR -->
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content" style="min-height: 716px;">
                        <!-- BEGIN PAGE HEAD-->
                        <div class="page-head">
                            <!-- BEGIN PAGE TITLE -->
                            <div class="page-title">
                                <h1>Answer Tree Business</h1>
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
                                Answer Tree Business
                            </li>
                        </ul>
                        <!-- Fin ruta -->
                        <!--INICIO DEL CUERPO DE LA PAGINA-->
                        <div class="portlet light portlet-fit portlet-datatable bordered">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-settings font-green"></i>
                                    <span class="caption-subject font-green sbold uppercase"> Order Listing </span>
                                </div>
                                <div class="actions">
                                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                                        <label class="btn btn-transparent green btn-outline btn-outline btn-circle btn-sm active">
                                            <input name="options" class="toggle" id="option1" type="radio">Actions
                                        </label>

                                    </div>

                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-container" style="">

                                    <div id="datatable_orders_wrapper" class="dataTables_wrapper dataTables_extended_wrapper no-footer">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <span class="seperator">Tipo</span>
                                                <select class="form-control" name="datatable_orders_length" aria-controls="datatable_orders">
                                                    <option value="10">Natural</option>
                                                    <option value="10">Juridico</option>
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <span class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1" width="15%"> Nombre </span>
                                                <input class="form-control form-filter input-sm" name="order_customer_name" type="text">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-8 col-sm-12">
                                                <div>
                                                </div>
                                                <div class="dataTables_length" id="datatable_orders_length">

                                                </div>
                                                <div class="dataTables_info" id="datatable_orders_info" role="status" aria-live="polite">

                                                </div>

                                            </div>
                                            <div class="col-md-4 col-sm-12">
                                                <div class="table-group-actions pull-right">
                                                    <span> </span>
                                                    <select class="table-group-action-input form-control input-inline input-small input-sm">
                                                        <option value="">Select...</option>
                                                        <option value="Cancel">Cancel</option>
                                                        <option value="Cancel">Hold</option>
                                                        <option value="Cancel">On Hold</option>
                                                        <option value="Close">Close</option>
                                                    </select>
                                                    <button class="btn btn-sm btn-default table-group-action-submit">
                                                        <i class="fa fa-check"></i> Submit</button>
                                                </div></div></div><div class="table-responsive"><table class="table table-striped table-bordered table-hover table-checkable dataTable no-footer" id="datatable_orders" aria-describedby="datatable_orders_info" role="grid">
                                                <thead>
                                                    <tr role="row" class="heading">
                                                        <th class="sorting_disabled" rowspan="1" colspan="1" width="2%">
                                                            <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                                <input class="group-checkable" data-set="#sample_2 .checkboxes" type="checkbox">
                                                                <span></span>
                                                            </label>
                                                        </th>
                                                        <th class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1" width="5%"> Order&nbsp;# </th>
                                                        <th class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1" width="15%"> Purchased&nbsp;On </th>
                                                        <th class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1" width="15%"> Customer </th>
                                                        <th class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1" width="10%"> Ship&nbsp;To </th>
                                                        <th class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1" width="10%"> Base&nbsp;Price </th>
                                                        <th class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1" width="10%"> Purchased&nbsp;Price </th>
                                                        <th class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1" width="10%"> Status </th>
                                                        <th class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1" width="10%"> Actions </th>
                                                    </tr>
                                                    <tr role="row" class="filter"><td rowspan="1" colspan="1"> </td>
                                                        <td rowspan="1" colspan="1">
                                                            <input class="form-control form-filter input-sm" name="order_id" type="text"> </td>
                                                        <td rowspan="1" colspan="1">
                                                            <div class="input-group date date-picker margin-bottom-5" data-date-format="dd/mm/yyyy">
                                                                <input class="form-control form-filter input-sm" readonly="" name="order_date_from" placeholder="From" type="text">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-sm default" type="button">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </button>
                                                                </span>
                                                            </div>
                                                            <div class="input-group date date-picker" data-date-format="dd/mm/yyyy">
                                                                <input class="form-control form-filter input-sm" readonly="" name="order_date_to" placeholder="To" type="text">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-sm default" type="button">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </button>
                                                                </span>
                                                            </div>
                                                        </td><td rowspan="1" colspan="1">
                                                            <input class="form-control form-filter input-sm" name="order_customer_name" type="text"> </td><td rowspan="1" colspan="1">
                                                            <input class="form-control form-filter input-sm" name="order_ship_to" type="text"> </td><td rowspan="1" colspan="1">
                                                            <div class="margin-bottom-5">
                                                                <input class="form-control form-filter input-sm" name="order_base_price_from" placeholder="From" type="text"> </div>
                                                            <input class="form-control form-filter input-sm" name="order_base_price_to" placeholder="To" type="text"> </td><td rowspan="1" colspan="1">
                                                            <div class="margin-bottom-5">
                                                                <input class="form-control form-filter input-sm margin-bottom-5 clearfix" name="order_purchase_price_from" placeholder="From" type="text"> </div>
                                                            <input class="form-control form-filter input-sm" name="order_purchase_price_to" placeholder="To" type="text"> </td><td rowspan="1" colspan="1">
                                                            <select name="order_status" class="form-control form-filter input-sm">
                                                                <option value="">Select...</option>
                                                                <option value="pending">Pending</option>
                                                                <option value="closed">Closed</option>
                                                                <option value="hold">On Hold</option>
                                                                <option value="fraud">Fraud</option>
                                                            </select>
                                                        </td><td rowspan="1" colspan="1">
                                                            <div class="margin-bottom-5">
                                                                <button class="btn btn-sm btn-success filter-submit margin-bottom">
                                                                    <i class="fa fa-search"></i> Search</button>
                                                            </div>
                                                            <button class="btn btn-sm btn-default filter-cancel">
                                                                <i class="fa fa-times"></i> Reset</button>
                                                        </td></tr>
                                                </thead>
                                                <tbody> </tbody>
                                            </table>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--FIN DEL CUERPO DE LA PAGINA-->

                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->
            </div>
            <!-- END CONTAINER -->

            <!-- BEGIN FOOTER -->
            <div class="page-footer">
            


<div class="page-footer-inner"> 2016 © Metronic Theme By
    <a target="_blank" href="#">Keenthemes</a> &nbsp;|&nbsp;
    <a href="#" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
</div>
<div class="scroll-to-top">
    <i class="icon-arrow-up"></i>
</div>

        </div>
        <!-- END FOOTER -->

        <!-- BEGIN CORE PLUGINS -->
        <script async="" src="../../../../../www.googletagmanager.com/gtm5445.html?id=GTM-W276BJ"></script><script async="" src="../../../../../www.google-analytics.com/analytics.js"></script><script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
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
    



    
</body><!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Mar 2017 15:44:48 GMT --></html>