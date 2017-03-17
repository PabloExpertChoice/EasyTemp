/**
 * Grafico para scoring
 * @param {type} param1
 * @param {type} param2
 * @param {type} param3
 */
$('#contenedor').highcharts({
    chart: {
        type: 'gauge',
        backgroundColor: 'rgba(255, 255, 255, 0.1)',
        plotBackgroundColor: null,
        plotBackgroundImage: null,
        plotBorderWidth: 0,
        plotShadow: false,
        animation: {
            duration: 5000
        },
    },
    credits: {
        enabled: false
    },
    title: {
        text: ''
    },
    pane: {
        startAngle: -150,
        endAngle: 150,
        background: {
            borderWidth: 0,
            borderColor: '#fff',
            backgroundColor: 'transparent',
        }
    }, yAxis: {
        min: 0,
        max: 1000,
        minorTickInterval: 'auto',
        minorTickWidth: 1,
        minorTickLength: 10,
        minorTickPosition: 'inside',
        minorTickColor: '#666',
        tickPixelInterval: 50, //aqui se la la cantidad de franjas
        tickWidth: 2,
        tickPosition: 'inside',
        tickLength: 10,
        tickColor: '#666',
        labels: {
            step: 2,
            rotation: 'auto'
        },
        title: {
            text: 'Scoring'
        },
        plotBands: [
            {
                thickness: 25,//aqui se le da el tamaño a la franja
//                    thickness: 15,
                from: 0,
                to: 300,
//                    color: '#DF5353' // red
                color: '#DD4B39' // red
            },
            {
                thickness: 25,
//                    thickness: 15,
                from: 300,
                to: 700,
                color: '#F39C12' // yellow
            },
            {
                thickness: 25,
//                    thickness: 15,
                from: 700,
                to: 1000,
//                    color: '#55BF3B' // green
                color: '#00A65A' // green
            }
        ]
    },
    //metodo que da la opcion para exportar
    exporting: {
        enabled: false/*false: desabilita la opcion para exportar*/
    },
    series: [{
            name: 'Scoring',
            data: [0],
            tooltip: {
                valueSuffix: ''
            }
        }
    ]
}, function (chart) {
    chart.series[0].points[0].update(750);
    if (!chart.renderer.forExport) {

    }
});





