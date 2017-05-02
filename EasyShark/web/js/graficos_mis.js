Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    credits: false, //esta propiedad desactiva el link de Highcharts
    title: {
        text: 'Distribuci\u00f3n % Clientes por Calidad de Perfil'
    },
    xAxis: {
        categories: ['Modelo', 'Cartera', 'Fecha Actual']
    },
    yAxis: {
        min: 0,
        title: {
            text: ''
        }
    },
    tooltip: {
        pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>',
        shared: true
    },
    plotOptions: {
        column: {
            stacking: 'percent',
            dataLabels: {
                enabled: true,
                color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white',
                format: "{y}%",
                zIndex: 6
            }
        }
    },
    series: [{
            name: 'Muy bueno',
            data: [5, 3, 4]
        }, {
            name: 'Bueno',
            data: [2, 2, 3]
        }, {
            name: 'Regular',
            data: [2, 2, 3]
        }, {
            name: 'Malo',
            data: [2, 2, 3]
        }, {
            name: 'Muy malo',
            data: [3, 4, 4]
        }]
});
Highcharts.chart('container2', {
    chart: {
        type: 'column'
    },
    credits: false,
    title: {
        text: 'P E Modelo'
    },
    subtitle: {
        text: ''
    },
    xAxis: {
        categories: [
            'Jan',
            'Feb',
            'Mar',
            'Apr',
            'May',
            'Jun',
            'Jul',
            'Aug',
            'Sep',
            'Oct',
            'Nov',
            'Dec'
        ],
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Rainfall (mm)'
        }
    },
    tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
        footerFormat: '</table>',
        shared: true,
        useHTML: true
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
            name: 'Solicitudes Ingresadas',
            data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]

        }, {
            name: 'Solicitudes Aprobadas',
            data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

        }]
});
Highcharts.chart('container3', {
    chart: {
        type: 'spline'
    },
    credits: false,
    title: {
        text: 'Gr\u00e1fico ROC'
    },
    subtitle: {
        text: ''
    },
    xAxis: {
        min: 0,
        max: 100,
        title: {
            text: '1-Especificidad'
        },
        labels: {
            formatter: function () {
                return this.value + '%';
            }
        },
    },
    yAxis: {
        min: 0,
        max: 100,
        title: {
            text: 'Sensibilidad'
        },
        labels: {
            formatter: function () {
                return this.value + '%';
            }
        }
    },
    tooltip: {
        headerFormat: '<b>{series.name}</b><br/>',
        pointFormat: 'Porcentaje: {point.y}°%'
    },
    plotOptions: {
        spline: {
            marker: {
                radius: 4,
                lineColor: '#666666',
                lineWidth: 1
            }
        }
    },
    series: [{
            name: '2015',
            data: [[0, 10], [10, 20], [20, 30], [30, 40], [40, 50], [50, 60], [60, 70], [70, 80], [80, 90], [90, 95]]
        }]
});
Highcharts.chart('container4', {
    chart: {
        type: 'spline'
    },
    credits: false,
    title: {
        text: 'Gr\u00e1fico KS'
    },
    subtitle: {
        text: ''
    },
    xAxis: {
        title: {
            text: '1-Especificidad'
        },
    },
    yAxis: {
        min: 0, max: 100,
        title: {
            text: 'Sensibilidad'
        },
    },
    tooltip: {
        headerFormat: '<b>{series.name}</b><br>',
        pointFormat: '{point.x:%e. %b}: {point.y:.2f} m'
    },
    plotOptions: {
        spline: {
            marker: {
                enabled: true
            }
        }
    },
    series: [{
            name: 'Sensibilidad',
            data: [7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
        }, {
            name: 'Especialidad',
            data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
        }]
});
Highcharts.chart('container5', {
    chart: {
        type: 'areaspline'
    },
    credits: false,
    title: {
        text: 'Gr\u00e1fico AUC'
    },
    xAxis: {
        min: 0,
        max: 100,
        title: {
            text: '1-Especificidad'
        },
        labels: {
            formatter: function () {
                return this.value + '%';
            }
        }
    },
    yAxis: {
        min: 0,
        max: 100,
        title: {
            text: 'Sensibilidad'
        },
        labels: {
            formatter: function () {
                return this.value + '%';
            }
        }
    },
    tooltip: {
        headerFormat: '<b>{series.name}</b><br/>',
        pointFormat: 'Porcentaje: {point.y}%'
    },
    plotOptions: {
        areaspline: {
            fillOpacity: 0.5
        }
    },
    series: [{
            name: '2015',
            data: [10, 30, 40, 30, 30, 50, 40, 80, 60, 50, 80, 90, 70, 30]
        }]
});
Highcharts.chart('container6', {
    chart: {
        credits: false,
        type: 'spline'
    },
    credits: false,
    title: {
        text: ''
    },
    subtitle: {
        text: ''
    },
    xAxis: {
        type: 'datetime',
        dateTimeLabelFormats: {// don't display the dummy year
            month: '%e. %b',
            year: '%b'
        },
        title: {
            text: 'Date'
        }
    },
    yAxis: {
        title: {
            text: 'Snow depth (m)'
        },
        min: 0
    },
    tooltip: {
        headerFormat: '<b>{series.name}</b><br>',
        pointFormat: '{point.x:%e. %b}: {point.y:.2f} m'
    },
    plotOptions: {
        spline: {
            marker: {
                enabled: true
            }
        }
    },
    series: [{
            name: '2009',
            // Define the data points. All series have a dummy year
            // of 1970/71 in order to be compared on the same x axis. Note
            // that in JavaScript, months start at 0 for January, 1 for February etc.
            data: [
                [Date.UTC(1970, 9, 21), 0],
                [Date.UTC(1970, 10, 4), 0.28],
                [Date.UTC(1970, 10, 9), 0.25],
                [Date.UTC(1970, 10, 27), 0.2],
                [Date.UTC(1970, 11, 2), 0.28],
                [Date.UTC(1970, 11, 26), 0.28],
                [Date.UTC(1970, 11, 29), 0.47],
                [Date.UTC(1971, 0, 11), 0.79],
                [Date.UTC(1971, 0, 26), 0.72],
                [Date.UTC(1971, 1, 3), 1.02],
                [Date.UTC(1971, 1, 11), 1.12],
                [Date.UTC(1971, 1, 25), 1.2],
                [Date.UTC(1971, 2, 11), 1.18],
                [Date.UTC(1971, 3, 11), 1.19],
                [Date.UTC(1971, 4, 1), 1.85],
                [Date.UTC(1971, 4, 5), 2.22],
                [Date.UTC(1971, 4, 19), 1.15],
                [Date.UTC(1971, 5, 3), 0]
            ]
        }, {
            name: '2011',
            data: [
                [Date.UTC(1970, 9, 29), 0],
                [Date.UTC(1970, 10, 9), 0.4],
                [Date.UTC(1970, 11, 1), 0.25],
                [Date.UTC(1971, 0, 1), 1.66],
                [Date.UTC(1971, 0, 10), 1.8],
                [Date.UTC(1971, 1, 19), 1.76],
                [Date.UTC(1971, 2, 25), 2.62],
                [Date.UTC(1971, 3, 19), 2.41],
                [Date.UTC(1971, 3, 30), 2.05],
                [Date.UTC(1971, 4, 14), 1.7],
                [Date.UTC(1971, 4, 24), 1.1],
                [Date.UTC(1971, 5, 10), 0]
            ]
        }, {
            name: '2014',
            data: [
                [Date.UTC(1970, 9, 29), 0],
                [Date.UTC(1970, 10, 9), 0.4],
                [Date.UTC(1970, 11, 1), 0.25],
                [Date.UTC(1971, 0, 1), 1.66],
                [Date.UTC(1971, 0, 10), 1.8],
                [Date.UTC(1971, 1, 19), 1.76],
                [Date.UTC(1971, 2, 25), 2.62],
                [Date.UTC(1971, 3, 19), 2.41],
                [Date.UTC(1971, 3, 30), 2.05],
                [Date.UTC(1971, 4, 14), 1.7],
                [Date.UTC(1971, 4, 24), 1.1],
                [Date.UTC(1971, 5, 10), 0]
            ]
        }, {
            name: '2016',
            data: [
                [Date.UTC(1970, 10, 25), 0],
                [Date.UTC(1970, 11, 6), 0.25],
                [Date.UTC(1970, 11, 20), 1.41],
                [Date.UTC(1970, 11, 25), 1.64],
                [Date.UTC(1971, 0, 4), 1.6],
                [Date.UTC(1971, 0, 17), 2.55],
                [Date.UTC(1971, 0, 24), 2.62],
                [Date.UTC(1971, 1, 4), 2.5],
                [Date.UTC(1971, 1, 14), 2.42],
                [Date.UTC(1971, 2, 6), 2.74],
                [Date.UTC(1971, 2, 14), 2.62],
                [Date.UTC(1971, 2, 24), 2.6],
                [Date.UTC(1971, 3, 2), 2.81],
                [Date.UTC(1971, 3, 12), 2.63],
                [Date.UTC(1971, 3, 28), 2.77],
                [Date.UTC(1971, 4, 5), 2.68],
                [Date.UTC(1971, 4, 10), 2.56],
                [Date.UTC(1971, 4, 15), 2.39],
                [Date.UTC(1971, 4, 20), 2.3],
                [Date.UTC(1971, 5, 5), 2],
                [Date.UTC(1971, 5, 10), 1.85],
                [Date.UTC(1971, 5, 15), 1.49],
                [Date.UTC(1971, 5, 23), 1.08]
            ]
        }]
});
Highcharts.chart('container7', {
    title: {
        text: '',
        x: -20 //center
    },
    credits: false,
    subtitle: {
        text: '',
        x: -20
    },
    xAxis: {
        title: {
            text: 'Meses'
        },
        categories: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'dic']
    },
    yAxis: {
        title: {
            text: 'Porcentaje Mora'
        },
    },
    tooltip: {
        valueSuffix: '%',
        formatter: function () {
            return '  <b>' + this.series.name + ' D\u00edas de mora</b>: ' + this.y;
        }
    },
    legend: {
        title: {
            style: '{"fontWeight":"bold"}',
            text: 'D\u00edas de Moras'
        },
        backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || 'white',
        borderColor: '#CCC',
        borderWidth: 1
    },
    series: [{
            name: 'Mas de 30',
            data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
        }, {
            name: 'Mas de 60',
            data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
        }, {
            name: 'Mas de 90',
            data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
        }]
});
Highcharts.chart('container8', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Forzaje de Pol\u00edticas'
    },
    yAxis: {
        title: {
            text: 'Total Carteras'
        },
    },
    xAxis: {
        categories: [
            'Ene',
            'Feb',
            'Mar',
            'Abr',
            'May',
            'Jun',
            'Jul',
            'Ago',
            'Sep',
            'Oct',
            'Nov',
            'dic'
        ]
    },
    credits: {
        enabled: false
    },
    series: [{
            name: 'Forzaje Total',
            data: [10,20,30]
        }, {
            name: 'Fozaje Positivo',
            data: [30,40,10]
        }, {
            name: 'Forzaje Negativo',
            data: [40,20,70]
        }]
});