$(document).ready(function () {   
    getContentDetails();
    $('#form1 input').attr('readonly', 'readonly');
    $('#form1 textarea').attr('readonly', 'readonly');

    $('#form1 input').addClass('bgwhite');
    $('#form1 textarea').addClass('bgwhite');
});

function getContentDetails() {
    var id = $('#hdnid').val();
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "CarDealerView.aspx/Getdata",
        data: '{id: ' + id + '}',
        dataType: "json",
        success: function (data) {            
            for (var i = 0; i < data.d.length; i++) {
                //
                $('#FIRM_NAME1').val(data.d[i].FIRM_NAME);
                $('#FIRST_NAME1').val(data.d[i].FIRST_NAME);
                $('#LAST_NAME1').val(data.d[i].LAST_NAME);
                $('#ADDRESS1').val(data.d[i].ADDRESS);
                $('#STATE1').val(data.d[i].STATE);
                $('#ZIPCODE1').val(data.d[i].ZIPCODE);
                $('#EMAIL1').val(data.d[i].EMAIL);
                $('#WEBSITE1').val(data.d[i].WEBSITE);
                $('#PHONE1').val(data.d[i].PHONE);
                $('#FAX1').val(data.d[i].FAX);
                $('#MON_TIME_FROM1').val(data.d[i].MON_TIME_FROM);
                $('#MON_TIME_TO1').val(data.d[i].MON_TIME_TO);
                $('#TUE_TIME_FROM1').val(data.d[i].TUE_TIME_FROM);
                $('#TUE_TIME_TO1').val(data.d[i].TUE_TIME_TO);
                $('#WED_TIME_FROM1').val(data.d[i].WED_TIME_FROM);
                $('#WED_TIME_TO1').val(data.d[i].WED_TIME_TO);
                $('#THU_TIME_FROM1').val(data.d[i].THU_TIME_FROM);
                $('#THU_TIME_TO1').val(data.d[i].THU_TIME_TO);
                $('#FRI_TIME_FROM1').val(data.d[i].FRI_TIME_FROM);
                $('#FRI_TIME_TO1').val(data.d[i].FRI_TIME_TO);
                $('#SAT_TIME_FROM1').val(data.d[i].SAT_TIME_FROM);
                $('#SAT_TIME_TO1').val(data.d[i].SAT_TIME_TO);
                $('#SUN_TIME_FROM1').val(data.d[i].SUN_TIME_FROM);
                $('#SUN_TIME_TO1').val(data.d[i].SUN_TIME_TO);

                $('#NEWCARSSOLD20181').val(data.d[i].NEWCARSSOLD2018);
                $('#USEDCARSSOLD20181').val(data.d[i].USEDCARSSOLD2018);
              
                if (data.d[i].HAS_CAR_WASH == true)
                    $('#HAS_CAR_WASH1').val('Yes');
                else
                    $('#HAS_CAR_WASH1').val('No');

                $('#CONTACT_WEEK1').val(data.d[i].CONTACT_WEEK);
                $('#CONTACT_TIME1').val(data.d[i].CONTACT_TIME);
                $('#QUESTIONS1').val(data.d[i].QUESTIONS);            
                document.getElementById("loader").style.display = "none";
            }
            
        },
        error: function () {
            alert("Error while Showing update data");
        }

        //
    });
}