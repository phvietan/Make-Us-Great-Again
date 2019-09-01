
function submitTaskAction() {
    if (!$('#frm-task').valid()) {
        return;
    }
    //if (!checkSelectLanguage()) {
    //    return;
    //}

    var requestPram = {};
    var tags = $('#Tags').val();
    requestPram.task = {
        'Id': $('input[name=Id]').val(),
        'DisplayName': $('input[name=DisplayName]').val(),
        'Name': $('input[name=Name]').val(),
        'Description': Base64.encode(tinymce.get('Description').getContent()),
        'Description_JP': Base64.encode(tinymce.get('Description_JP').getContent()),
        'Description_VN': Base64.encode(tinymce.get('Description_VN').getContent()),
        'Point': $('input[name=Point]').val(),
        'LimitNumberSubmit': $('input[name=LimitSubmit]').val(),
        'LimitCodeCharacters': $('input[name=LimitCharacters]').val(),
        'Tags': tags != null ? tags.toString() : '',
        'SampleCode': $('#SampleCode').val(),
        'TaskGroup': $('select[name=TaskGroup]').val()
    };

    requestPram.level = {
        'Id': $('select[name=Level]').val(),
        'Name': $('select[name=Level] option:selected').text()
    };

    requestPram.type = {
        'Id': $('select[name=TaskType]').val(),
        'Name': $('select[name=TaskType] option:selected').text()
    };

    requestPram.output = {
        'ArgumentTypeId': $('select#output-value').val(),
        'Description': $('textarea[name=output-description]').val()
    };
    requestPram.languages = collectLanguageIds();
    requestPram.inputs = collectInput();
    requestPram.testCases = arrayTestCase;
    requestPram.__RequestVerificationToken = token;

    PKLService.post({
        url: api.createTask,
        data: requestPram,
        OnSuccess: function (response) {
            if (response && response.Errors && response.Errors.length == 0) {
                if (NOFICATION_GLOBAL) {
                    NOFICATION_GLOBAL.update({ message: translate.instant(response.Message) });
                } else {
                    NOFICATION_GLOBAL = $.notify(translate.instant(response.Message));
                }
            } else {
                // To do
            }
        }
    });
}