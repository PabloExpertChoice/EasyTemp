var VARIABLE = {};

var OPERADOR = {
    28: {detalle: '>'},
    29: {detalle: '<'},
    30: {detalle: '='},
    31: {detalle: '>='},
    32: {detalle: '<='}
};

var CONT = 0;

$(function () {

    initReglas();
    getVariables();
    getReglas();
    $('#formTree').validate({
        errorPlacement: function (label, element) {
            if ($(element).find('.select').length > 0) {

            } else if ($(element).find('.radioBtn').length > 0) {

            } else {
                label.addClass('error');
                label.insertAfter(element);
            }
        }
    });
});

function initReglas() {
    $("#tblAnswerTreeBusiness").DataTable({
        language: {
            url: 'json/Spanish.json'
        },
//        "aaData": REGLAS,
        "aoColumns": [
            {"mData": "numero"},
            {"mData": "respuesta"},
//            {"mData": "",
//                "mRender": function (data, type, full) {
//                    return   '<span class="badge ' + full.respuesta + '">&nbsp;</span>';
//                }
//            },
            {"mData": "nombre"},
            {"mData": "regla"},
            {"mData": "fecha"},
            {"mData": "usuario"},
            {"mData": "tipo"},
            {"mData": "",
                "mRender": function (data, type, full) {
                    return '<button class="btn btn-default" onclick="eliminarRegla(this)"><i class="fa fa-times"></i></button>';
                }
            }
        ]
    });
}

function initVariable(select) {
    $(select).empty();
    $(select).append('<option value="0">Seleccione</option>');
    for (var i in VARIABLE) {
        $(select).append('<option value="' + i + '">' + VARIABLE[i].detalle + '</option>');
    }
}

function initOperador(select) {
    $(select).empty();
    $(select).append('<option value="0">Seleccione</option>');
    for (var i in OPERADOR) {
        $(select).append('<option value="' + i + '">' + OPERADOR[i].detalle + '</option>');
    }
}

function agregarCampos() {
    var html = '<div class="row contVariable">'
            + '<div class="col-md-4">'
            + '    <label>' + (CONT == 0 ? 'Variable' : '&nbsp;') + '</label>'
            + '    <select class="form-control cmboxVariable" id="sl_variable_1_' + CONT + '"></select>'
            + '</div>'
            + '<div class="col-md-4">'
            + '    <div class="row">'
            + '        <div class="col-xs-4">'
            + '            <label>' + (CONT == 0 ? 'Operador' : '&nbsp;') + '</label>'
            + '            <select class="form-control cmboxOperador" id="sel2_' + CONT + '"></select>'
            + '        </div>'
            + '        <div class="col-xs-5">'
            + '            <label>' + (CONT == 0 ? 'Valor' : '&nbsp;') + '</label>'
            + '            <input type="text" class="form-control txtValor" id="txtMonto_' + CONT + '" onkeyup="return formatoNumero(this)"/>'
            + '        </div>'
            + '        <div class="col-md-3">'
            + '            <label>&nbsp;</label>'
            + '            <select class="form-control cmboxCondicion" visibilidad="false" id="sel4_' + CONT + '" style="display: none;">'
            + '                <option value="0">Seleccione</option>'
            + '                <option value="33">Y</option>'
            + '                <option value="34">O</option>'
            + '            </select>'
            + '        </div>'
            + '    </div>'
            + '</div>'
            + '<div class="col-md-4">'
            + '</div>'
            + '</div>';

    $('#contVariables').append(html);
    if (CONT > 0) {
        $('#sel4_' + (CONT - 1)).show();
        $('#sel4_' + (CONT - 1)).attr('visibilidad', 'true');
    }

    initVariable($('#sl_variable_1_' + CONT));
    initOperador($('#sel2_' + CONT));
    CONT++;
}

function formatoNumero(input) {
    var valor = $(input).val().replace(/\./g, '');
    $(input).val(number_format(valor, 0, ',', '.'));
}

var sum = 100;
var jsonReglaG = new Object();
function agregarRegla() {
    var nombre = $('#nomb_regla').val();
    var calificacion = $('input[name=optionsRadios]:checked').val();
    var tipo = $('#cmboxTipo').val();

    if (nombre.toString().trim().length == 0) {
        alert('Ingrese nombre de la regla');
    } else if (calificacion == undefined) {
        alert('Debe seleccionar una calificacion para la regla');
    } else if (tipo === null) {
        alert('Debe seleccionar tipo (Natural o Jurídico)');
    } else {
        jsonReglaG.nombre = nombre;
        jsonReglaG.calificacion = calificacion;
        jsonReglaG.tipo = tipo;
        var detalles = [];
        var flag = false;
        $.each($('#contVariables .contVariable'), function () {
            flag = false;
            var variable = $(this).find('.cmboxVariable').val();
            var operador = $(this).find('.cmboxOperador option:selected').text();
            var valor = $(this).find('.txtValor').val().trim().replace(/\./g, '');
            var condicion = $(this).find('.cmboxCondicion option:selected').text().toString().trim();
            var visibilidad = $(this).find('.cmboxCondicion').attr('visibilidad');

            if (variable == 0) {
                alert('Debe seleccionar variable');
                return false;
            } else if (operador == 'Seleccione') {
                alert('Debe seleccionar operador');
                return false;
            } else if (valor.length == 0) {
                alert('Debe ingresar valor');
                return false;
            } else if (visibilidad == 'true' && condicion == 'Seleccione') {
                alert('Debe seleccionar la condicion');
                return false;
            } else {

            }

            var jsonDetalle = Object();
            jsonDetalle.variable = variable;
            jsonDetalle.operador = operador;
            jsonDetalle.valor = valor;
            jsonDetalle.condicion = condicion != 'Seleccione' ? condicion : '';

            detalles.push(jsonDetalle);
            flag = true;
        });
        jsonReglaG.detalles = detalles;

        if (flag) {
            var footer = ' <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cerrar</button>' +
                    '<button type="button" class="btn btn-primary" onclick="guardarRegla()">Guardar</button>';
            dlgAtb('Guardar Regla', '¿Está seguro que desea guardar esta regla?', footer)
        } else {
            alert('Debe completar todos los datos');
        }
    }
}

function guardarRegla() {
    $.ajax({
        url: 'Svl_AnswerTreeBusiness',
        type: 'post',
        dataType: 'json',
        data: {
            accion: 'guardar-atb',
            atb: JSON.stringify(jsonReglaG)
        }, beforeSend: function (xhr) {
            $('#dlgAtb-body').html('Guardando datos... <i class="fa fa-spinner fa-spin"></i>');
            $('#dlgAtb-footer').html('');
        }, success: function (data) {
            if (data.estado == 200) {
                $('#dlgAtb-title').html('Datos guardados');
                $('#dlgAtb-body').html('Datos guardados correctamente');
                $('#dlgAtb-footer').html('<button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button>');
                var regla = '';
                var reglas = data.datos.detalles;
                var cont = 0;
                for (var j = 0; j < reglas.length; j++) {
                    if (cont > 0) {
                        regla += ' ' + reglas[(j - 1)].condicion + ' ';
                    }

                    regla += 'SI ( ' + VARIABLE[reglas[j].variable.id].detalle + ' ' + reglas[j].operador + ' ' + reglas[j].valor + ')';
                    cont++;
                }

                $('#tblAnswerTreeBusiness').DataTable().row.add({
                    "id": data.datos.id,
                    "numero": data.datos.id,
                    "respuesta": data.datos.calificacion,
                    "regla": regla,
                    "nombre": data.datos.nombre,
                    "fecha": data.datos.fechaCreacion,
                    "usuario": data.datos.usuario.nombre + ' ' + data.datos.usuario.apellidoPaterno,
                    "tipo": $('#cmboxTipo option:selected').text()
                }).draw(false);
            } else {
                alert('Error al guardar datos');
            }
        }
    });
}



function getVariables() {
    VARIABLE = {
        1: {detalle: 'deuda_direct_vig'},
        2: {detalle: 'score'},
        3: {detalle: 'renta'},
        4: {detalle: 'morosidades'},
        5: {detalle: 'deuda_morosa_30_90'}
    };
    agregarCampos();
    $('#btnAgregarVariable').prop('disabled', false);
    $('#btnGuardarRegla').prop('disabled', false);

//    $.ajax({
//        url: 'Svl_Variable',
//        type: 'POST',
//        dataType: 'json',
//        data: {
//            accion: 'listar-atb'
//        }, 
//        success: function (data, textStatus, jqXHR) {
//    $('#btnAgregarVariable').prop('disabled', false);
//    $('#btnGuardarRegla').prop('disabled', false);

//            if (data.estado === 200) {
//                for (var i in data.datos) {
//                    VARIABLE[data.datos[i].id] = new Object();
//                    VARIABLE[data.datos[i].id].detalle = data.datos[i].nombre;
//                }
//            }
//    agregarCampos();
//        }
//    });
}

function getReglas() {
    $.ajax({
        url: 'Svl_AnswerTreeBusiness',
        type: 'POST',
        dataType: 'json',
        data: {
            accion: 'listar-reglas'
        }, success: function (data) {
            if (data.estado == 200) {
                var datos = data.datos;
                for (var i in datos) {
                    var regla = '';
                    var reglas = datos[i].detalles;
                    var cont = 0;
                    for (var j = 0; j < reglas.length; j++) {
                        if (cont > 0) {
                            regla += ' ' + reglas[(j - 1)].condicion + ' ';
                        }

                        regla += 'SI ( ' + reglas[j].variable.nombre + ' ' + reglas[j].operador + ' ' + reglas[j].valor + ')';
                        cont++;
                    }

                    $('#tblAnswerTreeBusiness').DataTable().row.add({
                        "id": datos[i].id,
                        "numero": datos[i].id,
                        "respuesta": datos[i].calificacion,
                        "regla": regla,
                        "nombre": datos[i].nombre,
                        "fecha": datos[i].fechaCreacion,
                        "usuario": datos[i].usuario.nombre + ' ' + datos[i].usuario.apellidoPaterno,
                        "tipo": (datos[i].tipo === 'N' ? 'Natural' : 'Jurídico')
                    }).draw(false);
                }
            }
        }
    });
}

function eliminarRegla(button) {
    var index = $(button).parents('tr').index();
    var data = $('#tblAnswerTreeBusiness').DataTable().row(index).data();

    var body = '¿Está seguro que desea eliminar la regla <b>' + data.nombre + '</b>?';
    var footer = ' <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cerrar</button>' +
            '<button type="button" class="btn btn-primary" onclick="eliminarAtb(this, ' + index + ', ' + data.id + ')">Eliminar</button>';
    dlgAtb('Eliminar regla', body, footer);
}

function eliminarAtb(button, _index, _idAtb) {
    $.ajax({
        url: 'Svl_AnswerTreeBusiness',
        type: 'post',
        dataType: 'json',
        data: {
            accion: 'eliminar-regla',
            idAtb: _idAtb
        }, beforeSend: function () {
            $('#dlgAtb-footer').html('');
            $('#dlgAtb-body').html('Eliminanado... <i class="fa fa-spinner fa-spin"></i>');
        }, success: function (data, textStatus, jqXHR) {
            $('#dlgAtb-footer').html('<button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button>');
            if (data.estado === 200) {
                $('#dlgAtb-body').html('Se ha eliminado la regla de manera satisfactoria');
                $('#tblAnswerTreeBusiness').DataTable().row(_index).remove().draw();
            } else {
                $('#dlgAtb-body').html(data.descripcion);
            }
        }
    });
}

function dlgAtb(_titulo, _body, _footer) {
    $('#dlgAtb-title').empty();
    $('#dlgAtb-body').empty();
    $('#dlgAtb-footer').empty();

    $('#dlgAtb-title').html(_titulo);
    $('#dlgAtb-body').html(_body);
    $('#dlgAtb-footer').html(_footer);

    $('#dlgAtb').modal({backdrop: 'static'});
}