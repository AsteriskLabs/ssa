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
