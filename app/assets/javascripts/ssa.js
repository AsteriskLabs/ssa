var JTable = function() {};
JTable.Setup = function() {
    var table = $('.jtable');
    $('caption', table).addClass('ui-state-default');
    $('caption', table).css('font-size','20px');
    $('caption', table).css('padding','10px 0 10px');
    $('th', table).addClass('ui-state-default');
    $('th', table).css('padding','5px 0 5px 5px');
    $('td', table).addClass('ui-widget-content');
    $('td', table).css('padding','5px 0 5px 8px');
    /*$(table).delegate('tr', 'hover', function() {
        $('td', $(this)).toggleClass('ui-state-hover');
    });*/
    /*$(table).delegate('tr', 'click', function() {
        $('td', $(this)).toggleClass('ui-state-highlight');
    });*/
};

JTable.SetupNewRows = function(rows) {
    $(rows).find('td').addClass('ui-widget-content');
};

var InsertPrettiness = function() {
    /*This is to prettify up the tabs etc */
    //$('a[href="#tabs-1"]').parent().css('background','black');
    //$('#tabs').children('ul.ui-widget-header').css('background','blue');
    //$('input#sm1-check').parent().parent().css('border-bottom','solid thin blue');
};



var Crunch = function(selector,start,middle,end) {
    start = typeof start !== 'undefined' ? start : 1;
    middle = typeof middle !== 'undefined' ? middle: 1;
    end = typeof end !== 'undefined' ? end : 1;
    /* Calculate full sections */
    totalfull = 0;
    totalpartial = 0;
    localscore = 0;
    localcount = 0;
    for(var i = 1; i < start; i++) {
        if ($('input#'+selector+i+'-check').prop('checked')) {
            localscore++;
        }
        localcount++;
    }
    if (localscore == localcount) {
        totalfull++;
    } else if (localscore > 0) {
        totalpartial++;
    }
    localscore = 0;
    localcount = 0;
    for (var i = start; i < middle; i++) {
        if ($('input#'+selector+i+'-check').prop('checked')) {
            localscore++;
        }
        localcount++;
    }
    if (localscore == localcount) {
        totalfull++;
    } else if (localscore > 0) {
        totalpartial++;
    }
    localscore = 0;
    localcount = 0;
    for (var i = middle; i <= end; i++) {
        if ($('input#'+selector+i+'-check').prop('checked')) {
            localscore++;
        }
        localcount++;
    }
    if (localscore == localcount) {
        totalfull++;
    } else if (localscore > 0) {
        totalpartial++;
    }

    output = "";
    if (totalpartial > 0) {
        output = totalfull + "+";
    } else {
        output = totalfull;
    }

    $('#'+selector+'-rating').text(output);
    chartvals[selector+'c'] = output;
};

var MakeCheckboxesAwes = function() {
    $('input[id^="sm"]').change(function() {
        Crunch("sm",4,7,8);
    });
    $('input[id^="pc"]').change(function() {
        Crunch("pc",3,5,6);
    });
    $('input[id^="eg"]').change(function() {
        Crunch("eg",3,5,6);
    });
    $('input[id^="ta"]').change(function() {
        Crunch("ta",3,6,7);
    });
    $('input[id^="sr"]').change(function() {
        Crunch("sr",3,5,6);
    });
    $('input[id^="sa"]').change(function() {
        Crunch("sa",3,5,6);
    });
    $('input[id^="dr"]').change(function() {
        Crunch("dr",3,5,6);
    });
    $('input[id^="cr"]').change(function() {
        Crunch("cr",3,5,6);
    });
    $('input[id^="st"]').change(function() {
        Crunch("st",4,6,7);
    });
    $('input[id^="vm"]').change(function() {
        Crunch("vm",4,6,7);
    });
    $('input[id^="eh"]').change(function() {
        Crunch("eh",3,5,6);
    });
    $('input[id^="oe"]').change(function() {
        Crunch("oe",3,5,6);
    });
};

var ConvertValsToRaw = function(val) {
    switch(val.toString())
    {
        case "0":
            return 0;
            break;
        case "0+":
            return 1;
            break;
        case "1":
            return 2;
            break;
        case "1+":
            return 3;
            break;
        case "2":
            return 4;
            break;
        case "2+":
            return 5;
            break;
        case "3":
            return 6;
            break;
        default:
            return 0;
            break;
    };
};

var ConvertRawToVals = function(raw) {
    switch(raw)
    {
        case 0:
            return "0";
            break;
        case 1:
            return "0+";
            break;
        case 2:
            return "1";
            break;
        case 3:
            return "1+";
            break;
        case 4:
            return "2";
            break;
        case 5:
            return "2+";
            break;
        case 6:
            return "3";
            break;
        default:
            return "0";
            break;
    };
};

var GoChartGo = function(somechart,sometitles,somevals) {
    rawvals = {
        smc: ConvertValsToRaw(somevals['smc']),
        smt: ConvertValsToRaw(somevals['smt']),
        pcc: ConvertValsToRaw(somevals['pcc']),
        pct: ConvertValsToRaw(somevals['pct']),
        egc: ConvertValsToRaw(somevals['egc']),
        egt: ConvertValsToRaw(somevals['egt']),
        tac: ConvertValsToRaw(somevals['tac']),
        tat: ConvertValsToRaw(somevals['tat']),
        src: ConvertValsToRaw(somevals['src']),
        srt: ConvertValsToRaw(somevals['srt']),
        sac: ConvertValsToRaw(somevals['sac']),
        sat: ConvertValsToRaw(somevals['sat']),
        drc: ConvertValsToRaw(somevals['drc']),
        drt: ConvertValsToRaw(somevals['drt']),
        crc: ConvertValsToRaw(somevals['crc']),
        crt: ConvertValsToRaw(somevals['crt']),
        stc: ConvertValsToRaw(somevals['stc']),
        stt: ConvertValsToRaw(somevals['stt']),
        vmc: ConvertValsToRaw(somevals['vmc']),
        vmt: ConvertValsToRaw(somevals['vmt']),
        ehc: ConvertValsToRaw(somevals['ehc']),
        eht: ConvertValsToRaw(somevals['eht']),
        oec: ConvertValsToRaw(somevals['oec']),
        oet: ConvertValsToRaw(somevals['oet'])
    };

    /* Chart */
    somechart = new Highcharts.Chart({
        chart: {
            renderTo: 'graphycontainer',
            type: 'bar',
            spacingRight: 30
        },
        credits: {
            enabled: false
        },
        title: {
            text: null
        },
        xAxis: {
            categories: [sometitles['smtitle'],
                sometitles['pctitle'],
                sometitles['egtitle'],
                sometitles['tatitle'],
                sometitles['srtitle'],
                sometitles['satitle'],
                sometitles['drtitle'],
                sometitles['crtitle'],
                sometitles['sttitle'],
                sometitles['vmtitle'],
                sometitles['ehtitle'],
                sometitles['oetitle']
            ] 
        },
        yAxis: {
            labels: {
                enabled: false
            },
            gridLineColor: 'white',
            title: null
        },
        legend: {
            enabled: false
        },
        tooltip: {
            formatter: function() {
                var s = '<b>' + this.x + '</b>';
                s += '<br /><b>Target:</b> ' + ConvertRawToVals(this.points[1].y);
                s += '<br /><b>Current:</b> ' + ConvertRawToVals(this.points[0].y);
                return s;
            },
            shared: true
        },
        series: [{
            name: sometitles['current'],
            dataLabels: {
                enabled: true,
                formatter: function() {
                    return this.point.name;
                }
            },
            data: [{
                name: "Current: " + somevals['smc'],
                color: '#00577C',
                y: rawvals['smc']
            },{
                name: "Current: " + somevals['pcc'],
                color: '#00577C',
                y: rawvals['pcc']
            },{
                name: "Current: " + somevals['egc'],
                color: '#00577C',
                y: rawvals['egc']
            },{
                name: "Current: " + somevals['tac'],
                color: '#803400',
                y: rawvals['tac']
            },{
                name: "Current: " + somevals['src'],
                color: '#803400',
                y: rawvals['src']
            },{
                name: "Current: " + somevals['sac'],
                color: '#803400',
                y: rawvals['sac']
            },{
                name: "Current: " + somevals['drc'],
                color: '#007F38',
                y: rawvals['drc']
            },{
                name: "Current: " + somevals['crc'],
                color: '#007F38',
                y: rawvals['crc']
            },{
                name: "Current: " + somevals['stc'],
                color: '#007F38',
                y: rawvals['stc']
            },{
                name: "Current: " + somevals['vmc'],
                color: '#840000',
                y: rawvals['vmc']
            },{
                name: "Current: " + somevals['ehc'],
                color: '#840000',
                y: rawvals['ehc']
            },{
                name: "Current: " + somevals['oec'],
                color: '#840000',
                y: rawvals['oec']
            }]
        }, {
            name: sometitles['target'],
            dataLabels: {
                enabled: true,
                formatter: function() {
                    return this.point.name;
                }
            },
            data: [{
                name: "Target: " + somevals['smt'],
                color: '#00577C',
                y: rawvals['smt']
            },{
                name: "Target: " + somevals['pct'],
                color: '#00577C',
                y: rawvals['pct']
            },{
                name: "Target: " + somevals['egt'],
                color: '#00577C',
                y: rawvals['egt']
            },{
                name: "Target: " + somevals['tat'],
                color: '#803400',
                y: rawvals['tat']
            },{
                name: "Target: " + somevals['srt'],
                color: '#803400',
                y: rawvals['srt']
            },{
                name: "Target: " + somevals['sat'],
                color: '#803400',
                y: rawvals['sat']
            },{
                name: "Target: " + somevals['drt'],
                color: '#007F38',
                y: rawvals['drt']
            },{
                name: "Target: " + somevals['crt'],
                color: '#007F38',
                y: rawvals['crt']
            },{
                name: "Target: " + somevals['stt'],
                color: '#007F38',
                y: rawvals['stt']
            },{
                name: "Target: " + somevals['vmt'],
                color: '#840000',
                y: rawvals['vmt']
            },{
                name: "Target: " + somevals['eht'],
                color: '#840000',
                y: rawvals['eht']
            },{
                name: "Target: " + somevals['oet'],
                color: '#840000',
                y: rawvals['oet']
            }]
        }]
    }); 
}; 

var SelectTarget = function(businesstype) {
    targetoptions = {
        start: {
            smt: "3",
            pct: "3",
            egt: "3",
            tat: "3",
            srt: "3",
            sat: "3",
            drt: "3",
            crt: "3",
            stt: "3",
            vmt: "3",
            eht: "3",
            oet: "3"
        },
        independentsoftwarevendor: {
            smt: "3",
            pct: "2",
            egt: "3",
            tat: "2",
            srt: "3",
            sat: "1",
            drt: "2",
            crt: "3",
            stt: "2",
            vmt: "3",
            eht: "0",
            oet: "3"
        },
        onlineserviceprovider: {
            smt: "3",
            pct: "2",
            egt: "3",
            tat: "2",
            srt: "2",
            sat: "1",
            drt: "3",
            crt: "2",
            stt: "3",
            vmt: "2",
            eht: "3",
            oet: "2"
        },
        financialservicesorganisation: {
            smt: "3",
            pct: "3",
            egt: "3",
            tat: "3",
            srt: "3",
            sat: "3",
            drt: "2",
            crt: "3",
            stt: "2",
            vmt: "3",
            eht: "3",
            oet: "2"
        },
        governmentorganisation: {
            smt: "2",
            pct: "3",
            egt: "3",
            tat: "3",
            srt: "3",
            sat: "3",
            drt: "2",
            crt: "2",
            stt: "3",
            vmt: "3",
            eht: "3",
            oet: "3"
        }
    };

    chartvals['smt'] = targetoptions[businesstype]['smt'];
    chartvals['pct'] = targetoptions[businesstype]['pct'];
    chartvals['egt'] = targetoptions[businesstype]['egt'];
    chartvals['tat'] = targetoptions[businesstype]['tat'];
    chartvals['srt'] = targetoptions[businesstype]['srt'];
    chartvals['sat'] = targetoptions[businesstype]['sat'];
    chartvals['drt'] = targetoptions[businesstype]['drt'];
    chartvals['crt'] = targetoptions[businesstype]['crt'];
    chartvals['stt'] = targetoptions[businesstype]['stt'];
    chartvals['vmt'] = targetoptions[businesstype]['vmt'];
    chartvals['eht'] = targetoptions[businesstype]['eht'];
    chartvals['oet'] = targetoptions[businesstype]['oet'];

    GoChartGo(chart1,charttitles,chartvals);
};