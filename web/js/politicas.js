var common = {
    anchor: ["Left", "Right"],
};


var TREE = new Object();
function getPoliticasRiskTier(_idTipoAdminRiskTier) {
    $.ajax({
        url: 'Svl_RiskTier',
        type: 'POST',
        dataType: 'json',
        data: {
            accion: 'arbol-risk-tier'
        }, success: function (data, textStatus, jqXHR) {
            if (data.estado === 200) {
                TREE['natural'] = data.datos.natural;
                TREE['juridico'] = data.datos.juridico;
                console.log(data.datos.natural);
                console.log(data.datos.juridico);
                
                var datos = data.datos;
                var top1 = 10;
                for (var i in datos) {

                    $('#canvas').append('<div id="ejex' + top1 + '" style="top: ' + top1 + 'px;left: 250px;width: 250px;" class="window jtk-node"><strong>' + datos[i].variable + ' > ' + number_format(datos[i].valor, 0, ',', '.') + '</strong></div>');
                    jsPlumb.connect({
                        source: 'ejex' + top1,
                        target: 'divInicio',
                    }, common);
                    top1 = top1 + 50;
                }
            }

            jsPlumb.draggable($(".jtk-node"));
            fillTree(1);
        }
    });
}

function fillTree(_tipo) {
    $('#canvas').empty();
    jsPlumb.ready(function () {
        $('#canvas').append('<div class="window jtk-node" id="divInicio" style="padding: 0px;"><strong>Inicio</strong></div>');
    });
    var top1 = 10;
    var arrAux = [];
    if (_tipo == 1) {
        arrAux = TREE.natural;
    } else if (_tipo == 2) {
        arrAux = TREE.juridico;
    }
    for (var i in arrAux) {
        var ob = arrAux[i];
        $('#canvas').append('<div id="ejex' + top1 + '" style="top: ' + top1 + 'px;left: 250px;width: 250px;" class="window jtk-node"><strong>' + ob.x + ' < ' + number_format(ob.valor_x, 0, ',', '.') + ' </strong></div>');
        jsPlumb.connect({
            source: 'ejex' + top1,
            target: 'divInicio',
            connector: ["Straight"]
        }, common);

        $('#canvas').append('<div id="ejey' + top1 + '" style="top: ' + top1 + 'px;left: 600px;width: 250px;" class="window jtk-node"><strong>' + ob.y + ' < ' + number_format(ob.valor_y, 0, ',', '.') + ' </strong></div>');
        jsPlumb.connect({
            source: 'ejey' + top1,
            target: 'ejex' + top1,
            connector: ["Straight"]
        }, common);

        $('#canvas').append('<div id="ejert' + top1 + '" style="top: ' + top1 + 'px;left: 950px;width: 50px;" class="window jtk-node"><strong>' + ob.risktier + ' </strong></div>');
        jsPlumb.connect({
            source: 'ejert' + top1,
            target: 'ejey' + top1,
            connector: ["Straight"]
        }, common);

        top1 = top1 + 50;
    }

    jsPlumb.draggable($(".jtk-node"));
}

