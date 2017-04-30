<%-- 
    Document   : index
    Created on : 13-03-2017, 15:22:02
    Author     : ignacio
--%>
<%@page import="cl.expertchoice.clases.Usuario"%>
<%
    Usuario user = (Usuario) session.getAttribute("sesion");
    if (user == null) {
        response.sendRedirect("cmd");
        return;
    }
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
        <title>Inicio</title>
        <link rel="shortcut icon" href="images/logo1.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #4 for statistics, charts, recent events and reports" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <!-- Sweetalert2-->
        <link rel="stylesheet" type="text/css" href="dist/css/sweetalert.css">
        <!-- Tema loading-->
        <link rel="stylesheet" type="text/css" href="css/loading.css">
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
                                <h1>Buscar informaci&#243;n de Cliente
                                    <!--<small>para evaluaci&#243;n</small>-->
                                </h1>
                            </div>
                            <!-- END PAGE TITLE -->
                        </div>
                        <!-- END PAGE HEAD-->

                        <!-- Ruta-->
                        <ul class="page-breadcrumb breadcrumb">
                            <li>
                                Inicio
                            </li>
                        </ul>
                        <!-- Fin ruta -->

                        <!-- BEGIN PAGE BASE CONTENT -->
                        <div class="col-md-6 ">
                            <div class="portlet box blue" style="border: none">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="fa fa-database"></i> Buscar Informaci&#243;n Personal </div>
                                    <div class="tools">
                                        <a href="#" class="collapse" data-original-title="" title=""> </a>
                                    </div>
                                </div>
                                <div class="portlet-body form">
                                    <form action="dashboard.jsp" class="form-horizontal">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label class="col-md-4 col-xs-4 control-label">RUT</label>
                                                <div class="col-md-6 col-xs-6">
                                                    <div class="input-group">
                                                        <input type="text" name="rut" id="txtRut" class="form-control" maxlength="10" onkeyup="formatoNumero(this); cli_rut_dv(this, event, 'txtDv');" onchange="formatoNumero(this); cli_rut_dv(this, event, 'txtDv');">
                                                        <span class="input-group-addon" id="basic-addon1">-</span>
                                                        <input type="text" name="dv" id="txtDv" style="padding: 0px;width: 40px; text-align: center;" class="form-control"  size="1" maxlength="1" disabled="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 col-xs-4 control-label">Renta (PN) o Ingreso (PJ)</label>
                                                <div class="col-md-6 col-xs-6">
                                                    <div class="input-icon right">
                                                        <i class="fa fa-dollar" data-original-title="Ingreso de renta" data-container="body"></i>
                                                        <input type="text" class="form-control" id="txtRenta" onkeyup="formatoNumero(this);" autocomplete="off" >
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-offset-4 col-md-8 col-xs-offset-4 col-xs-8">
                                                    <!--<button type="button" class="btn default">Limpiar</button>-->
                                                    <!--<button type="submit" class="btn blue">Consultar rut</button>-->
                                                    <a href="javascript:;" onclick="ingresarRut()">
                                                        <button class="btn btn-primary " type="button"><i class="fa fa-search"></i> Consultar Rut</button>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
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
                <!-- Sweetalert2-->
                <script src="dist/js/sweetalert.min.js"></script>
                <!-- Sweetalert2-->
                <script src="js/swall.js"></script>
                <!-- END THEME LAYOUT SCRIPTS -->

                <!--libreria redirigir-->
                <script src="js/jquery.Rut.js"></script>
                <script src="js/number_format.js"></script>
                <script src="js/funciones.js"></script>
                <script>
                    function ingresarRut() {
                        swal_procces();
                        go('Svl_Informacion', [{id: 'code', val: 'dashboard'}, {id: 'rut', val: $('#txtRut').val().replace(/\./g, '')}, {id: 'dv', val: $('#txtDv').val()}], undefined, 'Svl_Informacion');
                    }
                </script>
<!--                <script type="text/javascript" charset="utf-8">
                
                                                        function sendConsulta() {
                                                            if ($("input[name='radTipInf']:checked").val() === undefined) {
                                                                alert('Seleccionar Informe');
                                                                return false;
                                                            }
                                                            if ($('#txtRenta').attr('visible') == 'true') {
                                                                if ($('#txtRenta').val().trim().length == 0 || $('#txtRenta').val().trim() == '0') {
                                                                    alert('Ingrese renta');
                                                                    return false;
                                                                }
                                                            }

                                                            if ($.Rut.validar($('#tx_rut').val() + '-' + $('#tx_dv').val()) === true) {
                                                                go('cmd', [
                                                                    {id: 'drut', val: $('#tx_rut').val()},
                                                                    {id: 'ddv', val: $('#tx_dv').val()},
                                                                    {id: 'renta', val: $('#txtRenta').val().trim().replace(/\./g, '')},
                                                                    {id: 'code', val: 'usrResponse'},
                                                                    {id: 'resp', val: $("input[name='radTipInf']:checked").val()},
                                                                    {id: 'idApplication', val: $("input[name='radTipInf']:checked").attr('idApplication')},
                                                                    {id: 'codApplication', val: $("input[name='radTipInf']:checked").attr('codApplication')}
                                                                ], undefined, 'cmd');
                                                            } else {
                                                                alert('Rut incorrecto');
                                                            }
                                                        }
              </script>-->

                <!-- Codigo A.M.-->
                <script src="js/sidebar.js"></script>
                <script> menuSelected("<%=request.getParameter("code")%>");</script>

<!--            <script>
                $(".inputExcelBAL").keypress(function (e) {
                    e.stopPropagation();

                    if (e.which == 13) {
                        alert('');
                    }
                });

            </script>-->
    </body>



    <!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Mar 2017 15:44:48 GMT -->
</html>
