var _idTemporal = 0;
var _arrCoordenadasIngresadas = new Array();
var _idIngresos = 0;
var _arrColumnRows = new Array();
var _ADMINOB = [];
$(function () {
    buscarVariables();
    getAdminRiskTier();
});

function fillCoordenadasPresupuesto(table) {
    for (var i in _arrColumnRows) {
        if (_arrColumnRows[i].column != $('#inpColumn').val() || _arrColumnRows[i].row != $('#inpRow').val()) {
            _arrCoordenadasIngresadas = new Array();
        }
    }
    $(table).find('tbody').empty();
    $(table).find('thead').empty();
    var column = $('#inpColumn').val();
    var columna = $('<tr>');
    $(columna).append('<td></td>');
    $('#tblPresupuesto tbody tr').each(function () {
        var column_id = $(this).find('td').eq(0).find('input').attr('id');
        var row_id = $(this).find('td').eq(1).find('input').attr('id');
        if ($(this).find('td').eq(0).find('input').attr('id') != undefined) {
            $(columna).append('<th>' + $('#' + column_id).val() + '</th>');
        }
        var fila = $('<tr>');
        for (var i = 0; i <= column; i++) {
            if ($(this).find('td').eq(1).find('input').attr('id') != undefined) {
                if (i == 0) {
                    $(fila).append('<td>' + $('#' + row_id).val() + '</td>');
                } else {
//                                                                            $(fila).append('<td><input class="form-control" placeholder="Ingrese valor(*)" id="rowIngreso_' + _idIngresos + '"></td>');
                    $(fila).append('<td>' +
                            '<select class="form-control" id="rowIngreso_' + _idIngresos + '">' +
                            '<option>Seleccione</option>' +
                            '<option>A</option>' +
                            '<option>B</option>' +
                            '<option>C</option>' +
                            '<option>D</option>' +
                            '<option>E</option>' +
                            '<option>F</option>' +
                            '</select>' +
                            '</td>');
                    _idIngresos--;
                }
            }
        }
        $(table).find('tbody').append(fila);
    });

    $(table).find('thead').append(columna);

    if (_arrCoordenadasIngresadas.length > 0) {
        for (var j in _arrCoordenadasIngresadas) {
            $(table).find('tbody').find('tr').find('td').each(function (i, e) {
                if ($(this).find('input').attr('id') != undefined) {
                    if (_arrCoordenadasIngresadas[j].id == $(this).find('input').attr('id')) {
                        var id = $(e).find('input').attr('id');
                        $('#' + id).val(_arrCoordenadasIngresadas[j].detalle);
                    }
                }
            });
        }
    }
}

function fillCoordenadasIngresadas() {
    _idIngresos = 0;
    _arrColumnRows = new Array();
    _arrCoordenadasIngresadas = new Array();
    var objColumnRow = new Object();
    objColumnRow.column = $('#inpColumn').val();
    objColumnRow.row = $('#inpRow').val();
    _arrColumnRows.push(objColumnRow);
    $('#tblCoordenadasPresupuesto tbody tr td').each(function (index, element) {
        var row_data = $(element).find('input').attr('id');
        if (row_data != undefined) {
            var objDatos = new Object();
            objDatos.id = row_data;
            objDatos.detalle = $('#' + row_data).val();
            _arrCoordenadasIngresadas.push(objDatos);
        }
    });
}

function fillPreviusfollowing() {
    fillCoordenadasIngresadas();
    $('#id-panel-body-2').addClass('hidden');
    $('#id-panel-body-1').removeClass('hidden');
}

function fillValidarTableColumnRow() {
    var flag = false;
    if ($('#tblPresupuesto').find('tbody').find('tr').length == 0) {
        $('#divInformacion').removeClass('hidden');
        var texto = 'Debe crear el las columnas y las filas';
        $('#lblInformacion').text(texto);
        return false;
    }
    $('#tblPresupuesto tbody tr').each(function () {
        if ($(this).find('td').eq(0).find('input').attr('id') != undefined) {
            var column_id = $(this).find('td').eq(0).find('input').attr('id');
            var row_id = $(this).find('td').eq(1).find('input').attr('id');
            if ($('#' + column_id).val().trim().length == 0 || $('#' + row_id).val() == 0) {
                $('#divInformacion').removeClass('hidden');
                var texto = 'Debe ingresar los datos en solicidatods(*)';
                $('#lblInformacion').text(texto);
                flag = true;
                return false;
            }
        }
    });

    if (flag == false) {
        $('#id-panel-body-2').removeClass('hidden');
        $('#id-panel-body-1').addClass('hidden');
        fillCoordenadasPresupuesto($('#tblCoordenadasPresupuesto'));
    }
}

function fillValidarDatos() {
    var texto = '';
    $('#divInformacion').removeClass('hidden');

    if ($('#cmboxVariable').val() == 0) {
        texto = 'Debe seleccionar una variable para el eje X';
        $('#lblInformacion').text(texto);
        return false;
    } else {
        $('#divInformacion').addClass('hidden');
        filladdRowtable($('#tblPresupuesto'));
    }
}

var columns = [
    'A', 'B', 'C', 'D', 'E', 'F'
];
function filladdRowtable(table) {
    $('#tblPresupuesto tbody').empty();
    $('#tblPresupuesto thead').empty();
    var col = '<th></th>';
    for (var i in columns) {
        col += '<th style="text-align: center;">' + columns[i] + '</th>';
    }
    $('#tblPresupuesto thead').append(col);
    var select = '<select class="form-control">' +
            '<option>Seleccione</option>' +
            '<option>6</option>' +
            '<option>9</option>' +
            '<option>12</option>' +
            '<option>18</option>' +
            '<option>36</option>' +
            '<option>72</option>' +
            '</select>';
    var row = $('#inpRow').val();
    for (var i = 0; i < row; i++) {
        var fila = '<tr>';
        var col = '<td style="text-align: center;">' + (1 * (i + 1)) + '</td>';
        for (var j in columns) {
//                                                                    col += '<td style="text-align: center;"><input type="text" class="form-control" maxlength="2" onkeyup="formatoNumero(this)" /></td>';
            col += '<td style="text-align: center;">' + select + '</td>';
        }
        fila += col;
        fila += '</tr>';
        $('#tblPresupuesto tbody').append(fila);
    }
}

function fillGuardarPresupuesto() {
    swal({
        title: "Guardar",
        text: "¿Desea guardar el presupuesto ingresado?",
        type: "info",
        showCancelButton: true,
        closeOnConfirm: false,
        showLoaderOnConfirm: true
    }, function () {
        setTimeout(function () {
            swal('', 'Se ha guardado correctamente', 'success');
        }, 2000);
    });
}

function buscarVariables() {
    $('#cmboxVariable').append('<option value="0" selected>Seleccione</option>');

    $.ajax({
        url: 'Svl_Variable',
        type: 'POST',
        dataType: 'json',
        data: {
            accion: 'listar'
        }, success: function (data, textStatus, jqXHR) {
            if (data.estado === 200) {
                $('#cmboxVariable').append('<option value="100">Monto</option>');
                $('#cmboxVariable').append('<option value="100">Tasa</option>');
                $('#cmboxVariable').append('<option value="200">Plazo</option>');
                $('#cmboxVariable').append('<option value="300">Pie</option>');
                for (var i in data.datos) {
                    $('#cmboxVariable').append('<option value="' + data.datos[i].id + '">' + data.datos[i].nombre + '</option>');
                }
            }
        }
    });
}

function getAdminRiskTier() {
    $.ajax({
        url: 'Svl_RiskTier',
        type: 'post',
        dataType: 'json',
        data: {
            accion: 'listar-admin-risktier'
        }, beforeSend: function () {
            $('#tblAdminRiskTier tbody').html('Cargando datos... <i class="fa fa-spinner fa-spin"></i>');
        }, success: function (data) {
            $('#tblAdminRiskTier tbody').empty();
            var obTipo = new Object();
            if (data.estado === 200) {
                var datos = data.datos;
                for (var i in datos) {
                    obTipo[datos[i].tipo.id] = datos[i].tipo.nombre;
                    _ADMINOB.push(datos[i]);
                }
            }

            for (var i in obTipo) {
                $('#cmboxTipoRiskTier').append('<option value="' + i + '">' + obTipo[i] + '</option>');
            }

            $('#cmboxTipoRiskTier').val(1);
            cambiarTipo(1);
        }
    });
}

function cambiarTipo(idTipo) {
    $('#tblAdminRiskTier tbody').empty();
    for (var i in _ADMINOB) {
        if (idTipo == _ADMINOB[i].tipo.id) {
            $('#tblAdminRiskTier tbody').append('<tr>'
                    + '<td>' + _ADMINOB[i].nombre + '</td>'
                    + '<td>' + _ADMINOB[i].fechaCreacion + '</td>'
                    + '<td><button class="btn btn-dafult" '
                    + ' onclick="go(\'cmd\',[{\'id\' : \'code\', \'val\' : \'adminRiskTier\' },{\'id\' : \'titulo\', \'val\' : \'' + _ADMINOB[i].nombre + '\' },{\'id\' : \'idAdminRiskTier\', \'val\' : \'' + _ADMINOB[i].id + '\' }], undefined,\'cmd\')">'
                    + '<i class="fa fa-list-alt"></i></button></td>'
                    + '</tr>');
        }
    }
}