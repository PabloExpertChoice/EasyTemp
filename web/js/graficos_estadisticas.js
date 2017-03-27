Highcharts.chart('container1', {
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
            return '  <b>' + this.series.name + ' Días de mora</b>: ' + this.y;
        }
    },
    legend: {
        title: {
            style: '{"fontWeight":"bold"}',
            text: ''
        },
        backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || 'white',
        borderColor: '#CCC',
        borderWidth: 1
    },
    series: [{
            name: '2012',
            data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
        }, {
            name: '2013',
            data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
        }, {
            name: '2014',
            data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
        }]
});

Highcharts.chart('container2', {
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
            return '  <b>' + this.series.name + ' Días de mora</b>: ' + this.y;
        }
    },
    legend: {
        title: {
            style: '{"fontWeight":"bold"}',
            text: ''
        },
        backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || 'white',
        borderColor: '#CCC',
        borderWidth: 1
    },
    series: [{
            name: 'Rechazados',
            data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
        }, {
            name: 'Aprobados',
            data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
        }]
});

Highcharts.chart('container3', {
    chart: {
        type: 'column'
    },
    title: {
        text: null
    },
    xAxis: {
        categories: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic']
    },
    yAxis: {
        min: 0,
        title: {
            text: null
        },
        stackLabels: {
            enabled: true,
            style: {
                fontWeight: 'bold',
                fontColor: '#222'
            }
        }
    },
    legend: {
        align: 'right',
        x: -70,
        verticalAlign: 'top',
        y: 20,
        floating: true,
        backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
        borderColor: '#CCC',
        borderWidth: 1,
        shadow: false
    },
    tooltip: {
        formatter: function () {
            return '<b>' + this.x + '</b><br/>' +
                    this.series.name + ': ' + this.y;
        }
    },
    plotOptions: {
        column: {
            stacking: 'normal',
            pointWidth: 100,
            dataLabels: {
                enabled: true,
                color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
            }
        }
    },
    credits: {
        enabled: false
    }, series: [{
            name: 'Santiago centro',
            data: [5, 3, 4, 7, 2,3,5,7,2,4,7,2]
        }, {
            name: 'Oriente',
            data: [2, 2, 3, 2, 1, 4, 8, 5, 6, 7, 3, 4]
        }, {
            name: 'Poniente',
            data: [3, 4, 4, 2, 5, 7, 9, 3, 5, 5, 3, 4]
        }]
});

Highcharts.chart('container4', {
    chart: {
        type: 'column'
    },
    title: {
        text: null
    },
    xAxis: {
        categories: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic']
    },
    yAxis: {
        min: 0,
        title: {
            text: null
        },
        stackLabels: {
            enabled: true,
            style: {
                fontWeight: 'bold',
                fontColor: '#222'
            }
        }
    },
    legend: {
        align: 'right',
        x: -70,
        verticalAlign: 'top',
        y: 20,
        floating: true,
        backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
        borderColor: '#CCC',
        borderWidth: 1,
        shadow: false
    },
    tooltip: {
        formatter: function () {
            return '<b>' + this.x + '</b><br/>' +
                    this.series.name + ': ' + this.y;
        }
    },
    plotOptions: {
        column: {
            stacking: 'normal',
            pointWidth: 100,
            dataLabels: {
                enabled: true,
                color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
            }
        }
    },
    credits: {
        enabled: false
    }, series: [{
            name: 'Alvarez',
            data: [5, 3, 4, 7, 2]
        }, {
            name: 'Zapata',
            data: [2, 2, 3, 2, 1]
        }, {
            name: 'Perez',
            data: [3, 4, 4, 2, 5]
        }]
});

Highcharts.chart('container5', {
    chart: {
        type: 'column'
    },
    title: {
        text: ''
    },
    xAxis: {
        categories: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic']
    },
    yAxis: {
        min: 0,
        title: {
            text: null
        },
        stackLabels: {
            enabled: true,
            style: {
                fontWeight: 'bold',
                fontColor: '#222'
            }
        }
    },
    legend: {
        align: 'right',
        x: -70,
        verticalAlign: 'top',
        y: 20,
        floating: true,
        backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
        borderColor: '#CCC',
        borderWidth: 1,
        shadow: false
    },
    tooltip: {
        formatter: function () {
            return '<b>' + this.x + '</b><br/>' +
                    this.series.name + ': ' + this.y;
        }
    },
    plotOptions: {
        column: {
            stacking: 'normal',
            pointWidth: 100,
            dataLabels: {
                enabled: true,
                color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
            }
        }
    },
    credits: {
        enabled: false
    }, series: [{
            name: '1-200',
            data: [5, 3, 4, 7, 2]
        }, {
            name: '201-400',
            data: [2, 2, 3, 2, 1]
        }, {
            name: '401-600',
            data: [3, 4, 4, 2, 5]
        }, {
            name: '601-800',
            data: [5, 7, 4, 3, 5]
        }, {
            name: '801-999',
            data: [5, 6, 3, 4, 2]
        }]
});

Highcharts.chart('container6', {
    chart: {
        type: 'column'
    },
    title: {
        text: null
    },
    xAxis: {
        categories: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic']
    },
    yAxis: {
        min: 0,
        title: {
            text: null
        },
        stackLabels: {
            enabled: true,
            style: {
                fontWeight: 'bold',
                fontColor: '#222'
            }
        }
    },
    legend: {
        align: 'right',
        x: -70,
        verticalAlign: 'top',
        y: 20,
        floating: true,
        backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
        borderColor: '#CCC',
        borderWidth: 1,
        shadow: false
    },
    tooltip: {
        formatter: function () {
            return '<b>' + this.x + '</b><br/>' +
                    this.series.name + ': ' + this.y;
        }
    },
    plotOptions: {
        column: {
            stacking: 'normal',
            pointWidth: 100,
            dataLabels: {
                enabled: true,
                color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
            }
        }
    },
    credits: {
        enabled: false
    }, series: [{
            name: 'Santander',
            data: [5, 3, 4, 7, 2]
        }, {
            name: 'Scotiabank',
            data: [2, 2, 3, 2, 1]
        }, {
            name: 'Banco de Chile',
            data: [3, 4, 4, 2, 5]
        }]
});