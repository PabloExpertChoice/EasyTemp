<%-- 
    Document   : modal
    Created on : 07-04-2017, 18:55:00
    Author     : ignacio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="modal fade" id="modalQuiebras" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-body">
                                <span class="msgTbl"></span>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
<!--                                            <th>Domicilio</th>
                                            <th>Región</th>-->
                                            <th>Fecha declaratoria</th>
                                            <th>Fecha publicación diario oficial</th>
                                            <th>Tribunal</th>
                                            <th>Rol Causa</th>
                                            <th>Síndico</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
<!--                                            <td id="tdDomicilio"</td>
                                            <td id="tdRegion"></td>-->
                                            <td id="tdFechaDeclaratoria"></td>
                                            <td id="tdFechaPublicacion"></td>
                                            <td id="tdTribunal"></td>
                                            <td id="tdRolCausa"></td>
                                            <td id="tdSindico"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalActividadComercial" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <table class="table" id="tblActComercial1">
                            <tr>
                                <th>Fecha de consulta</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Inicio de actividades</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Impuestos en moneda extranjera</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Empresa de menor tamaño PRO-PYME</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Documentos tibrados</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Observaciones</th>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>

                <table id="tblActComercial" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Actividad</th>
                            <th>Codigo</th>
                            <th>Categoria</th>
                            <th>Afecta IVA</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalPJUD" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div id="tblPjudCont">
                    <table id="tblPJUD" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th></th>
                                <th></th>
                                <th>ROL</th>
                                <th>FECHA</th>
                                <th>CARATULADO</th>
                                <th>TRIBUNAL</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalOfac" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <table id="tblResultadosOfac" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Direccion</th>
                            <th>Tipo</th>
                            <th>Programa</th>
                            <th>Lista</th>
                            <th>Score</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalAfp" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="return enviarDatosAfp(this)">Validar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>