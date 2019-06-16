<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarDealerView.aspx.cs" Inherits="CARWASH.Pages.CarDealerView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Car Dealer Registartion Details View</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .bgwhite {
            background-color: white !important;
        }
    </style>
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
    <link href="../css/bootstrap4.3.min.css" rel="stylesheet" />
    <link href="../css/cardealersregistration.css?v=1" rel="stylesheet" />
    <link href="../css/ajaxloader.css" rel="stylesheet" />
    <script src="../scripts/jquery-3.0.0.min.js"></script>
    <script src="../scripts/bootstrap.4.3.1.min.js"></script>
    <script src="../scripts/app/cardealerview.js?v=1"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="loader"></div>

        <asp:HiddenField ID="hdnid" runat="server" Value="-1" />       
        <nav class="navbar navbar-expand-lg navbar-dark sticky-top" id="mainnavbar">  
           <img src="../images/Logo.png" id="imglogo"/>        
            <a class="navbar-brand mb-0 h1" href="#" style="color: #ffffff;margin-left:20px;">Car Dealer Registration Details</a>
        </nav>
        <div class="container">
            <div class="d-flex align-items-center p-3 my-3 rounded shadow-sm">
                <div class="row">

                    <div class="form-group col-12 col-md-12 col-lg-12">
                        <label>Company Name</label>
                        <input type="text" name="FIRM_NAME" id="FIRM_NAME1" class="form-control" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Owner\GM First Name</label>
                        <input type="text" name="FIRST_NAME" id="FIRST_NAME1" class="form-control" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Owner\GM Last Name</label>
                        <input type="text" name="LAST_NAME" id="LAST_NAME1" class="form-control" />
                    </div>

                    <div class="form-group col-12 col-md-12 col-lg-12">
                        <label>Address</label>
                        <textarea rows="3" name="ADDRESS" id="ADDRESS1" class="form-control"></textarea>
                    </div>

                    <div class="form-group col-8 col-md-6 col-lg-6">
                        <label>State</label>
                        <input type="text" name="STATE" id="STATE1" class="form-control" />
                    </div>

                    <div class="form-group col-4 col-md-6 col-lg-6">
                        <label>Zipcode</label>
                        <input type="number" name="ZIPCODE" id="ZIPCODE1" class="form-control" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Phone</label>
                        <input type="tel" name="PHONE" id="PHONE1" class="form-control" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Fax</label>
                        <input type="tel" name="FAX" id="FAX1" class="form-control" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Email</label>
                        <input type="email" name="EMAIL" id="EMAIL1" class="form-control" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Website</label>
                        <input type="url" name="WEBSITE" id="WEBSITE1" class="form-control" />
                    </div>

                    <div class="form-group col-6 col-md-6 col-lg-6">
                        <label>New Cars Sold in 2018</label>
                        <input type="number" name="NEWCARSSOLD2018" id="NEWCARSSOLD20181" class="form-control" />
                    </div>

                    <div class="form-group col-6 col-md-6 col-lg-6">
                        <label>Used Cars Sold in 2018</label>
                        <input type="number" name="USEDCARSSOLD2018" id="USEDCARSSOLD20181" class="form-control" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Timings</label>


                        <div id="divmoncontrols" style="clear: left">
                            <label style="width: 30px">Mon</label>
                            <input type="text" name="MON_TIME_FROM" id="MON_TIME_FROM1" class="form-control" style="width: 30%; display: inline" />
                            <label>To</label>
                            <input type="text" name="MON_TIME_TO" id="MON_TIME_TO1" class="form-control" style="width: 30%; display: inline" />
                        </div>

                        <div id="divtuecontrols" style="clear: left">
                            <label style="width: 30px">Tue</label>
                            <input type="text" name="TUE_TIME_FROM" id="TUE_TIME_FROM1" class="form-control" style="width: 30%; display: inline" />
                            <label>To</label>
                            <input type="text" name="TUE_TIME_TO" id="TUE_TIME_TO1" class="form-control" style="width: 30%; display: inline" />
                        </div>

                        <div id="divwedcontrols" style="clear: left">
                            <label style="width: 30px">Wed</label>
                            <input type="text" name="WED_TIME_FROM" id="WED_TIME_FROM1" class="form-control" style="width: 30%; display: inline" />
                            <label>To</label>
                            <input type="text" name="WED_TIME_TO" id="WED_TIME_TO1" class="form-control" style="width: 30%; display: inline" />
                        </div>

                        <div id="divthucontrols" style="clear: left">
                            <label style="width: 30px">Thu</label>
                            <input type="text" name="THU_TIME_FROM" id="THU_TIME_FROM1" class="form-control" style="width: 30%; display: inline" />
                            <label>To</label>
                            <input type="text" name="THU_TIME_TO" id="THU_TIME_TO1" class="form-control" style="width: 30%; display: inline" />
                        </div>

                        <div id="divfricontrols" style="clear: left">
                            <label style="width: 30px">Fri</label>
                            <input type="text" name="FRI_TIME_FROM" id="FRI_TIME_FROM1" class="form-control" style="width: 30%; display: inline" />
                            <label>To</label>
                            <input type="text" name="FRI_TIME_TO" id="FRI_TIME_TO1" class="form-control" style="width: 30%; display: inline" />
                        </div>

                        <div id="divsatcontrols" style="clear: left;">
                            <label style="width: 30px">Sat</label>
                            <input type="text" name="SAT_TIME_FROM" id="SAT_TIME_FROM1" class="form-control" style="width: 30%; display: inline" />
                            <label>To</label>
                            <input type="text" name="SAT_TIME_TO" id="SAT_TIME_TO1" class="form-control" style="width: 30%; display: inline" />
                        </div>

                        <div id="divsuncontrols" style="clear: left;">
                            <label style="width: 30px">Sun</label>
                            <input type="text" name="SUN_TIME_FROM" id="SUN_TIME_FROM1" class="form-control" style="width: 30%; display: inline" />
                            <label>To</label>
                            <input type="text" name="SUN_TIME_TO" id="SUN_TIME_TO1" class="form-control" style="width: 30%; display: inline" />
                        </div>
                    </div>


                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Do you have a car wash already at your dealership location?</label>
                        <input type="text" name="HAS_CAR_WASH" id="HAS_CAR_WASH1" class="form-control" />
                        <label style="display: block; margin-top: 10px">What is the best day and time to reach you?</label>
                        <input type="text" name="CONTACT_WEEK" id="CONTACT_WEEK1" class="form-control" style="width: 30%; display: inline" />
                        <label style="display: inline">Weekday</label>
                        <input type="text" name="CONTACT_TIME" id="CONTACT_TIME1" class="form-control" style="width: 30%; display: inline" />
                        <label style="display: inline">Time</label>
                    </div>

                    <div class="form-group col-12 col-md-12 col-lg-12">
                        <label>Feedback\Questions</label>
                        <textarea rows="4" name="QUESTIONS" id="QUESTIONS1" class="form-control"></textarea>
                    </div>

                </div>

            </div>
        </div>
        <div id="footerdiv">
            <label id="lblfooter">© Copyright 2019. All Rights Reserved.  </label>
        </div>
    </form>
</body>
</html>
