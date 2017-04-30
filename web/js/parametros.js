var flag=0;
var fl=0
/**
 * Metodos que realiza acciones para contratar servicio como para dar de baja servicio
 * @returns {undefined}
 */
$(function () {
        $('#evento-toggle').change(function () {
            if ($('#evento-toggle').prop('checked')) {
                    if(fl==0){
                    verModalC();
                    flag=0
                    }
            } else if(flag==0){
                swal({
                    title: "Esta seguro?",
                    text: "Se cancelara el servicio seleccionado",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Si, Cancelar Servicio",
                    cancelButtonText: "Cancelar",
                    closeOnConfirm: false
                },     function (isConfirm) {
                            if(isConfirm){
                                swal("Hecho", "Se ha cancelado el servicio", "success");
                            }else{
                            //al apretar boton cancelar en swal impedir que despliegue modal contrato denuevo
                            validarBtnCancelarModal();
                            fl=0
                            }
                        });
                           
            }
        })
        $('#evento-toggle2').change(function () {
            if ($('#evento-toggle2').prop('checked')) {
                    if(fl==0){
                    verModalC2();
                    flag=0
                    }
                
            } else if(flag==0){
                swal({
                    title: "Esta seguro?",
                    text: "Se cancelara el servicio seleccionado",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Si, Cancelar Servicio",
                    cancelButtonText: "Cancelar",
                    closeOnConfirm: false
                },     function (isConfirm) {
                            if(isConfirm){
                                swal("Hecho", "Se ha cancelado el servicio", "success");
                            }else{
                            //al apretar boton cancelar en swal impedir que despliegue modal contrato denuevo
                            validarBtnCancelarModal2();
                            fl=0
                            }
                        });
                           
            }
        })
        $('#evento-toggle3').change(function () {
            if ($('#evento-toggle3').prop('checked')) {
                    if(fl==0){
                    verModalC3();
                    flag=0
                    }
                
            } else if(flag==0){
                swal({
                    title: "Esta seguro?",
                    text: "Se cancelara el servicio seleccionado",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Si, Cancelar Servicio",
                    cancelButtonText: "Cancelar",
                    closeOnConfirm: false
                },     function (isConfirm) {
                            if(isConfirm){
                                swal("Hecho", "Se ha cancelado el servicio", "success");
                            }else{
                            //al apretar boton cancelar en swal impedir que despliegue modal contrato denuevo
                            validarBtnCancelarModal3();
                            fl=0
                            }
                        });
                           
            }
        })
        $('#evento-toggle4').change(function () {
            if ($('#evento-toggle4').prop('checked')) {
                    if(fl==0){
                    verModalC4();
                    flag=0
                    }
                
            } else if(flag==0){
                swal({
                    title: "Esta seguro?",
                    text: "Se cancelara el servicio seleccionado",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Si, Cancelar Servicio",
                    cancelButtonText: "Cancelar",
                    closeOnConfirm: false
                },     function (isConfirm) {
                            if(isConfirm){
                                swal("Hecho", "Se ha cancelado el servicio", "success");
                            }else{
                            //al apretar boton cancelar en swal impedir que despliegue modal contrato denuevo
                            validarBtnCancelarModal4();
                            fl=0
                            }
                        });
                           
            }
        })
});
    
/**
 * Metodo que habilita boton aceptar de contrato si checkpoint esta en checked
 * @param {type} input
 * @returns {undefined}
 */
function checkModal(input) {
    
    if ($(input).prop('checked')) {
        $('#aceptarModal').prop('disabled', false)
    } else {
        $('#aceptarModal').prop('disabled', true)
    }
}

function checkModal2(input) {
    
    if ($(input).prop('checked')) {
        $('#aceptarModal2').prop('disabled', false)
    } else {
        $('#aceptarModal2').prop('disabled', true)
    }
}

function checkModal3(input) {
    
    if ($(input).prop('checked')) {
        $('#aceptarModal3').prop('disabled', false)
    } else {
        $('#aceptarModal3').prop('disabled', true)
    }
}

function checkModal4(input) {
    
    if ($(input).prop('checked')) {
        $('#aceptarModal4').prop('disabled', false)
    } else {
        $('#aceptarModal4').prop('disabled', true)
    }
}
/**
 * Despliega contrato modal al mover toggle boton
 * @returns {undefined}
 */
function verModalC() {
    $('#modalContrato').modal({backdrop: 'static'});
}

function verModalC2() {
    $('#modalContrato2').modal({backdrop: 'static'});
}
function verModalC3() {
    $('#modalContrato3').modal({backdrop: 'static'});
}
function verModalC4() {
    $('#modalContrato4').modal({backdrop: 'static'});
}

function validarBtnAceptar(id){
    if($(id)=='aceptarModal'){
       //enviar por ajax peticiones a bd
        
    }    
}
/**
 * Dentro de contrato se valida boton 'cerrar' para que boton no cambie a 'SI'
 * @returns {undefined}
 */
function validarBtnCancelar(){
    flag = 1;
    $('#evento-toggle').prop('checked', false).change()
    flag=0;
}
function validarBtnCancelar2(){
    flag = 1;
    $('#evento-toggle2').prop('checked', false).change()
    flag=0;
}
function validarBtnCancelar3(){
    flag = 1;
    $('#evento-toggle3').prop('checked', false).change()
    flag=0;
}
function validarBtnCancelar4(){
    flag = 1;
    $('#evento-toggle4').prop('checked', false).change()
    flag=0;
}
/**
 * Dentro swal se valida boton 'cancelar' para que boton no cambie a 'NO'
 * @returns {undefined}
 */
function validarBtnCancelarModal(){
    fl=1
    $('#evento-toggle').prop('checked', true).change()
}
function validarBtnCancelarModal2(){
    fl=1
    $('#evento-toggle2').prop('checked', true).change()
}
function validarBtnCancelarModal3(){
    fl=1
    $('#evento-toggle3').prop('checked', true).change()
}
function validarBtnCancelarModal4(){
    fl=1
    $('#evento-toggle4').prop('checked', true).change()
}

