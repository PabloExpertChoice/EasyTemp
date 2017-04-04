var QUIEBRA = undefined;
var nombre = '';
var apePaterno = '';
var apeMaterno = '';
var rut = '';
var dv = '';
var idUsuario = 0;
var idCliente = 0;
var tblPjud;
var arrPjud;
var renta = 0;
var datosFormCaptcha = {};
var iframeCargado = false;

function verModalPJUD() {
    $('#modalPJUD .modal-dialog .modal-content .modal-body object').remove();
    $('#modalPJUD').modal({'backdrop': 'static'});
    $('#tblPjudCont').show();
    $('#modalPJUD .modal-dialog .modal-content .modal-header .modal-title').html(nombre + ' ' + apePaterno + ' ' + apeMaterno);
}

/**
 * 
 * @param {type} _rut
 * @param {type} _dv
 * @param {type} _nombre
 * @param {type} _apePaterno
 * @param {type} _apeMaterno
 * @returns {undefined}
 */
function getDatosPJUD(_rut, _dv, _nombre, _apePaterno, _apeMaterno) {
    $.ajax({
        url: 'Svl_Cliente',
        type: 'POST',
        dataType: 'json',
        data: {
            accion: 'getDatosPJUD',
            rut: _rut,
            dv: _dv,
            nombre: _nombre,
            apePaterno: _apePaterno,
            apeMaterno: _apeMaterno,
        },
        beforeSend: function (xhr) {
            $('#boxPjud .info-box-content .info-box-number').html('<i class="fa fa-spinner fa-spin"></i>');
        },
        success: function (data, textStatus, jqXHR) {


            $('#boxPjud .info-box-content .info-box-number').html('No registra datos asociados');
            if (data.estado === 200) {
                arrPjud = data.causasJudiciales;
                $('#tblPJUD').DataTable().rows.add(arrPjud).draw(false);
                $('#boxPjud .info-box-content .info-box-number').html('Nro. ' + arrPjud.length);
            } else {
                $('#boxPjud .info-box-content .info-box-number').css({'font-size': '15px'});
            }
        }
    });
}

function verPdfPjud(icono) {
    $('#tblPjudCont').hide();
    var ob = tblPjud.row($(icono).parents('tr')).data();
    var objbuilder = '';
    objbuilder = ' <object width="100%" height="500px" data="' + ob.documentoDemanda + '"></object> ';
    $('#modalPJUD .modal-dialog .modal-content .modal-body').append(objbuilder);
}

function format(d) {
    return '<center><table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">' +
            '<tr>' +
            '<td>Archivo</td>' +
            '<td><i class="' + d.icono + '"></i></td>' +
            '</tr>' +
            '<tr>' +
            '<td>Extension number:</td>' +
            '<td>' + d.extn + '</td>' +
            '</tr>' +
            '<tr>' +
            '<td>Extra info:</td>' +
            '<td>And any further details here (images etc)...</td>' +
            '</tr>' +
            '</table></center>';
}

$('#tblPJUD tbody').on('click', 'td.details-control', function () {
    var tr = $(this).closest('tr');
    var row = tblPjud.row(tr);
    if (row.child.isShown()) {
        row.child.hide();
        tr.removeClass('shown');
    } else {
        row.child(format(row.data())).show();
        tr.addClass('shown');
    }
});


/**
 * 
 * @param {type} _rut
 * @param {type} _dv
 * @returns {undefined}
 */
function getScore(_rut, _dv) {
    $.ajax({
        url: 'Svl_Scoring',
        type: 'POST',
        dataType: 'json',
        data: {
            accion: 'scoring',
            rut: _rut,
            dv: _dv
        },
        success: function (data, textStatus, jqXHR) {
            if (data.estado === 200) {
                var point = $('#contenedor').highcharts().series[0].points[0];
                var new_value = data.datos.mes1;
                point.update(new_value);
                console.log(point);
                $('#gauge1').html(parseInt(data.datos.mes2));
                $('#gauge2').html((data.datos.mes3));
                $('#gauge3').html((data.datos.mes4));
            }
        }
    });
}

/**
 * Va al servlert Svl_Cliente y se traen los datos de SANCTION SEARCH OFACT TREAS
 * 
 * @param {type} _nombre
 * @param {type} _apePaterno
 * @param {type} _apeMaterno
 * @returns {undefined}
 */
function buscarDatosOfac(_nombre, _apePaterno, _apeMaterno) {
    $.ajax({
        url: 'Svl_Cliente',
        type: 'POST',
        dataType: 'json',
        data: {
            accion: 'getDatosOfac',
            nombre: _nombre + ' ' + _apePaterno + ' ' + _apeMaterno,
        },
        beforeSend: function (xhr) {
            $('#boxOfac .info-box-content .info-box-number').html('<i class="fa fa-spinner fa-spin"></i>');
        },
        success: function (data, textStatus, jqXHR) {
            if (data.estado === 200) {
                var datos = data.datos;
                if (datos.length > 0) {
                    $('#boxOfac .info-box-content .info-box-number').html('Yes');
                } else {
                    $('#boxOfac .info-box-content .info-box-number').html('No');
                }
                $('#tblResultadosOfac').DataTable().rows.add(datos).draw(false);
            }
        }
    });
}