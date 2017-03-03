(function ($, document, undefined) {

    $.firstName = function (fullName) {
        if (fullName) {
            var splitName = fullName.split(" ");
            var firstname = ""; // <- forgot to initialize to an empty string
            if (splitName.length == 1) return splitName[0];
            for (var i = 0; i < splitName.length - 1; i++) {
                firstname += splitName[i] + " "
            }
            return firstname;
        }
        return '';
    };

    $.lastName = function (fullName) {
        if (fullName) {
            var splitName = fullName.split(" ");
            if (splitName.length == 1) return ''; // only  first name
            var lastname = splitName[splitName.length - 1]; //The last one
            return lastname;
        }
        return '';
    };

    $.redirect = function (url, messageType, message) {
        var ai = { Url: url, MessageType: messageType, Message: message };
        $.ajax({
            url: '/Redirect',
            type: 'POST',
            data: JSON.stringify(ai),
            contentType: 'application/json; charset=utf-8',
            success: function (data) { },
            error: function () { }
        });
    };
    $.htmlDecode = function(value) {
        //create a in-memory div, set it's inner text(which jQuery automatically encodes)
        //then grab the encoded contents back out.  The div never exists on the page.
        return $('<div/>').text(value).html();
    };

    $.htmlEncode = function(value) {
        return $('<div/>').html(value).text();
    };
    $.alert = function (message, title, type) {
        if (title == null || title == '') title = 'Info';
        /*
        var cssclass = "";
        if (type == 'Error')
            cssclass = 'class="fg-color-red" ';
        var html = '<div ' + cssclass + '>' + message + '</div>';
        $.Dialog({
            'title': title,
            'content': html,
            'overlay': true,
            'closeButton': true,
            'draggable': true,
            'buttonsAlign': 'right',
            'buttons': {
                'Ok': {
                    'action': function () {

                    }
                }
            }
        });
        */
        if (title == 'Esclaimation') {
            // Display a warning toast, with no title
            toastr.warning(message);
        }
        else if (title == 'Success') {
            // Display a success toast, with a title
            toastr.success(message);
        }
        else if (title == 'Error') {
            // Display an error toast, with a title
            toastr.error(message);
        }
        else {
            // Display an info toast with no title
            toastr.info(message);
        }
        //        // Clears the current list of toasts
        //        toastr.clear()
    };


})(jQuery, document);

function displayMessage(message, messageType) {
    $("#messagewrapper").html('<div class="messagebox ' + messageType.toLowerCase() + '"></div>');
    $("#messagewrapper .messagebox").text(message);
    displayMessages();
}

function displayMessages() {
    if ($("#messagewrapper").children().length > 0) {
        $("#messagewrapper").show();
        $(document).click(function () {
            clearMessages();
        });
    }
    else {
        $("#messagewrapper").hide();
    }
}

function clearMessages() {
    $("#messagewrapper").fadeOut(500, function () {
        $("#messagewrapper").empty();
    });
}

function handleAjaxMessages() {
    $(document).ajaxSuccess(function (event, request) {
        checkAndHandleMessageFromHeader(request);
    }).ajaxError(function (event, request) {
        displayMessage(request.responseText, "error");
    });
}

function checkAndHandleMessageFromHeader(request) {
    var msg = request.getResponseHeader('X-Message');
    if (msg) {
        displayMessage(msg, request.getResponseHeader('X-Message-Type'));
    }
}

function PrintTerminology(sub, small, p) {
    var str = GetTerminology(sub, small, p);
    document.write(str);
}

function GetTerminology(sub, small, p) {
    var str = "Department";
    if ($.cookie('Terminology') && $.cookie('Terminology') != '') str = $.cookie('Terminology');
    if (sub) str = "Sub " + str;
    if (small) str = str.toLowerCase();
    if (p)
    {
        if (str.toLowerCase().indexOf('process') >= 0) {
            str = str + 'es';
        }
        else { str = str + 's'; }
    }
    return str;
}


function PrintCorporateLogo(orgid) {
    document.write('<img src="/images/'+ orgid + '_corporate_logo.png" />');
}

