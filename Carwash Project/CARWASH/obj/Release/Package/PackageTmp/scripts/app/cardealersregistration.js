var mondayOFF = 0;
var tuedayOFF = 0;
var weddayOFF = 0;
var thudayOFF = 0;
var fridayOFF = 0;
var satdayOFF = 1;
var sundayOFF = 1;

$(document).ready(function () {
    $('#loader').hide();
    resetControls();    
});

$(function () {

    $("#btnReset").click(function () {
        if (confirm("Are you sure you want to Reset the data!") == true) {
            resetControls();
        }
    });

    $("#btnSubmit").click(function () {

        if ($("#FIRM_NAME1").val() == '') {
            alert('Please enter Company name.');
            $("#FIRM_NAME1").focus();
            return;
        }

        if ($("#FIRST_NAME1").val() == '') {
            alert('Please enter first name.');
            $("#FIRST_NAME1").focus();
            return;
        }

        if ($("#LAST_NAME1").val() == '') {
            alert('Please enter last name.');
            $("#LAST_NAME1").focus();
            return;
        }

        if ($("#ADDRESS1").val() == '') {
            alert('Please enter address.');
            $("#ADDRESS1").focus();
            return;
        }

        if ($("#STATE1").val() == null || $("#STATE1").val() == '') {
            alert('Please select State.');
            $("#STATE1").focus();
            return;
        }

        if ($("#ZIPCODE1").val() == '') {
            alert('Please enter Zipcode.');
            $("#ZIPCODE1").focus();
            return;
        }       

        var zip = $("#ZIPCODE1").val();
        if ((zip.length) < 5 || (zip.length) > 5) {
            alert("Zipcode should only be 5 digits");
            $("#ZIPCODE1").focus();
            return;
        }        

        if ($("#PHONE1").val() == '') {
            alert('Please enter Phone number.');
            $("#PHONE1").focus();
            return;
        }

        if ($("#EMAIL1").val() == '') {
            alert('Please enter email address.');
            $("#EMAIL1").focus();
            return;
        }

        if (!validateEmail($("#EMAIL1").val())) {
            alert('Please enter valid email address.');
            $("#EMAIL1").focus();
            return;
        }


        if (mondayOFF == 0) {
            if ($("#MON_TIME_FROM1").val() == null || $("#MON_TIME_FROM1").val() == '') {
                alert('Please select Opening time on Monday.');
                $("#MON_TIME_FROM1").focus();
                return;
            }

            if ($("#MON_TIME_TO1").val() == null || $("#MON_TIME_TO1").val() == '') {
                alert('Please select Closing time on Monday.');
                $("#MON_TIME_TO1").focus();
                return;
            }

            if (parseInt($("#MON_TIME_FROM1").val()) >= parseInt($("#MON_TIME_TO1").val())) {
                alert('Opening time must be less than Closing time on Monday.');
                $("#MON_TIME_FROM1").focus();
                return;
            }
        }

        if (tuedayOFF == 0) {
            if ($("#TUE_TIME_FROM1").val() == null || $("#TUE_TIME_FROM1").val() == '') {
                alert('Please select Opening time on Tuesday.');
                $("#TUE_TIME_FROM1").focus();
                return;
            }

            if ($("#TUE_TIME_TO1").val() == null || $("#TUE_TIME_TO1").val() == '') {
                alert('Please select Closing time on Tuesday.');
                $("#TUE_TIME_TO1").focus();
                return;
            }

            if (parseInt($("#TUE_TIME_FROM1").val()) >= parseInt($("#TUE_TIME_TO1").val())) {
                alert('Opening time must be less than Closing time on Tuesday.');
                $("#TUE_TIME_TO1").focus();
                return;
            }
        }

        if (weddayOFF == 0) {
            if ($("#WED_TIME_FROM1").val() == null || $("#WED_TIME_FROM1").val() == '') {
                alert('Please select Opening time on Wednesday.');
                $("#WED_TIME_FROM1").focus();
                return;
            }

            if ($("#WED_TIME_TO1").val() == null || $("#WED_TIME_TO1").val() == '') {
                alert('Please select Closing time on Wednesday.');
                $("#WED_TIME_TO1").focus();
                return;
            }

            if (parseInt($("#WED_TIME_FROM1").val()) >= parseInt($("#WED_TIME_TO1").val())) {
                alert('Opening time must be less than Closing time on Wednesday.');
                $("#WED_TIME_FROM1").focus();
                return;
            }
        }

        if (thudayOFF == 0) {
            if ($("#THU_TIME_FROM1").val() == null || $("#THU_TIME_FROM1").val() == '') {
                alert('Please select Opening time on Thursday.');
                $("#THU_TIME_FROM1").focus();
                return;
            }

            if ($("#THU_TIME_TO1").val() == null || $("#THU_TIME_TO1").val() == '') {
                alert('Please select Closing time on Thursday.');
                $("#THU_TIME_TO1").focus();
                return;
            }

            if (parseInt($("#THU_TIME_FROM1").val()) >= parseInt($("#THU_TIME_TO1").val())) {
                alert('Opening time must be less than Closing time on Thursday.');
                $("#THU_TIME_FROM1").focus();
                return;
            }
        }

        if (fridayOFF == 0) {
            if ($("#FRI_TIME_FROM1").val() == null || $("#FRI_TIME_FROM1").val() == '') {
                alert('Please select Opening time on Friday.');
                $("#FRI_TIME_FROM1").focus();
                return;
            }

            if ($("#FRI_TIME_TO1").val() == null || $("#FRI_TIME_TO1").val() == '') {
                alert('Please select Closing time on Friday.');
                $("#FRI_TIME_TO1").focus();
                return;
            }

            if (parseInt($("#FRI_TIME_FROM1").val()) >= parseInt($("#FRI_TIME_TO1").val())) {
                alert('Opening time must be less than Closing time on Friday.');
                $("#FRI_TIME_FROM1").focus();
                return;
            }
        }

        if (satdayOFF == 0) {
            if ($("#SAT_TIME_FROM1").val() == null || $("#SAT_TIME_FROM1").val() == '') {
                alert('Please select Opening time on Saturday.');
                $("#SAT_TIME_FROM1").focus();
                return;
            }

            if ($("#SAT_TIME_TO1").val() == null || $("#SAT_TIME_TO1").val() == '') {
                alert('Please select Closing time on Saturday.');
                $("#SAT_TIME_TO1").focus();
                return;
            }

            if (parseInt($("#SAT_TIME_FROM1").val()) >= parseInt($("#SAT_TIME_TO1").val())) {
                alert('Opening time must be less than Closing time on Saturday.');
                $("#SAT_TIME_FROM1").focus();
                return;
            }
        }

        if (sundayOFF == 0) {
            if ($("#SUN_TIME_FROM1").val() == null || $("#SUN_TIME_FROM1").val() == '') {
                alert('Please select Opening time on Sunday.');
                $("#SUN_TIME_FROM1").focus();
                return;
            }

            if ($("#SUN_TIME_TO1").val() == null || $("#SUN_TIME_TO1").val() == '') {
                alert('Please select Closing time on Sunday.');
                $("#SUN_TIME_TO1").focus();
                return;
            }

            if (parseInt($("#SUN_TIME_FROM1").val()) >= parseInt($("#SUN_TIME_TO1").val())) {
                alert('Opening time must be less than Closing time on Sunday.');
                $("#SUN_TIME_FROM1").focus();
                return;
            }
        }


        if ($("#NEWCARSSOLD20181").val() == '' || $("#NEWCARSSOLD20181").val() <= 0) {
            alert('Please enter new cars sold count in 2018.');
            $("#NEWCARSSOLD20181").focus();
            return;
        }

        if ($("#USEDCARSSOLD20181").val() == '' || $("#USEDCARSSOLD20181").val() <= 0) {
            alert('Please enter used cars sold count in 2018.');
            $("#USEDCARSSOLD20181").focus();
            return;
        }

        if ($("#HAS_CAR_WASH1").val() == null || $("#HAS_CAR_WASH1").val() == '') {
            alert('Please select do you have car wash facilty at your location.');
            $("#HAS_CAR_WASH1").focus();
            return;
        }

        if ($("#CONTACT_WEEK1").val() == null || $("#CONTACT_WEEK1").val() == '') {
            alert('Please select your preferred day to reach you.');
            $("#CONTACT_WEEK1").focus();
            return;
        }

        if ($("#CONTACT_TIME1").val() == null || $("#CONTACT_TIME1").val() == '') {
            alert('Please select your preferred time to reach you.');
            $("#CONTACT_TIME1").focus();
            return;
        }

        $('#loader').show();
        var obj = {};
        //obj.ID = $("#ID").val();
        obj.FIRST_NAME = $.trim($("#FIRST_NAME1").val());
        obj.LAST_NAME = $.trim($("#LAST_NAME1").val());
        obj.FIRM_NAME = $.trim($("#FIRM_NAME1").val());
        obj.ADDRESS = $.trim($("#ADDRESS1").val());
        obj.STATE = $.trim($("#STATE1").val());
        obj.ZIPCODE = $.trim($("#ZIPCODE1").val());
        obj.EMAIL = $.trim($("#EMAIL1").val());
        obj.WEBSITE = $.trim($("#WEBSITE1").val());
        obj.PHONE = $.trim($("#PHONE1").val());
        obj.FAX = $.trim($("#FAX1").val());

      

        obj.MON_TIME_FROM = $.trim($("#MON_TIME_FROM1 option:selected").text());
        obj.MON_TIME_TO = $.trim($("#MON_TIME_TO1 option:selected").text());
        obj.TUE_TIME_FROM = $.trim($("#TUE_TIME_FROM1 option:selected").text());
        obj.TUE_TIME_TO = $.trim($("#TUE_TIME_TO1 option:selected").text());
        obj.WED_TIME_FROM = $.trim($("#WED_TIME_FROM1 option:selected").text());
        obj.WED_TIME_TO = $.trim($("#WED_TIME_TO1 option:selected").text());
        obj.THU_TIME_FROM = $.trim($("#THU_TIME_FROM1 option:selected").text());
        obj.THU_TIME_TO = $.trim($("#THU_TIME_TO1 option:selected").text());
        obj.FRI_TIME_FROM = $.trim($("#FRI_TIME_FROM1 option:selected").text());
        obj.FRI_TIME_TO = $.trim($("#FRI_TIME_TO1 option:selected").text());
        obj.SAT_TIME_FROM = $.trim($("#SAT_TIME_FROM1 option:selected").text());
        obj.SAT_TIME_TO = $.trim($("#SAT_TIME_TO1 option:selected").text());
        obj.SUN_TIME_FROM = $.trim($("#SUN_TIME_FROM1 option:selected").text());
        obj.SUN_TIME_TO = $.trim($("#SUN_TIME_TO1 option:selected").text());

        obj.NEWCARSSOLD2018 = $.trim($("#NEWCARSSOLD20181").val());
        obj.USEDCARSSOLD2018 = $.trim($("#USEDCARSSOLD20181").val());

        if ($.trim($("#HAS_CAR_WASH1").val()) == 'Yes') {
            obj.HAS_CAR_WASH = true;
        }
        else {
            obj.HAS_CAR_WASH = false;
        }

        obj.CONTACT_WEEK = $.trim($("#CONTACT_WEEK1").val());
        obj.CONTACT_TIME = $.trim($("#CONTACT_TIME1").val());
        obj.QUESTIONS = $.trim($("#QUESTIONS1").val());


        $.ajax({
            type: "Post",
            contentType: "application/json; charset=utf-8",
            url: "CarDealerRegistration.aspx/InsertData",
            data: '{obj: ' + JSON.stringify(obj) + '}',
            dataType: "json",
            success: function (data) {
                for (var i = 0; i < data.d.length; i++) {
                    if (data.d[i].RESULT === 1) {
                        resetControls();
                        alert(data.d[i].MSG);
                    }
                    else {
                        alert(data.d[i].MSG);
                        $("#FIRM_NAME1").focus();
                        return false;
                    }
                }
            },
            error: function (data) {
                alert("Error while Submitting data of :" + obj.FIRM_NAME);
                $("#FIRM_NAME1").focus();
                return false;
            }
        });
        $('#loader').hide();
    });

    $('#divmon').click(function () {
        var $this = $(this);
        if ($this.hasClass("circleinactive")) {
            $this.removeClass("circleinactive");
            $this.addClass("circleactive");
            $('#divmoncontrols').show();
            $('#MON_TIME_FROM1').val('16');
            $('#MON_TIME_TO1').val('30');
            mondayOFF = 0;
        } else {
            $this.removeClass("circleactive");
            $this.addClass("circleinactive");
            $('#divmoncontrols').hide();
            $('#MON_TIME_FROM1').val('');
            $('#MON_TIME_TO1').val('');
            mondayOFF = 1;
        }
    });

    $('#divtue').click(function () {
        var $this = $(this);
        if ($this.hasClass("circleinactive")) {
            $this.removeClass("circleinactive");
            $this.addClass("circleactive");
            $('#divtuecontrols').show();
            $('#TUE_TIME_FROM1').val('16');
            $('#TUE_TIME_TO1').val('30');
            tuedayOFF = 0;
        } else {
            $this.removeClass("circleactive");
            $this.addClass("circleinactive");
            $('#divtuecontrols').hide();
            $('#TUE_TIME_FROM1').val('');
            $('#TUE_TIME_TO1').val('');
            tuedayOFF = 1;
        }
    });

    $('#divwed').click(function () {
        var $this = $(this);
        if ($this.hasClass("circleinactive")) {
            $this.removeClass("circleinactive");
            $this.addClass("circleactive");
            $('#divwedcontrols').show();
            $('#WED_TIME_FROM1').val('16');
            $('#WED_TIME_TO1').val('30');
            weddayOFF = 0;
        } else {
            $this.removeClass("circleactive");
            $this.addClass("circleinactive");
            $('#divwedcontrols').hide();
            $('#WED_TIME_FROM1').val('');
            $('#WED_TIME_TO1').val('');
            weddayOFF = 1;
        }
    });

    $('#divthu').click(function () {
        var $this = $(this);
        if ($this.hasClass("circleinactive")) {
            $this.removeClass("circleinactive");
            $this.addClass("circleactive");
            $('#divthucontrols').show();
            $('#THU_TIME_FROM1').val('16');
            $('#THU_TIME_TO1').val('30');
            thudayOFF = 0;
        } else {
            $this.removeClass("circleactive");
            $this.addClass("circleinactive");
            $('#divthucontrols').hide();
            $('#THU_TIME_FROM1').val('');
            $('#THU_TIME_TO1').val('');
            thudayOFF = 1;
        }
    });

    $('#divfri').click(function () {
        var $this = $(this);
        if ($this.hasClass("circleinactive")) {
            $this.removeClass("circleinactive");
            $this.addClass("circleactive");
            $('#divfricontrols').show();
            $('#FRI_TIME_FROM1').val('16');
            $('#FRI_TIME_TO1').val('30');
            fridayOFF = 0;
        } else {
            $this.removeClass("circleactive");
            $this.addClass("circleinactive");
            $('#divfricontrols').hide();
            $('#FRI_TIME_FROM1').val('');
            $('#FRI_TIME_TO1').val('');
            fridayOFF = 1;
        }
    });

    $('#divsat').click(function () {
        var $this = $(this);
        if ($this.hasClass("circleinactive")) {
            $this.removeClass("circleinactive");
            $this.addClass("circleactive");
            $('#divsatcontrols').show();
            $('#SAT_TIME_FROM1').val('16');
            $('#SAT_TIME_TO1').val('30');
            satdayOFF = 0;
        } else {
            $this.removeClass("circleactive");
            $this.addClass("circleinactive");
            $('#divsatcontrols').hide();
            $('#SAT_TIME_FROM1').val('');
            $('#SAT_TIME_TO1').val('');
            satdayOFF = 1;
        }
    });

    $('#divsun').click(function () {
        var $this = $(this);
        if ($this.hasClass("circleinactive")) {
            $this.removeClass("circleinactive");
            $this.addClass("circleactive");
            $('#divsuncontrols').show();
            $('#SUN_TIME_FROM1').val('16');
            $('#SUN_TIME_TO1').val('30');
            sundayOFF = 0;
        } else {
            $this.removeClass("circleactive");
            $this.addClass("circleinactive");
            $('#divsuncontrols').hide();
            $('#SUN_TIME_FROM1').val('');
            $('#SUN_TIME_TO1').val('');
            sundayOFF = 1;
        }
    });

});


function validateEmail(emailAddress) {
    var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
    return pattern.test(emailAddress);
}

function resetControls()
{
    $("#FIRST_NAME1").val('');
    $("#LAST_NAME1").val('');
    $("#FIRM_NAME1").val('');
    $("#ADDRESS1").val('');
    $("#STATE1").val('');
    $("#ZIPCODE1").val('');
    $("#EMAIL1").val('');
    $("#WEBSITE1").val('');
    $("#PHONE1").val('');
    $("#FAX1").val('');
    if ($('#divmon').hasClass('circleinactive'))
        $('#divmon').removeClass("circleinactive");
    if ($('#divmon').hasClass('circleactive'))
        $('#divmon').removeClass("circleactive");
    $('#divmon').addClass("circleactive");
    $('#divmoncontrols').show();

    if ($('#divtue').hasClass('circleinactive'))
        $('#divtue').removeClass("circleinactive");
    if ($('#divtue').hasClass('circleactive'))
        $('#divtue').removeClass("circleactive");
    $('#divtue').addClass("circleactive");
    $('#divtuecontrols').show();

    if ($('#divwed').hasClass('circleinactive'))
        $('#divwed').removeClass("circleinactive");
    if ($('#divwed').hasClass('circleactive'))
        $('#divwed').removeClass("circleactive");
    $('#divwed').addClass("circleactive");
    $('#divwedcontrols').show();

    if ($('#divthu').hasClass('circleinactive'))
        $('#divthu').removeClass("circleinactive");
    if ($('#divthu').hasClass('circleactive'))
        $('#divthu').removeClass("circleactive");
    $('#divthu').addClass("circleactive");;
    $('#divthucontrols').show();

    if ($('#divfri').hasClass('circleinactive'))
        $('#divfri').removeClass("circleinactive");
    if ($('#divfri').hasClass('circleactive'))
        $('#divfri').removeClass("circleactive");
    $('#divfri').addClass("circleactive");
    $('#divfricontrols').show();

    if ($('#divsat').hasClass('circleinactive'))
        $('#divsat').removeClass("circleinactive");
    if ($('#divsat').hasClass('circleactive'))
        $('#divsat').removeClass("circleactive");
    $('#divsat').addClass("circleinactive");
    $('#divsatcontrols').hide();

    if ($('#divsun').hasClass('circleinactive'))
        $('#divsun').removeClass("circleinactive");
    if ($('#divsun').hasClass('circleactive'))
        $('#divsun').removeClass("circleactive");
    $('#divsun').addClass("circleinactive");
    $('#divsuncontrols').hide();
    
    mondayOFF = 0;
    tuedayOFF = 0;
    weddayOFF = 0;
    thudayOFF = 0;
    fridayOFF = 0;
    satdayOFF = 1;
    sundayOFF = 1;

    $('#MON_TIME_FROM1').val('16');
    $('#MON_TIME_TO1').val('30');
    $('#TUE_TIME_FROM1').val('16');
    $('#TUE_TIME_TO1').val('30');
    $('#WED_TIME_FROM1').val('16');
    $('#WED_TIME_TO1').val('30');
    $('#THU_TIME_FROM1').val('16');
    $('#THU_TIME_TO1').val('30');
    $('#FRI_TIME_FROM1').val('16');
    $('#FRI_TIME_TO1').val('30');
    $('#SAT_TIME_FROM1').val('');
    $('#SAT_TIME_TO1').val('');
    $('#SUN_TIME_FROM1').val('');
    $('#SUN_TIME_TO1').val('');

    $("#NEWCARSSOLD20181").val('');
    $("#USEDCARSSOLD20181").val('');

    $("#HAS_CAR_WASH1").val('')
    $("#CONTACT_WEEK1").val('');
    $("#CONTACT_TIME1").val('');
    $("#QUESTIONS1").val('');
    $("#FIRM_NAME1").focus();
}