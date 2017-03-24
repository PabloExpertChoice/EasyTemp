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
        <title>Answer Tree Business</title>
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
                        <div class="page-head">
                            <!-- BEGIN PAGE TITLE -->
                            <div class="page-title">
                                <h1>Answer Tree Business</h1>
                            </div>
                            <!-- END PAGE TITLE -->
                        </div>
                        <!-- BEGIN PAGE HEAD-->
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

                        <!-- END PAGE HEAD-->
                        <div class="row">
                            <div class="col-md-12 col-lg-12">
                                <div class="portlet light">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-database"></i> Response tree
                                        </div>
                                        <div class="tools">
                                            <!--<a href="#" class="collapse" data-original-title="" title=""> </a>-->
                                            <br>
                                            <button type="button" class="btn blue mt-ladda-btn ladda-button btn-circle btn-outline" data-style="slide-up" data-spinner-color="#333">
                                                <span class="ladda-label"><i class="fa fa-undo"></i> Valores por defecto</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <!-- BEGIN SAMPLE TABLE PORTLET-->
                                        <!--                                        <div class="portlet box blue">
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
                                                                                        
                                                                                    </div>
                                                                                </div>-->
                                        <!-- END SAMPLE TABLE PORTLET-->

                                        <form action="javascript:;" id="formTree" novalidate="novalidate">
                                            <div class="row">
                                                <div class="col-md-4 col-xs-12">
                                                    <label>Tipo</label>
                                                    <select class="form-control" id="cmboxTipo">
                                                        <option value="0" selected="" disabled="">Seleccione</option>
                                                        <option value="N">Natural</option>
                                                        <option value="J">Jurídico</option>
                                                    </select>
                                                </div>
                                            </div><br>
                                            <div class="row">
                                                <div class="col-md-4 col-xs-12">
                                                    <label>Nombre</label>
                                                    <input name="nomb_regla" id="nomb_regla" type="text" class="form-control text" required="" aria-required="true">
                                                </div>
                                                <div class="col-md-4 col-xs-12" style="padding: 10px;padding-top: 30px;">
                                                    <label><input type="radio" name="product[images][1][image_type]" value="1"> <span> MM </span> </label>
                                                    <label><input type="radio" name="product[images][1][image_type]" value="1"> <span> M </span></label>
                                                    <label><input type="radio" name="product[images][1][image_type]" value="1"> <span> R </span></label>
                                                    <label><input type="radio" name="product[images][1][image_type]" value="2"> <span> B </span></label>
                                                    <label><input type="radio" name="product[images][1][image_type]" value="3" checked=""> <span> BM </span></label>

                                                </div>
                                            </div>
                                            <br>
                                            <div id="contVariables"><div class="row contVariable"><div class="col-md-4">    <label>Variable</label>    <select class="form-control cmboxVariable" id="sl_variable_1_0"><option value="0">Seleccione</option><option value="1">deuda_direct_vig</option><option value="2">deuda_morosa_30_90</option><option value="3">deuda_direct_venc</option><option value="4">deuda_dir_venc_180d_3years</option><option value="5">deuda_inv_financieras</option><option value="6">deuda_ope_pacto</option><option value="7">deuda_indirec_vig</option><option value="8">deuda_indirec_vencida</option><option value="9">deuda_comercial</option><option value="10">deuda_credito_consumo</option><option value="11">nro_inst_cred_consumo</option><option value="12">deuda_cred_hipotecario</option><option value="13">saldo_deud_CAST_direct</option><option value="14">saldo_deud_CAST_indirect</option><option value="15">mto_linea_disponible</option><option value="16">deuda_leasing</option><option value="17">deuda_morosa_leasing</option><option value="18">deuda_com_vig_mex</option><option value="19">deuda_com_venc_mex</option><option value="20">deuda_x_cred_contingentes</option><option value="21">score</option><option value="22">renta</option></select></div><div class="col-md-4">    <div class="row">        <div class="col-xs-4">            <label>Operador</label>            <select class="form-control cmboxOperador" id="sel2_0"><option value="0">Seleccione</option><option value="28">&gt;</option><option value="29">&lt;</option><option value="30">=</option><option value="31">&gt;=</option><option value="32">&lt;=</option></select>        </div>        <div class="col-xs-5">            <label>Valor</label>            <input type="text" class="form-control txtValor" id="txtMonto_0" onkeyup="return formatoNumero(this)">        </div>        <div class="col-md-3">            <label>&nbsp;</label>            <select class="form-control cmboxCondicion" visibilidad="false" id="sel4_0" style="display: none;">                <option value="0">Seleccione</option>                <option value="33">Y</option>                <option value="34">O</option>            </select>        </div>    </div></div><div class="col-md-4"></div></div></div>
                                        </form>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <button class="btn btn-primary" id="btnAgregarVariable"><i class="fa fa-plus"></i> Agregar variable</button>
                                            </div>
                                            <div class="col-md-3"></div>
                                            <div class="col-md-3"></div>
                                            <div class="col-md-3"></div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <button class="btn btn-app" style="margin: 0px;" onclick="return agregarRegla()" id="btnGuardarRegla"><i class="fa fa-floppy-o"></i> Crear regla</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--fin del contenido de la pagina-->
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