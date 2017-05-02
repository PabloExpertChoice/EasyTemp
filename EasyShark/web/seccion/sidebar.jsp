<%-- 
    Document   : sidebar
    Created on : 13-03-2017, 16:42:45
    Author     : erick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar navbar-collapse collapse">

    <ul id="index" class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        <li class="nav-item ">
            <a href="javascript:;" class="nav-link " onclick="go('cmd', [{id: 'code', val: 'index'}], undefined, 'cmd');">
                <i class="icon-home"></i>
                <span class="title">Inicio</span>
                <span class="selected"></span>
            </a>
        </li>
    </ul>
    <ul id="risktier" class="page-sidebar-menu   " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        <li class="nav-item">
            <a href="javascript:;" class="nav-link" onclick="go('cmd', [{id: 'code', val: 'risktier'}], undefined, 'cmd');"> 
                <i class="fa fa-reorder"></i> 
                <span class="title">Risk Tier </span>
            </a>
        </li>
    </ul>
    <ul id="answer" class="page-sidebar-menu   " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        <li class="nav-item">
            <a href="javascript:;" class="nav-link " onclick="go('cmd', [{id: 'code', val: 'answer'}], undefined, 'cmd');">
                <i class="fa fa-align-justify"></i>
                <span class="title">Answer Tree Business</span>
            </a>
        </li>
    </ul>
    <ul id="contrato"  class="page-sidebar-menu   " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        <li class="nav-item">
            <a href="javascript:;" class="nav-link " onclick="go('cmd', [{id: 'code', val: 'contrato'}], undefined, 'cmd');">
                <i class="fa fa-file-text"></i>
                <span class="title">Contrato</span>
            </a>
        </li>
    </ul>
    
    <ul id="mis" class="page-sidebar-menu   " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        <li class="nav-item">
            <a href="javascript:;" class="nav-link" onclick="go('cmd', [{id: 'code', val: 'mis'}], undefined, 'cmd');">
                <i class="icon-bar-chart"></i> MIS Riesgo de Cr&#233;dito </a>
        </li>
    </ul>
    <ul id="estadisticas" class="page-sidebar-menu   " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        <li class="nav-item">
            <a href="javascript:;" class="nav-link" onclick="go('cmd', [{id: 'code', val: 'estadisticas'}], undefined, 'cmd');">
                <i class="fa fa-bar-chart"></i> Estad&#237;sticas de uso </a>
        </li>
    </ul>
    <ul id="usuario" class="page-sidebar-menu   " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        <li class="nav-item">
            <a href="javascript:;" class="nav-link" onclick="go('cmd', [{id: 'code', val: 'usuario'}], undefined, 'cmd');">
                <i class="fa fa-users"></i> Usuarios </a>
        </li>
    </ul>
    <ul id="perfil" class="page-sidebar-menu   " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        <li class="nav-item">
            <a href="javascript:;" class="nav-link" onclick="go('cmd', [{id: 'code', val: 'perfil'}], undefined, 'cmd');">
                <i class="fa fa-user-plus"></i> Perfiles </a>
        </li>
    </ul>
    <ul id="configuracion" class="page-sidebar-menu   " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        <li class="nav-item">
            <a href="javascript:;" class="nav-link" onclick="go('cmd', [{id: 'code', val: 'configuracion'}], undefined, 'cmd');">
                <i class="fa fa-wrench"></i> Configuraci&#243;n </a>
        </li>
    </ul>

    <!-- END SIDEBAR MENU -->
</div>
<!-- END SIDEBAR -->