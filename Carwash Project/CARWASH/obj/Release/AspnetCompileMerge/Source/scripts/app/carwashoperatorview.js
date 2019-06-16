var counter = 1;
$(document).ready(function () {
    getContentDetails();
    getPackageDetails();
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
        url: "WashOperatorView.aspx/Getdata",
        data: '{id: ' + id + '}',
        dataType: "json",
        success: function (data) {
            for (var i = 0; i < data.d.length; i++) {
                //
                $('#FIRM_NAME1').val(data.d[i].FIRM_NAME);
                $('#CONTACT_PERSON1').val(data.d[i].CONTACT_PERSON);
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

                $('#CARWASH_TYPE1').val(data.d[i].CARWASH_TYPE);
                if (data.d[i].GAS_STATION == 'Others')
                    $('#GAS_STATION1').val(data.d[i].GAS_STATION_OTHER);
                else
                    $('#GAS_STATION1').val(data.d[i].GAS_STATION);
                $('#CARWASH_AGE_YR1').val(data.d[i].CARWASH_AGE_YR);
                $('#CARWASH_AGE_MN1').val(data.d[i].CARWASH_AGE_MN);
                $('#MAX_VOL_PER_DAY1').val(data.d[i].MAX_VOL_PER_DAY);

                $('#CONTACT_WEEK1').val(data.d[i].CONTACT_WEEK);
                $('#CONTACT_TIME1').val(data.d[i].CONTACT_TIME);
                $('#QUESTIONS1').val(data.d[i].QUESTIONS);

            }

        },
        error: function () {
            alert("Error while Showing update data");
        }

        //
    });
}

function getPackageDetails() {
    var id = $('#hdnid').val();
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "WashOperatorView.aspx/GetPackagedata",
        data: '{id: ' + id + '}',
        dataType: "json",
        success: function (data) {
            for (var i = 0; i < data.d.length; i++) {               
                
               
                var newTextBoxDiv = $(document.createElement('div')).attr("id", 'PackageDiv' + counter);

                newTextBoxDiv.after().html("<input  type='text' id='pckname" + counter + "' value='" + data.d[i].NAME + "' class='form-control-sm' style='margin-left: 10px; width: 30%; display: inline;margin-bottom: 5px'/><label style='margin-left:10px;'>$ :</label><input type='number' id='pckprice" + counter + "' class='form-control-sm' style='margin-left:10px;width:90px;margin-bottom: 5px' value='" + data.d[i].PRICE + "'/>");

                newTextBoxDiv.appendTo("#PackageGroup");

                counter++;

            }

            $('#form1 input').attr('readonly', 'readonly');
            $('#form1 textarea').attr('readonly', 'readonly');

            $('#form1 input').addClass('bgwhite');
            $('#form1 textarea').addClass('bgwhite');
            document.getElementById("loader").style.display = "none";
        },
        error: function () {
            alert("Error while Showing update data");
        }

        //
    });
}