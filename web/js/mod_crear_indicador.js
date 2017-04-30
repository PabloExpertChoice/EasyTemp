var _idTemporal = 0;
var _arrCoordenadasIngresadas = new Array();
var _idIngresos = 0;
var _arrColumnRows = new Array();
var obConfig = {};
var RISKTIER = undefined;

function fillCoordenadasPresupuesto(table) {
    $(table).find('tbody').empty();
    $(table).find('thead').empty();
    var column = $('#inpColumn').val();
    var columna = $('<tr>');
    $(columna).append('<td style="text-align: center;"><span style="color:blue;">'+obConfig.variableY.nombre+'</span><b> / </b>'+obConfig.variableX.nombre+'</td>');
    $('#tblPresupuesto tbody tr').each(function () {
        var column_id = $(this).find('td').eq(0).find('input').attr('id');
        var row_id = $(this).find('td').eq(1).find('input').attr('id');
        if ($(this).find('td').eq(0).find('input').attr('id') != undefined) {
            $(columna).append('<th style="text-align: center;">' + $('#' + column_id).val() + '</th>');
        }

        var fila = $('<tr>');
        for (var i = 0; i <= column; i++) {
            if ($(this).find('td').eq(1).find('input').attr('id') != undefined) {
                if (i == 0) {
                    $(fila).append('<td align="center"><span style="color:blue;">' + $('#' + row_id).val() + '</span></td>');
                } else {
                    var colAux = '<td><select class="form-control"><option value="0">Seleccione</option>';
                    for (var j in RISKTIER) {
                        colAux += '<option value="' + RISKTIER[j].id + '">' + RISKTIER[j].nombre + '</option>';
                    }
                    colAux += '</select></td>';

                    $(fila).append(colAux);
                    _idIngresos--;
                }
            }
        }
        $(table).find('tbody').append(fila);
    });

    $(table).find('thead').append(columna);
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
    guardarConfiguracion();
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

    if ($('#cmboxTipoRiskTier').val() == 0) {
        texto = 'Debe seleccionar tipo';
        $('#lblInformacion').text(texto);
        return false;
    } else if ($('#cmboxEjeX').val() == 0) {
        texto = 'Debe seleccionar una variable para el eje X';
        $('#lblInformacion').text(texto);
        return false;
    } else if ($('#cmboxEjeY').val().trim().length == 0) {
        texto = 'Debe seleccionar una variable para el eje Y';
        $('#lblInformacion').text(texto);
        return false;
    } else {
        $('#divInformacion').addClass('hidden');
        filladdRowtable($('#tblPresupuesto'));
    }
}

function filladdRowtable(table) {
    $('#tblPresupuesto tbody').empty();
    $('#tblPresupuesto thead').empty();
    var var1 = $('#cmboxEjeX option:selected').text();
    var var2 = $('#cmboxEjeY option:selected').text();
    $('#tblPresupuesto thead').append('<tr><th>' + var1 + '</th><th>' + var2 + '</th></tr>');
    var column = $('#inpColumn').val();
    var row = $('#inpRow').val();
    if (column == 0 && row == 0) {
        swal('Atencion', 'Debe completar los datos solicitados(*)', 'info');
        return false;
    }

    $(table).find('thead').append('<tr>'
            + '<th>' + $('#cmboxProductoColumn option:selected').text() + '</th>'
            + '<th>' + $('#cmboxProductoRow option:selected').text() + '</th></tr>');
    var cont = column > row ? column : row;
    for (var i = 0; i < cont; i++) {
        var fila = '<tr>';
        if (column > i) {
            var html = '<input  id="column_' + _idTemporal + '" class="form-control" placeholder="Ingrese valor(*)" type="text" onkeyup="return formatoNumero(this)">';
            fila += '<td>' + html + '</td>';
        } else {
            fila += '<td style="visibility: hidden;"></td>';
        }

        if (row > i) {
            var html = '<input id="row_' + _idTemporal + '" class="form-control" placeholder="Ingrese valor(*)" type="text" onkeyup="return formatoNumero(this)">';
            fila += '<td >' + html + '</td>';
        } else {
            fila += '<td style="visibility: hidden;"></td>';
        }

        fila += '</tr>';
        $('#tblPresupuesto tbody').append(fila);
        _idTemporal--;
    }
}

function fillGuardarPresupuesto(button) {
    var arr = [];
    $.each($('#tblCoordenadasPresupuesto tbody tr'), function () {
        var fila = $(this).index();
        arr.push(new Array());
        $.each($(this).find('td'), function () {
            var col = $(this).index();
            if (col > 0) {
                arr[fila].push(new Array());
                arr[fila][(col - 1)] = $(this).find('select').val();
            }
        });
    });

    obConfig.datos = arr;
    guardarRiskTier(button);
}

function buscarVariables() {
    $('#cmboxEjeX').append('<option value="0" selected>Seleccione</option>');
    $('#cmboxEjeY').append('<option value="0" selected>Seleccione</option>');
    $.ajax({
        url: 'Svl_Variable',
        type: 'POST',
        dataType: 'json',
        data: {
            accion: 'listar'
        }, success: function (data, textStatus, jqXHR) {
            if (data.estado === 200) {                
                for (var i in data.datos) {   
                    $('#cmboxEjeX').append('<option value="' + data.datos[i].id + '">' + data.datos[i].variable + '</option>');                   
                    $('#cmboxEjeY').append('<option value="' + data.datos[i].id + '">' + data.datos[i].variable + '</option>');
                }
            }
        }
    });
}


/**
 * Guarda la configuración del risk tier
 * 
 * @returns {undefined}
 */
function guardarConfiguracion() {
    obConfig = new Object();
    obConfig.tipoRiskTier = $('#cmboxTipoRiskTier').val();
    obConfig.variableX = new Object();
    obConfig.variableX.id = $('#cmboxEjeX').val();
    obConfig.variableX.nombre = $('#cmboxEjeX option:selected').text();
    var arrAux = [];
    $.each($('#tblPresupuesto tbody tr'), function () {
        if ($(this).find('td:eq(0) input').val() != undefined) {
            arrAux.push($(this).find('td:eq(0) input').val().replace(/\./g, ''));
        }
    });
    obConfig.variableX.datos = arrAux;

    obConfig.variableY = new Object();
    obConfig.variableY.id = $('#cmboxEjeY').val();
    obConfig.variableY.nombre = $('#cmboxEjeY option:selected').text();
    var arrAux = [];
    $.each($('#tblPresupuesto tbody tr'), function () {
        if ($(this).find('td:eq(1) input').val() != undefined) {
            arrAux.push($(this).find('td:eq(1) input').val().replace(/\./g, ''));
        }
    });
    obConfig.variableY.datos = arrAux;

    obConfig.filas = $('#inpRow').val().replace(/\./g, '');
    obConfig.columnas = $('#inpColumn').val().replace(/\./g, '');
}

/**
 * 
 * @param {type} _buscarRiskIndicator
 * @return {undefined}
 */
function buscarRiskTier() {
    origenX_N   = [];   origenY_N = [];
    origenX_J   = [];   origenY_J = [];
    arrCab      = [];   arrDef    = [];    
    bloquearUI('tablaRiskTier','black'); //bloquear UI
    $.ajax({
        url: 'Svl_RiskTier',
        type: 'POST',
        dataType: 'json',
        data: {
            accion: 'listar'
        }, success: function (data, textStatus, jqXHR) {
            if (data.estado === 200) {
                //console.log(data);
                RISKTIER = data.datos;
            }

            buscarRiskIndicator();
        }
    });
}

var origenX_N = [];
var origenY_N = [];

var origenX_J = [];
var origenY_J = [];

var arrCab = [];
var arrDef = [];
function buscarRiskIndicator() {
    $.ajax({
        url: 'Svl_RiskTier',
        type: 'POST',
        dataType: 'json',
        data: {
            accion: 'listar-riskindicator'
        }, success: function (data, textStatus, jqXHR) {
            if (data.estado === 200) {
                $('#contenedorRiskTier').show();
                $('#tablaRiskTier').empty();                
                var datos = data.datos;
                arrCab = datos;
                arrDef = data.def;
                for (var j in datos) {
                    var cab = datos[j];
                    for (var i in cab.caberasTablaCore) {
                        if (cab.tipoAdminRiskTier.id == 1) {
                            if (cab.caberasTablaCore[i].eje.toString().toLowerCase() == 'x') {
                                origenX_N.push(cab.caberasTablaCore[i]);
                            } else if (cab.caberasTablaCore[i].eje.toString().toLowerCase() == 'y') {
                                origenY_N.push(cab.caberasTablaCore[i]);
                            }
                        } else if (cab.tipoAdminRiskTier.id == 2) {
                            if (cab.caberasTablaCore[i].eje.toString().toLowerCase() == 'x') {
                                origenX_J.push(cab.caberasTablaCore[i]);
                            } else if (cab.caberasTablaCore[i].eje.toString().toLowerCase() == 'y') {
                                origenY_J.push(cab.caberasTablaCore[i]);
                            }
                        }
                    }
                }
                
                cambiarVista(1);
            }
        }
    });
}
/*
 * Esta funcion intermedia a cambiarVista(idTipo) se implemento para no afectar la experiencia del usuario a nivel de UI:
 */
function cambiarTipoRiskTier(idTipo)
{    
    $('#tablaRiskTier').text('');
    $('#tablaRiskTier').append('<thead> <tr class="uppercase"> <th style="text-align: center;"> Buscando datos para  RiskTier.. </th> </tr> </thead>');
    bloquearUI('tablaRiskTier','black'); //bloquear UI
    setTimeout(function(){
      cambiarVista(idTipo);
    }, 500);
    
}

function cambiarVista(idTipo) {   
    $('#tablaRiskTier').text('');//limpiar tabla
    if (idTipo == 1) {
        var cab = arrCab[0].tipoAdminRiskTier.id == 1 ? arrCab[0] : arrCab[1];
        var row = 0;
        for (var i = 0; i < origenY_N.length; i++) {
            var fila = '<tr>'
            if (row == 0) {
                fila += '<th style="text-align: center; font-size:13px; max-width: 100px;">' + cab.origenY.nombre + ' &#92; ' + cab.origenX.nombre + '</th>';
                for (var j in origenX_N) {
                    fila += '<th style="text-align: center;">' + origenX_N[j].valor + '</th>';
                }
                row = 1;
                i--;
            } else {
                fila += '<th style="text-align: center;">' + origenY_N[i].valor + '</th>';
                for (var j in origenX_N) {
                    fila += '<td id="' + origenY_N[i].id + '_' + origenX_N[j].id + '" style="text-align: center;"></td>';
                }
            }

            fila += '</tr>';
            $('#tablaRiskTier').append(fila);
        }



        for (var i in arrDef) {
            for (var j in RISKTIER) {
                if (RISKTIER[j].id == arrDef[i].idRiskTier) {
                    $('#' + arrDef[i].y.idRiskIndicator + '_' + arrDef[i].x.idRiskIndicator).html(RISKTIER[j].nombre);
                    break;
                }
            }
        }
    } else if (idTipo == 2) {
        var cab = arrCab[1].tipoAdminRiskTier.id == 2 ? arrCab[1] : arrCab[0];
        var row = 0;
        for (var i = 0; i < origenY_J.length; i++) {
            var fila = '<tr>'
            if (row == 0) {
                fila += '<th style="text-align: center; font-size:13px; max-width: 100px;">' + cab.origenY.nombre + ' &#92; ' + cab.origenX.nombre + '</th>';
                for (var j in origenX_J) {
                    fila += '<th style="text-align: center;">' + origenX_J[j].valor + '</th>';
                }
                row = 1;
                i--;
            } else {
                fila += '<th style="text-align: center;">' + origenY_J[i].valor + '</th>';
                for (var j in origenX_J) {
                    fila += '<td id="' + origenY_J[i].id + '_' + origenX_J[j].id + '" style="text-align: center;"></td>';
                }
            }

            fila += '</tr>';
            $('#tablaRiskTier').append(fila);
        }



        for (var i in arrDef) {
            for (var j in RISKTIER) {
                if (RISKTIER[j].id == arrDef[i].idRiskTier) {
                    $('#' + arrDef[i].y.idRiskIndicator + '_' + arrDef[i].x.idRiskIndicator).html(RISKTIER[j].nombre);
                    break;
                }
            }
        }
    }
}

function guardarRiskTier(button) {
    var htmlBtn = $(button).html();
    $(button).html('Guardando... <i class="fa fa-spinner fa-spin"></i>');
    $(button).parent().find('button').prop('disabled', true);
    //console.log("paso por: guardarRiskTier");
    $.ajax({
        url: 'Svl_RiskTier',
        type: 'POST',
        dataType: 'json',
        data: {
            accion: 'guardar-risktier',
            obRiskTier: JSON.stringify(obConfig)
        }, success: function (data, textStatus, jqXHR) {
            $(button).html(htmlBtn);
            $(button).parent().find('button').prop('disabled', false);
            if (data.estado !== 200) {
                alert('Error al guardar risktier');
            } else {
                alert('RiskTier Guardado con Exito, Será redireccionado!');
                go('cmd', [{id: 'code', val: 'risktier'}], undefined, 'cmd')
            }
        }
    });
}
