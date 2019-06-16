<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarWashOperatorRegistration.aspx.cs" Inherits="CARWASH.Pages.CarWashOperatorRegistartion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Car Wash Operator Registartion</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
    <link href="../css/bootstrap4.3.min.css" rel="stylesheet" />
    <link href="../css/bootstrap-select.css" rel="stylesheet" />
    <link href="../css/carwashoperatorregistration.css?v=1" rel="stylesheet" />
    <link href="../css/ajaxloader.css" rel="stylesheet" />
    <script src="../scripts/jquery-3.0.0.min.js"></script>
    <script src="../scripts/bootstrap4.1.1.bundle.min.js"></script>
    <script src="../scripts/bootstrap-select.min.js"></script>
    <script src="../scripts/app/carwashopregistraion.js?v=1"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="loader"></div>

       <nav class="navbar navbar-expand-lg navbar-dark sticky-top" id="mainnavbar">  
           <img src="../images/Logo.png" id="imglogo"/>        
            <a class="navbar-brand mb-0 h1" href="#" style="color: #ffffff;margin-left:20px;">Car Wash Operator Registration</a>
        </nav>

        <div class="container">
            <div class="d-flex align-items-center p-3 my-3 rounded shadow-sm">
                <div class="row">
                    <div class="form-group col-12 col-md-12 col-lg-12">
                        <h4>Operator Details</h4>
                    </div>
                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">Company Name</label><label style="color: red;">*</label>
                        <input type="text" name="FIRM_NAME" id="FIRM_NAME1" class="form-control" placeholder="Please enter Company name" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">Contact Person</label><label style="color: red;">*</label>
                        <input type="text" name="CONTACT_PERSON" id="CONTACT_PERSON1" class="form-control" placeholder="Please enter Contact person name" />
                    </div>

                    <div class="form-group col-12 col-md-12 col-lg-12">
                        <label style="display: inline">Address</label><label style="color: red;">*</label>
                        <textarea rows="3" name="ADDRESS" id="ADDRESS1" class="form-control" placeholder="Please enter address"></textarea>
                    </div>

                    <div class="form-group col-8 col-md-6 col-lg-6">
                        <label style="display: inline">State</label><label style="color: red;">*</label>
                        <select name="STATE" id="STATE1" class="form-control">
                            <option value=''>--Select State--</option>
                            <option value='Alabama'>Alabama</option>
                            <option value='Alaska'>Alaska</option>
                            <option value='Arizona'>Arizona</option>
                            <option value='Arkansas'>Arkansas</option>
                            <option value='California'>California</option>
                            <option value='Colorado'>Colorado</option>
                            <option value='Connecticut'>Connecticut</option>
                            <option value='Delaware'>Delaware</option>
                            <option value='Florida'>Florida</option>
                            <option value='Georgia'>Georgia</option>
                            <option value='Hawaii'>Hawaii</option>
                            <option value='Idaho'>Idaho</option>
                            <option value='Illinois'>Illinois</option>
                            <option value='Indiana'>Indiana</option>
                            <option value='Iowa'>Iowa</option>
                            <option value='Kansas'>Kansas</option>
                            <option value='Kentucky[E]'>Kentucky[E]</option>
                            <option value='Louisiana'>Louisiana</option>
                            <option value='Maine'>Maine</option>
                            <option value='Maryland'>Maryland</option>
                            <option value='Massachusetts[E]'>Massachusetts[E]</option>
                            <option value='Michigan'>Michigan</option>
                            <option value='Minnesota'>Minnesota</option>
                            <option value='Mississippi'>Mississippi</option>
                            <option value='Missouri'>Missouri</option>
                            <option value='Montana'>Montana</option>
                            <option value='Nebraska'>Nebraska</option>
                            <option value='Nevada'>Nevada</option>
                            <option value='New Hampshire'>New Hampshire</option>
                            <option value='New Jersey'>New Jersey</option>
                            <option value='New Mexico'>New Mexico</option>
                            <option value='New York'>New York</option>
                            <option value='North Carolina'>North Carolina</option>
                            <option value='North Dakota'>North Dakota</option>
                            <option value='Ohio'>Ohio</option>
                            <option value='Oklahoma'>Oklahoma</option>
                            <option value='Oregon'>Oregon</option>
                            <option value='Pennsylvania[E]'>Pennsylvania[E]</option>
                            <option value='Rhode Island[F]'>Rhode Island[F]</option>
                            <option value='South Carolina'>South Carolina</option>
                            <option value='South Dakota'>South Dakota</option>
                            <option value='Tennessee'>Tennessee</option>
                            <option value='Texas'>Texas</option>
                            <option value='Utah'>Utah</option>
                            <option value='Vermont'>Vermont</option>
                            <option value='Virginia[E]'>Virginia[E]</option>
                            <option value='Washington'>Washington</option>
                            <option value='West Virginia'>West Virginia</option>
                            <option value='Wisconsin'>Wisconsin</option>
                            <option value='Wyoming'>Wyoming</option>
                            <option value='District of Columbia'>District of Columbia</option>
                            <option value='American Samoa'>American Samoa</option>
                            <option value='Guam'>Guam</option>
                            <option value='Northern Mariana Islands'>Northern Mariana Islands</option>
                            <option value='Puerto Rico'>Puerto Rico</option>
                            <option value='U.S. Virgin Islands'>U.S. Virgin Islands</option>

                        </select>
                    </div>

                    <div class="form-group col-4 col-md-6 col-lg-6">
                        <label style="display: inline">Zipcode</label><label style="color: red;">*</label>
                        <input type="number" name="ZIPCODE" id="ZIPCODE1" class="form-control" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">Phone</label><label style="color: red;">*</label>
                        <input type="tel" name="PHONE" id="PHONE1" class="form-control" placeholder="Please enter Phone number." />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Fax</label>
                        <input type="tel" name="FAX" id="FAX1" class="form-control" placeholder="Please enter FAX number." />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">Email</label><label style="color: red;">*</label>
                        <input type="email" name="EMAIL" id="EMAIL1" class="form-control" placeholder="Please enter email address." />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Website</label>
                        <input type="url" name="WEBSITE" id="WEBSITE1" class="form-control" placeholder="Please enter website address." />
                    </div>

                    <div class="form-group col-12 col-md-12 col-lg-12">
                        <label style="display: inline">Timings of your car wash for all 7 days</label><label style="color: red;">*</label>
                        <div style="margin-bottom: 40px">
                            <div id="divmon" class="circleactive">M</div>
                            <div id="divtue" class="circleactive">T</div>
                            <div id="divwed" class="circleactive">W</div>
                            <div id="divthu" class="circleactive">T</div>
                            <div id="divfri" class="circleactive">F</div>
                            <div id="divsat" class="circleinactive">S</div>
                            <div id="divsun" class="circleinactive">S</div>
                        </div>

                        <div id="divmoncontrols" style="clear: left">
                            <label style="width: 30px">Mon</label>
                            <select name="MON_TIME_FROM" id="MON_TIME_FROM1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                            <label>To</label>
                            <select name="MON_TIME_TO" id="MON_TIME_TO1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                        </div>

                        <div id="divtuecontrols" style="clear: left">
                            <label style="width: 30px">Tue</label>
                            <select name="TUE_TIME_FROM" id="TUE_TIME_FROM1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                            <label>To</label>
                            <select name="TUE_TIME_TO" id="TUE_TIME_TO1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                        </div>

                        <div id="divwedcontrols" style="clear: left">
                            <label style="width: 30px">Wed</label>
                            <select name="WED_TIME_FROM" id="WED_TIME_FROM1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                            <label>To</label>
                            <select name="WED_TIME_TO" id="WED_TIME_TO1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                        </div>

                        <div id="divthucontrols" style="clear: left">
                            <label style="width: 30px">Thu</label>
                            <select name="THU_TIME_FROM" id="THU_TIME_FROM1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                            <label>To</label>
                            <select name="THU_TIME_TO" id="THU_TIME_TO1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                        </div>

                        <div id="divfricontrols" style="clear: left">
                            <label style="width: 30px">Fri</label>
                            <select name="FRI_TIME_FROM" id="FRI_TIME_FROM1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                            <label>To</label>
                            <select name="FRI_TIME_TO" id="FRI_TIME_TO1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                        </div>

                        <div id="divsatcontrols" style="clear: left; display: none">
                            <label style="width: 30px">Sat</label>
                            <select name="SAT_TIME_FROm" id="SAT_TIME_FROM1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                            <label>To</label>
                            <select name="SAT_TIME_TO" id="SAT_TIME_TO1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                        </div>

                        <div id="divsuncontrols" style="clear: left; display: none">
                            <label style="width: 30px">Sun</label>
                            <select name="SUN_TIME_FROM" id="SUN_TIME_FROM1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                            <label>To</label>
                            <select name="SUN_TIME_TO" id="SUN_TIME_TO1" class="form-control-sm">
                                <option value=''>OFF</option>
                                <option value='0'>12.00AM</option>
                                <option value='1'>12.30AM</option>
                                <option value='2'>1.00AM</option>
                                <option value='3'>1.30AM</option>
                                <option value='4'>2.00AM</option>
                                <option value='5'>2.30AM</option>
                                <option value='6'>3.00AM</option>
                                <option value='7'>3.30AM</option>
                                <option value='8'>4.00AM</option>
                                <option value='9'>4.30AM</option>
                                <option value='10'>5.00AM</option>
                                <option value='11'>5.30AM</option>
                                <option value='10'>6.00AM</option>
                                <option value='11'>6.30AM</option>
                                <option value='12'>7.00AM</option>
                                <option value='13'>7.30AM</option>
                                <option value='14'>8.00AM</option>
                                <option value='15'>8.30AM</option>
                                <option value='16'>9.00AM</option>
                                <option value='17'>9.30AM</option>
                                <option value='18'>10.00AM</option>
                                <option value='19'>10.30AM</option>
                                <option value='20'>11.00AM</option>
                                <option value='21'>11.30AM</option>
                                <option value='22'>12.00PM</option>
                                <option value='21'>12.30PM</option>
                                <option value='22'>1.00PM</option>
                                <option value='23'>1.30PM</option>
                                <option value='24'>2.00PM</option>
                                <option value='25'>2.30PM</option>
                                <option value='26'>3.00PM</option>
                                <option value='27'>3.30PM</option>
                                <option value='28'>4.00PM</option>
                                <option value='29'>4.30PM</option>
                                <option value='30'>5.00PM</option>
                                <option value='31'>5.30PM</option>
                                <option value='30'>6.00PM</option>
                                <option value='31'>6.30PM</option>
                                <option value='32'>7.00PM</option>
                                <option value='33'>7.30PM</option>
                                <option value='34'>8.00PM</option>
                                <option value='35'>8.30PM</option>
                                <option value='36'>9.00PM</option>
                                <option value='37'>9.30PM</option>
                                <option value='38'>10.00PM</option>
                                <option value='39'>10.30PM</option>
                                <option value='40'>11.00PM</option>
                                <option value='41'>11.30PM</option>
                            </select>
                        </div>

                    </div>


                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">What kind of car washes do you offer?</label><label style="color: red;">*</label>
                        <select id="CARWASH_TYPE1" class="selectpicker form-control" multiple data-live-search="true">
                            <option>Touchless</option>
                            <option>Brushless</option>
                            <option>Full service</option>
                            <option>Self service</option>
                            <option>Tunnel Car wash</option>
                            <option>Full Detail</option>
                        </select>
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <div id='PackageGroup' style="margin-bottom: 5px">
                            <label style="display: inline">What kind of car washes packages do you offer?</label><label style="color: red;">*</label>
                            <%--<div id="PackageDiv1">                                
                                <select id='pckname1' class="form-control-sm" style="margin-left: 10px; width: 30%; display: inline">
                                    <option value="">--Select--</option>
                                    <option value="Touchless">Touchless</option>
                                    <option value="Brushless">Brushless</option>
                                    <option value="Full service">Full service</option>
                                    <option value="Self service">Self service</option>
                                    <option value="Tunnel Car wash">Tunnel Car wash</option>
                                    <option value="Full Detail">Full Detail</option>
                                </select>
                                <label style="margin-left: 10px">$ :</label>
                                <input type="number" id='pckprice1' class="form-control-sm" style="margin-left: 10px; width: 90px" />
                            </div>--%>
                            <datalist id="packages">
                                <option value="Touchless" />
                                <option value="Brushless" />
                                <option value="Full service" />
                                <option value="Self service" />
                                <option value="Tunnel Car wash" />
                                <option value="Full Detail" />
                            </datalist>
                        </div>
                        <button type="button"  value='Add' id='addpackage' style="margin-left: 10px">Add</button>
                        <button type="button"  value='Remove' id='removepackage'>Remove</button>
                    </div>


                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">Gas station if located at a gas station</label><label style="color: red;">*</label>
                        <select name="GAS_STATION" id="GAS_STATION1" class="form-control">
                            <option value=''>--Select Option--</option>
                            <option value='Shell'>Shell</option>
                            <option value='Exxon'>Exxon</option>
                            <option value='Chevron'>Chevron</option>
                            <option value='Speedway'>Speedway</option>
                            <option value='BP'>BP</option>
                            <option value='Circle K'>Circle K</option>
                            <option value='Mobil'>Mobil</option>
                            <option value='Sunoco'>Sunoco</option>
                            <option value='Valero'>Valero</option>
                            <option value='QuikTrip'>QuikTrip</option>
                            <option value='Citgo'>Citgo</option>
                            <option value='Marathon'>Marathon</option>
                            <option value='Thorntons'>Thorntons</option>
                            <option value='Others'>Others</option>
                            <option value='Not linked to a gas station'>Not linked to a gas station</option>
                        </select>
                        <div id="GAS_OTHERS" style="margin-top: 10px;">
                            <input type="text" name="GAS_STATION_OTHER" id="GAS_STATION_OTHER1" class="form-control" placeholder="Please provide name of gas brand" />
                        </div>
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">How old is your car wash equipment?</label><label style="color: red;">*</label><label style="display: block"></label>
                        <select name="CARWASH_AGE_YR" id="CARWASH_AGE_YR1" class="form-control" style="width: 30%; display: inline">
                            <option value='0'>0</option>
                            <option value='1'>1</option>
                            <option value='2'>2</option>
                            <option value='3'>3</option>
                            <option value='4'>4</option>
                            <option value='5'>5</option>
                            <option value='6'>6</option>
                            <option value='7'>7</option>
                            <option value='8'>8</option>
                            <option value='9'>9</option>
                            <option value='10'>10</option>
                            <option value='11'>11</option>
                            <option value='12'>12</option>
                            <option value='13'>13</option>
                            <option value='14'>14</option>
                            <option value='15'>15</option>
                            <option value='16'>16</option>
                            <option value='17'>17</option>
                            <option value='18'>18</option>
                            <option value='19'>19</option>
                            <option value='20'>20</option>
                        </select>
                        <label style="display: inline">Year(s)</label>
                        <select name="CARWASH_AGE_MN" id="CARWASH_AGE_MN1" class="form-control" style="width: 30%; display: inline">
                            <option value='0'>0</option>
                            <option value='1'>1</option>
                            <option value='2'>2</option>
                            <option value='3'>3</option>
                            <option value='4'>4</option>
                            <option value='5'>5</option>
                            <option value='6'>6</option>
                            <option value='7'>7</option>
                            <option value='8'>8</option>
                            <option value='9'>9</option>
                            <option value='10'>10</option>
                            <option value='11'>11</option>
                        </select>
                        <label style="display: inline">Months</label>

                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">Number of car washes you can handle daily?</label><label style="color: red;">*</label>
                        <input type="number" name="MAX_VOL_PER_DAY" id="MAX_VOL_PER_DAY1" class="form-control" />
                    </div>


                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">What is the best day and time to reach you?</label><label style="color: red;">*</label><label style="display: block"></label>
                        <select name="CONTACT_WEEK" id="CONTACT_WEEK1" class="form-control" style="width: 30%; display: inline">
                            <option value=''>--Select--</option>
                            <option value='Monday'>Monday</option>
                            <option value='Tuesday'>Tuesday</option>
                            <option value='Wednesday'>Wednesday</option>
                            <option value='Thursday'>Thursday</option>
                            <option value='Friday'>Friday</option>
                            <option value='Saturday'>Saturday</option>
                            <option value='Sunday'>Sunday</option>
                        </select>
                        <label style="display: inline">Weekday</label>
                        <select name="CONTACT_TIME" id="CONTACT_TIME1" class="form-control" style="width: 30%; display: inline">
                            <option value=''>--Select--</option>
                            <option value='Morning'>Morning</option>
                            <option value='Afternoon'>Afternoon</option>
                            <option value='Evening'>Evening</option>
                        </select>
                        <label style="display: inline">Time</label>
                    </div>

                    <div class="form-group col-12 col-md-12 col-lg-12">
                        <label>Feedback\Questions</label>
                        <textarea rows="4" name="QUESTIONS" id="QUESTIONS1" class="form-control" placeholder="Your Feedback\Questions"></textarea>
                    </div>

                    <div class="col-12">
                        <button type="button" id="btnSubmit" style="position: relative; float: right;">Submit</button>
                        <button type="button" id="btnReset"  style="position: relative; float: right; margin-right: 20px">Reset</button>
                    </div>

                </div>

            </div>
        </div>       

        <div id="footerdiv">
            <label id="lblfooter"> © Copyright 2019. All Rights Reserved.  </label>
        </div>

    </form>
</body>
</html>
