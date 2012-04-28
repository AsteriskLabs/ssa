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
        if ($('input#'+selector+i+'-check').attr('checked')) {
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
        if ($('input#'+selector+i+'-check').attr('checked')) {
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
        if ($('input#'+selector+i+'-check').attr('checked')) {
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
};
