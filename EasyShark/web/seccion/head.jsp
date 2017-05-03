<%@page import="cl.expertchoice.clases.Usuario"%>
<%@page import="soporte.D"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario user = D.getUsuarioSesion(request);
%>
<div class="page-header navbar navbar-fixed-top">
    <div class="page-header-inner ">
        <div class="page-logo">
            <a href="index.jsp">
                <img src="assets/layouts/layout4/img/logo4.png" alt="logo" class="logo-default" style="margin:0px;margin-top: 10px;height: 60px"/> </a>
            <div class="menu-toggler sidebar-toggler">
            </div>
        </div>
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
        <div class="page-top">
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <form class="search-form" action="../dashboard.jsp" method="GET">
                        <div class="input-group">
                            <input type="text" class="form-control input-sm" placeholder="RUT..." name="query">
                            <span class="input-group-btn">
                                <a href="javascript:;" class="btn submit">
                                    <i class="icon-magnifier"></i>
                                </a>
                            </span>
                        </div>
                    </form>
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <span class="username username-hide-on-mobile"><%= user.getNombre() + " " + user.getApePaterno()%> (<%= user.getPerfil().getNombre()%>)</span>
                            <!-- DOC: Do not remove below empty space(&nbsp;) as its purposely used -->
                            <img alt="" class="img-circle" src="assets/layouts/layout4/img/avatar9.jpg" /> </a>

                        <ul class="dropdown-menu dropdown-menu-default">
                            <li>
                                <a href="#">
                                    <i class="icon-user"></i> My Profile </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-envelope-open"></i> My Inbox
                                    <span class="badge badge-danger"> 3 </span>
                                </a>
                            </li>
                            <li class="divider"> </li>
                            <li>
                                <a href="slv_login?code=logout"><i class="icon-key"></i>Cerrar sesion</a>
                            </li>
                        </ul>
                    </li>
<!--                    <li class="dropdown dropdown-extended quick-sidebar-toggler">
                        <span class="sr-only">Toggle Quick Sidebar</span>
                        <i class="icon-logout"></i>
                    </li>-->
                </ul>
            </div>
        </div>
    </div>
</div>
