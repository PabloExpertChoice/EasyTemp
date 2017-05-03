<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--boton flotante-->
<nav class="quick-nav">
    <a class="quick-nav-trigger" href="#0">
        <span aria-hidden="true"></span>
    </a>
    <ul>
        <li>
            <!--<a href="javascript:;" onclick="go('Svl_Informacion', [{id: 'code', val: 'transunion'}], undefined, 'Svl_Informacion')">-->
            <a href="javascript:;" onclick="goTransunion()">
                <span>Transunion</span>
                <i class="fa fa-file-text"></i>
            </a>
        </li>
        <li>
            <a href="#" target="_blank">
                <span>Equifax</span>
                <i class="icon-users"></i>
            </a>
        </li>
        <li>
            <a href="#" target="_blank">
                <span>Siisa</span>
                <i class="icon-user"></i>
            </a>
        </li>
        <li>
            <a href="#" target="_blank">
                <span>Sinacofi</span>
                <i class="icon-graph"></i>
            </a>
        </li>
    </ul>
    <span aria-hidden="true" class="quick-nav-bg"></span>
</nav>
<div class="quick-nav-overlay"></div>