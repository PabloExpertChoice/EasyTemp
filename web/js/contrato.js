/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    setTextToggle('chkSinacofi');
    setTextToggle('chkEquifax');
    setTextToggle('chkTransunion');   
});


function setTextToggle(id) {
    $('#'+id).bootstrapToggle(
            {
                on: "SI",
                off: "NO"
            }
    )
}
function abrirModalContrato(id) {
    if ($('#'+id).prop('checked') == false) {
        $('#'+id).prop('checked', true).change();
        $('#modal'+id).modal({backdrop: 'static'});
    }
}
function confirmarContrato(id) {
    $('#'+id).prop('checked', true).change();
}
function cancelarContrato(id) {
    $('#'+id).prop('checked', false).change();
}