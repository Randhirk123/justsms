$(document).ready(function() {
    var dataTable = $('#filtertable').DataTable({
        "pageLength":5,
        'aoColumnDefs':[{
            'bSortable':false,
            'aTargets':['nosort'],
        }],
        "aoColumns":[
            null,
            null
        ],
        "order":false,
        "bLengthChange":false
    });
    $("#filterbox").keyup(function(){
        dataTable.search(this.value).draw();
    });
} );
