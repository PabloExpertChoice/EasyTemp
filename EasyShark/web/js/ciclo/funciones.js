function formatoNumero(input) {
    var val = $(input).val().toString().trim().replace().replace(/\./g, '');
    $(input).val(number_format(val, 0, ',', '.'));
}

function cli_rut_dv(inp, event, inpDv) {
    $('#' + inpDv).val($.Rut.getDigito($(inp).val()));
}

/**
 * Buscar rut del menu bar
 * 
 * @param {type} e
 * @returns {Boolean}
 */
function buscarRut(e) {
    if (e.keyCode == 13) {
//        var rut = $() e.target.value.replace(/\./g, '');
        var rut = $('#txtRutMenuBar').val().replace(/\./g, '');
        var dv = $('#txtRutDvMenuBar').val().trim();
        var renta = $('#txtRentaMenuBar').val().replace(/\./g, '');
        if (rut.length > 0 && rut != '0' && dv.length > 0 && renta.length > 0) {
            $.ajax({
                url: 'Svl_Cliente',
                dataType: 'json',
                type: 'POST',
                data: {
                    accion: 'infoCliente',
                    rut: rut,
                    dv: dv,
                    renta: renta
                },
                beforeSend: function (xhr) {
                    $('#spinBuscarRut').show();
                    $('#txtRutMenuBar').prop('disabled', true);
                    $('#txtRentaMenuBar').prop('disabled', true);
                },
                success: function (data, textStatus, jqXHR) {
                    $('#spinBuscarRut').hide();
                    $('#txtRutMenuBar').prop('disabled', false);
                    $('#txtRentaMenuBar').prop('disabled', false);
                    if (data.estado === 200) {
                        go('cmd', [
                            {id: 'code', val: 'dashboard-analistas'},
                            {id: 'idCliente', val: data.datos.id},
                            {id: 'rut', val: rut},
                            {id: 'dv', val: dv},
                            {id: 'nombre', val: data.datos.nombre},
                            {id: 'apePaterno', val: data.datos.apePaterno},
                            {id: 'apeMaterno', val: data.datos.apeMaterno},
                            {id: 'renta', val: $('#txtRentaMenuBar').val().replace(/\./g, '')},
                            {id: 'rentaDepurada', val: data.rentaDepurada}
                        ], undefined, 'cmd');
                    }
                }
            });
        }

        return false;
    }
}

/**
 * 
 * Metodo que redirecciona la pagina
 * @param {type} page
 * @param {type} param
 * @param {type} target
 * @param {type} cmd
 * 
 * @returns {undefined}
 * @param {Strig} page string con el comando a ejecutar
 * @param {JSON} param Json con los parametros a enviar en formato [{"id":"x","val":"x"},{"id":"x","val":"x"}]
 *
 */
function go(page, param, target, cmd) {
    var form;
    var acc;
    var metod = 'POST';
    var Cmd = cmd || 'cmd';
    var formId = 'Redirect';
    if (document.getElementById(formId) === undefined || document.getElementById(formId) === null) {
        form = document.createElement('form');
        form.id = formId;
        form.action = Cmd;
        form.method = metod;
        document.body.appendChild(form);
    } else {

        form = document.getElementById(formId);
        form.action = Cmd;
        form.method = metod;
    }

    if (target != undefined && target == true) {
        form.target = '_blank';
    } else {
        form.removeAttribute("target");
    }

    if (document.getElementById('sendTo') === undefined || document.getElementById('sendTo') === null) {
        acc = document.createElement('input');
        acc.id = 'sendTo';
        acc.name = 'sendTo';
        acc.type = 'hidden';
        form.appendChild(acc);
    } else {
        acc = document.getElementById('sendTo');
        acc.name = 'sendTo';
        acc.type = 'hidden';
    }
    if ((param !== undefined && param !== null) && param.length > 0) {
        addParams(param, form);
    }
    acc.value = page;
    form.submit();
}

/**
 * Metodo que agrega parametros para enviar a un formulario html
 * @param {JSON} params
 * @param {HTMLFORM} form
 * @returns {undefined}
 */
function addParams(params, form) {
    var nelem;
    if (params.length > 0) {
        $.each(params, function (i, field) {


            nelem = $(form).find("[name='" + field.id + "']").is('input') ? document.getElementById(field.id) : document.createElement('input');
            nelem.type = 'hidden';
            nelem.id = field.id;
            nelem.name = field.id;
            nelem.value = field.val;
            form.appendChild(nelem);
        });
    }
}