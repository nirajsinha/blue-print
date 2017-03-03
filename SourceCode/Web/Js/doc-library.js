var colModel = [
                { name: 'DocumentID', index: 'DocumentID', width: 70, align: 'center', formatter: 'int', sorttype: 'int', hidden: true },
                { name: 'DocumentName', index: 'DocumentName', width: 250, align: 'left', 
                
                formatter: 'dynamicLink',
                    formatoptions: {
                        onClick: function (rowid, iRow, iCol, cellText, e) {
                            DownloadDocument(rowid, e);
                        }
                    },
                    
                    cellattr: function (rowId, cellValue, rawObject, cm, rdata) {
                        return ' class="ext_' + rawObject.FileType.substring(1).toLowerCase() + '"';

                    }
                },
                { name: 'DocumentType', index: 'DocumentType' },
                { name: 'DocumentNumber', index: 'DocumentNumber' },
                { name: 'VersionString', index: 'VersionString',  formatter: 'double' },
                { name: 'CheckInStatusString', index: 'CheckInStatusString',  align: 'center', formatter: 'bool' },
                { name: 'WorkflowStatusName', index: 'WorkflowStatusName',  align: 'center' },
                { name: 'FileType', index: 'FileType', hidden: true },
                { name: 'PhysicalPath', index: 'PhysicalPath', hidden: true },
                { name: 'CreatedBy', index: 'CreatedBy'},
                { name: 'CreatedOn', index: 'CreatedOn', align: 'right', formatter: 'date', formatoptions: { newformat: 'd/m/Y' }, datefmt: 'd/m/Y' }

                ];


function BuildDocList(dept, subdept) {

    var jsonParams = "{'dept':'" + dept + "','subdept':'" + subdept + "'}";
    $.ajax({
        type: "POST",
        url: "/DocumentLibrary/BuildDocumentList",
        data: jsonParams,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            if (data != null) {
                //var jsonString = JSON.stringify(data);
                InitializeDocumentGrid(data, colModel);
            }

        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $.alert("responseText=" + XMLHttpRequest.responseText + "\n textStatus=" + textStatus + "\n errorThrown=" + errorThrown, "Error", "Error");
        }
    });


}

var timeoutid;
function EnablePublish() {
	$.ajax({
		url: "/DocumentLibrary/CheckPublishPermission",
		type: "GET",
		contentType: "application/json; charset=utf-8",
		success: function (data) {
		    var json;
			if (data.hasOwnProperty("d")) json = data.d; else json = data;
			if(json)$('#publish').closest('li').css('display','inline');
			window.clearTimeout(timeoutid);
		},
		error: function (XMLHttpRequest, textStatus, errorThrown) {
			alert("responseText=" + XMLHttpRequest.responseText + "\n textStatus=" + textStatus + "\n errorThrown=" + errorThrown);
			window.clearTimeout(timeoutid);
		}
	});
}
$(document).ready(function () {
    
	timeoutid = window.setTimeout("EnablePublish()", 1000);
    //$('.page-sidebar').fileTree({ root: '', script: '@Url.Content("~/DocumentLibrary/BuildDocumentTree")' }, function (file) {
    //    alert(file);
    //});

    $('#history').click(function () {
        $("#doc-history-table").empty();
        $("#doc_name").empty();
        var ids = validateSingleSelect();
        if (ids) {
            var docid = grid.jqGrid('getCell', ids[0], 'DocumentID');
            $.ajax({
                type: "POST",
                url: "/DocumentLibrary/GetDocumentHistory/" + docid,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (json) {
                    if (json && json.length > 0) {
                        $("#doc_name").html(json[0].DocumentName + json[0].FileType);
                        $("#historyTemplate").tmpl(json).appendTo("#doc-history-table");
                        $.colorbox({
                            'inline': true,
                            'title': 'Version History',
                            'href': '#div-history',
                            'scrolling': true,
                            'overlayClose': false,
                            'innerWidth': '700',
                            'innerHeight': '300',
                            'escKey': true
                        });
                    }
                },
                error: function (xhr) {
                    try {
                        var json = $.parseJSON(xhr.responseText);
                        $.alert(json.errorMessage, "Error", "Error");

                    } catch (e) {
                        $.alert("Unhandled exception! please try again.", "Error", "Error");
                    }

                }
            });

        }

    });

    function validateSingleSelect() {
        var ids = [];
        $('#doc-list input[type=checkbox]').each(function (i) {
            var ch = $(this).attr('checked');
            if (ch) {
                var rowid = $(this).closest('tr').attr('id');
                ids.push(rowid);
            }
        });

        //var ids = jQuery("#doc-list").getGridParam('selarrrow');
        if (ids && ids.length < 1) {
            $.alert("Please select any document.","Error","Error");
            return null;
        }
        if (ids && ids.length > 1) {
            $.alert("Multiple files selected. Please select only one document.", "Error", "Error");
            return null;
        }
        return ids;
    }
    //'use strict';
    //$('#doc-preview').click(function () {
    //    var ids = validateSingleSelect();
    //    if (ids) {
    //        DisplayDocument(ids[0]);
    //    }

    //});
    $('#undocheckout').click(function () {
        var ids = [];
        $('#doc-list input[type=checkbox]').each(function (i) {
            var ch = $(this).attr('checked');
            if (ch) {
                var rowid = $(this).closest('tr').attr('id');
                ids.push(rowid);
            }
        });
        var grid = $('#doc-list');
        if (ids && ids.length < 1) {
            $.alert("Please select any document to checkin/checkout.", "Error", "Error");
            return null;
        }
        for (var i = 0; i < ids.length; ++i) {
            var docid = grid.jqGrid('getCell', ids[i], 'DocumentID');
            var val = $(this).attr("val");
            var jsonParams = "{'docid':" + docid + ",'status':" + val + "}";
            $.ajax({
                type: "POST",
                url: "/DocumentLibrary/CheckoutDocument",
                data: jsonParams,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    $.alert("responseText=" + XMLHttpRequest.responseText + "\n textStatus=" + textStatus + "\n errorThrown=" + errorThrown, "Error", "Error");
                }
            });
        }

        $(".selected").find('a:first').click();

    });
    $('#checkout').click(function () {
        var ids = validateSingleSelect();
        if (ids) {
            var docid = grid.jqGrid('getCell', ids[0], 'DocumentID');
            var val = $(this).attr("val");
            var jsonParams = "{'docid':" + docid + ",'status':" + val + "}";
            $.ajax({
                type: "POST",
                url: "/DocumentLibrary/CheckoutDocument",
                data: jsonParams,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                error: function (xhr) {
                    try {
                        var json = $.parseJSON(xhr.responseText);
                        $.alert(json.errorMessage, "Error", "Error");

                    } catch (e) {
                        $.alert("Unhandled exception! please try again.", "Error", "Error");
                    }

                },
                success: function (data) {
                    location.href = "/DocumentLibrary/Revise/" + docid;
                }
            });
        }

    });
    $('#workflow').click(function () {
        ExecuteWorkflow(0);
    });
    $('#publish').click(function () {
        ExecuteWorkflow(1);
    });
    function ExecuteWorkflow(publish) {
        var ids = validateSingleSelect();
        if (ids) {
            var serviceUrl = "/DocumentLibrary/ExecuteDocumentWorkflow";
            if (publish == '1') {
                serviceUrl = "/DocumentLibrary/PublishDocument";
            }

            var docid = grid.jqGrid('getCell', ids[0], 'DocumentID');
            var jsonParams = "{'DocID':" + docid + "}";
            $.ajax({
                type: "POST",
                url: serviceUrl,
                data: jsonParams,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                error: function (xhr) {
                    try {
                        var json = $.parseJSON(xhr.responseText);
                        $.alert(json.errorMessage, "Error", "Error");

                    } catch (e) {
                        $.alert("Unhandled exception! please try again.", "Error", "Error");
                    }

                },
                success: function (data) {
                    window.location.reload(true);
                }
            });
        }


    }
    $('#raise-dcr').click(function () {
        location.href = '/DocumentLibrary/DCR';
        //var ids = validateSingleSelect();
        //if (ids) {
		//	var docid = grid.jqGrid('getCell', ids[0], 'DocumentID');
		//	location.href = '/DocumentLibrary/ChangeRequest/' + docid;
		//}
	});

    $('#delete').click(function () {
        var ids = validateSingleSelect();
        if (ids) {
            $.Dialog({
                'title': 'Warning',
                'content': '<p>This action will permanently delete the selected document. <br />Are you sure to continue?</p>',
                'overlay': true,
                'closeButton': true,
                'draggable': true,
                'buttonsAlign': 'right',
                'buttons': {
                    'Yes': {
                        'action': function () {
                            var docid = grid.jqGrid('getCell', ids[0], 'DocumentID');
                            var jsonParams = "{'docid':" + docid + "}";
                            $.ajax({
                                type: "POST",
                                url: "/DocumentLibrary/DeleteDocument",
                                data: jsonParams,
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                error: function (xhr) {
                                    try {
                                        var json = $.parseJSON(xhr.responseText);
                                        $.alert(json.errorMessage, "Error", "Error");

                                    } catch (e) {
                                        $.alert("Unhandled exception! please try again.", "Error", "Error");
                                    }

                                },
                                success: function (data) {
                                    window.location.reload(true);
                                }
                            });
                        }
                    },
                    'No': {
                    }
                }
            });

        }

    });

    $('.page-sidebar a').click(function () {
        $('.page-sidebar li').each(function (i) {
            $(this).removeClass("selected");
        });
        $(this).closest('li').addClass("selected");
        var dept = $(this).attr('dept');
        var subdept = $(this).attr('subdept');
        BuildDocList(dept, subdept);
    });

    var mydata = [];
    InitializeDocumentGrid(mydata, colModel);

});

function InitializeDocumentGrid(mydata, colModel) {
    $("#doc-list").jqGrid('GridUnload');
    grid = $("#doc-list");
    /*
    { name: 'ship_via', index: 'ship_via', width: 90, align: 'center', formatter: 'select',
    edittype: 'select', editoptions: { value: 'FE:FedEx;TN:TNT;IN:Intim', defaultValue: 'Intime'}
    },
    { name: 'note', index: 'note', width: 70, sortable: false, formatter: 'checkbox' }
    */
    grid.jqGrid({
        datatype: 'local',
        data: mydata,
        colNames: ['DocumentID', 'Document Name', 'Document Type','Document Number', 'Version', 'Status','Workflow Status', 'FileType', 'PhysicalPath', 'Modified By', 'Modified On'],
        colModel: colModel,
        rowNum: 10,
        rowList: [5, 10, 20],
        pager: '#pager',
        gridview: true,
        rownumbers: true,
        loadonce: false,
        loadtext: "Loading...",
        sortname: 'DocumentName',
        viewrecords: true,
        sortorder: 'desc',
        caption: 'Documents List',
        emptyrecords: "No documents found",
        multiselect: true
    });
    grid.jqGrid('gridResize', { minWidth: 450, minHeight: 250 });
    //        grid.jqGrid('clearGridData');
    //        if (mydata.length > 0) {
    //            for (var i = 0; i < mydata.length; i++) {
    //                grid.jqGrid('addRowData', i + 1, mydata[i]);
    //            }
    //        }
    grid.jqGrid('setGridWidth', $(".fill.page").width());

}

function DownloadDocument(rowid, e) {
    var grid = $('#doc-list');
    var docname = grid.jqGrid('getCell', rowid, 'PhysicalPath') +
                      grid.jqGrid('getCell', rowid, 'DocumentName') +
                      grid.jqGrid('getCell', rowid, 'FileType');
    var docPath = docname.replace(/\\/gi, "/");
    var filetype = grid.jqGrid('getCell', rowid, 'FileType');
    DownloadDoc("/DocumentLibrary/Download/?FileName=" + docPath + "&FileType=" + filetype);
    

}

function DownloadDoc(path) {

    $('#downloadFrame').attr('src', path);
}
function DisplayDocument(rowid) {
    var grid = $('#doc-list');
    var docname = grid.jqGrid('getCell', rowid, 'PhysicalPath') +
                      grid.jqGrid('getCell', rowid, 'DocumentName') +
                      grid.jqGrid('getCell', rowid, 'FileType');

    var filetype = grid.jqGrid('getCell', rowid, 'FileType');
    var filename = grid.jqGrid('getCell', rowid, 'DocumentName') +
                      grid.jqGrid('getCell', rowid, 'FileType');
    var docno = grid.jqGrid('getCell', rowid, 'DocumentNumber');
    var docver = grid.jqGrid('getCell', rowid, 'VersionString');
    // Display doc on selection
    LoadPreviewWindow(docname, filetype, docno, docver, filename)
}

function LoadPreviewWindow(docname, filetype, docno, docver, filename) {
    var docPath = docname.replace(/\\/gi, "/");
    docPath = encodeURIComponent(docPath);
    docno = encodeURIComponent(docno);
    filename = encodeURIComponent(filename);
    window.open('/DocumentLibrary/Viewer/?SourceFile=' + docPath + '&FileType=' + filetype + '&DocNumber=' + docno + '&DocVer=' + docver + '&FileName=' + filename, 'Viewer', 'height=800,width=650,status=no,toolbar=no,resizable=yes,scrollbars=no');
}
