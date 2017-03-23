Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Distribucion % Clientes por Calidad de Perfil'
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
            name: 'Solicitudes Aprovadas',
            data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

        }]
});

Highcharts.chart('container3', {
    chart: {
        type: 'spline'
    },
    title: {
        text: 'Grafico ROC'
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
    title: {
        text: 'Grafico KS'
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