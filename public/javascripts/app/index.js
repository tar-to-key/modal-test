$(function() {
    $('#jquery-ui-dialog').dialog({
        autoOpen: false,
        modal: true,
        width: 700,
    });

    $('#jquery-ui-dialog-opener').click(function(){
      $('#jquery-ui-dialog').dialog('open');
    });
});
