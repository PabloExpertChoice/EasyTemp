<%@page import="cl.expertchoice.clases.Recurso"%>
<%@page import="soporte.D"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="page-sidebar-wrapper">
    <div class="page-sidebar navbar-collapse collapse">
        <ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
            <%
                for (Recurso x : D.getUsuarioSesion(request).getRecursos()) {
            %>
            <li class="nav-item start">
                <a href="javascript:;" class="nav-link nav-toggle" onclick="go('cmd', [{id: 'recurso', val: '<%= x.getId()%>'}], undefined, 'cmd');">
                    <i class="<%= x.getIcono()%>"></i>
                    <span class="title"><%= x.getTitulo()%></span>
                    <span class="selected"></span>
                </a>
            </li>
            <% }%>
        </ul>
    </div>
</div>
