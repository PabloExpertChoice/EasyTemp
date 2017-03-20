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
        minorTickWidth: 1,//grosor de las lineas biceladas,
        minorTickLength: 5, //largo de las lineas biceladas
        minorTickPosition: 'inside',
        minorTickColor: '#666',
        tickPixelInterval: 80, //aqui se la la cantidad de lineas biceladas
        tickWidth: 2, //grosor de las lineas principales
        tickPosition: 'inside',
        tickLength: 10, //largo de las lineas principales
        tickColor: '#666',
        labels: {
            step: 1,
            rotation: 'auto'
        },
        title: {
            text: 'Scoring'
        },
        plotBands: [
            {
                thickness: 15,//aqui se le da el tamaño a la franja
//                    thickness: 15,
                from: 0,
                to: 300,
//                    color: '#DF5353' // red
                color: '#f3565d' // red
            },
            {
                thickness: 15,
//                    thickness: 15,
                from: 300,
                to: 700,
                color: '#f8cb00' // yellow
            },
            {
                thickness: 15,
//                    thickness: 15,
                from: 700,
                to: 1000,
//                    color: '#55BF3B' // green
                color: '#1bbc9b' // green
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





