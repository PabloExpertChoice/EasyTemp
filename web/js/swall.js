/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function swal_procces(mensaje, titulo, type) {
    swal({
        title: titulo || "Procesando",
        text: (mensaje || "Un momento por favor") + "<br><br><i class='fa fa-spinner fa-pulse fa-3x fa-fw'></i><span class='sr-only'>Loading...</span>",
        html: true,
        type: type || null,
        showConfirmButton: false

    });
}

function swal_unprocces() {
    sweetAlert.close();
}
function swal_opExitosa() {
    swal({
        title: "OPERACIÓN EXITOSA",
        text: "Comentario registrado correctamente",
        type: "success",
        confirmButtonText: "Bien"
    });
}
function swal_opFallida() {
    swal({
        title: "OPERACIÓN FALLIDA",
        text: "Ha ocurrido un error, intente mas tarde",
        type: "error",
        confirmButtonText: "Aceptar"
    });
}
