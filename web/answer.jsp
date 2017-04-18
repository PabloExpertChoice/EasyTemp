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
                                                    <label><input type="radio" name="optionsRadios" id="optionsRadios1" class="radioBtn" value="MM" > <span> MM </span> </label>
                                                    <label><input type="radio" name="optionsRadios" id="optionsRadios2" class="radioBtn" value="M"> <span> M </span></label>
                                                    <label><input type="radio" name="optionsRadios" id="optionsRadios3" class="radioBtn" value="R"> <span> R </span></label>
                                                    <label><input type="radio" name="optionsRadios" id="optionsRadios4" class="radioBtn" value="B"> <span> B </span></label>
                                                    <label><input type="radio" name="optionsRadios" id="optionsRadios5" class="radioBtn" value="MB"> <span> BM </span></label>

                                                </div>
                                            </div>
                                            <br>
                                            <div id="contVariables"></div>
                                        </form>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <button class="btn btn-primary" id="btnAgregarVariable" disabled="" onclick="agregarCampos()"><i class="fa fa-plus"></i> Agregar variable</button>
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
        <script src="assets/global/plugins/jQuery/jquery-2.2.3.min.js"></script>
        <!--<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>-->
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
        <script src="assets/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="assets/global/scripts/app.min.js" type="text/javascript"></script><!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="assets/pages/scripts/dashboard.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="assets/layouts/layout4/scripts/layout.min.js" type="text/javascript"></script>
        <script src="assets/layouts/layout4/scripts/demo.min.js" type="text/javascript"></script>
        <script src="assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!--<script src="plugins/datatables/jquery.dataTables.min.js"></script>-->
        <script src="assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
        <!--<script src="assets/global/plugins/jQuery/jquery-2.2.3.min.js"></script>-->
        <script src="assets/global/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script src="assets/global/plugins/datatables/dataTables.bootstrap.min.js"></script>
        <script src="js/funciones.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/messages_es.min.js"></script>
        <script src="js/number_format.js"></script>
        <script src="dist/js/demo.js"></script>
        <script src="js/tree.js"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
        
<!--        <script src="assets/global/plugins/jQuery/jquery-2.2.3.min.js"></script>
        <script src="assets/global/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script src="assets/global/plugins/datatables/dataTables.bootstrap.min.js"></script>
        <script src="js/funciones.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/messages_es.min.js"></script>
        <script src="js/number_format.js"></script>
        <script src="dist/js/demo.js"></script>-->

        <!-- Codigo A.M.-->
        <script src="js/sidebar.js"></script>
        <script> menuSelected("<%=request.getParameter("code")%>");  </script>
    </body>



    <!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Mar 2017 15:44:48 GMT -->
</html>