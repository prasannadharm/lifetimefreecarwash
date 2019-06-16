<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarDealerRegistration.aspx.cs" Inherits="CARWASH.Pages.CarDealerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Car Dealer Registartion</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
    <link href="../css/bootstrap4.3.min.css" rel="stylesheet" />
    <link href="../css/cardealersregistration.css?v=1" rel="stylesheet" />
    <link href="../css/ajaxloader.css" rel="stylesheet" />
    <script src="../scripts/jquery-3.0.0.min.js"></script>
    <script src="../scripts/bootstrap.4.3.1.min.js"></script>
    <script src="../scripts/app/cardealersregistration.js?v=1"></script>
</head>
<body>
    <form id="form1" runat="server">     

        <nav class="navbar navbar-expand-lg navbar-dark sticky-top" id="mainnavbar">  
           <img src="../images/Logo.png" id="imglogo"/>        
            <a class="navbar-brand mb-0 h1" href="#" style="color: #ffffff;margin-left:20px">Car Dealer Registration</a>
        </nav>

        <div class="container">
            <div class="d-flex align-items-center p-3 my-3 rounded shadow-sm">
                <div class="row">

                    <div class="form-group col-12 col-md-12 col-lg-12">
                        <label style="display: inline">
                            Company Name</labe><label style="color: red">*</label>
                            <input type="text" name="FIRM_NAME" id="FIRM_NAME1" class="form-control" placeholder="Please enter Company name" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">Owner\GM First Name</label><label style="color: red">*</label>
                        <input type="text" name="FIRST_NAME" id="FIRST_NAME1" class="form-control" placeholder="Please enter First name" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">Owner\GM Last Name</label><label style="color: red">*</label>
                        <input type="text" name="LAST_NAME" id="LAST_NAME1" class="form-control" placeholder="Please enter Last name" />
                    </div>

                    <div class="form-group col-12 col-md-12 col-lg-12">
                        <label style="display: inline">Address</label><label style="color: red">*</label>
                        <textarea rows="3" name="ADDRESS" id="ADDRESS1" class="form-control" placeholder="Please enter address"></textarea>
                    </div>

                    <div class="form-group col-8 col-md-6 col-lg-6">
                        <label style="display: inline">State</label><label style="color: red">*</label>
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
                        <label style="display: inline">Zipcode</label><label style="color: red">*</label>
                        <input type="number" name="ZIPCODE" id="ZIPCODE1" class="form-control" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">Phone</label><label style="color: red">*</label>
                        <input type="tel" name="PHONE" id="PHONE1" class="form-control" placeholder="Please enter Phone number." />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Fax</label>
                        <input type="tel" name="FAX" id="FAX1" class="form-control" placeholder="Please enter FAX number." />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">Email</label><label style="color: red">*</label>
                        <input type="email" name="EMAIL" id="EMAIL1" class="form-control" placeholder="Please enter email address." />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label>Website</label>
                        <input type="url" name="WEBSITE" id="WEBSITE1" class="form-control" placeholder="Please enter website address." />
                    </div>

                    <div class="form-group col-6 col-md-6 col-lg-6">
                        <label style="display: inline">New Cars Sold in 2018</label><label style="color: red">*</label>
                        <input type="number" name="NEWCARSSOLD2018" id="NEWCARSSOLD20181" class="form-control" />
                    </div>

                    <div class="form-group col-6 col-md-6 col-lg-6">
                        <label style="display: inline">Used Cars Sold in 2018</label><label style="color: red">*</label>
                        <input type="number" name="USEDCARSSOLD2018" id="USEDCARSSOLD20181" class="form-control" />
                    </div>

                    <div class="form-group col-12 col-md-6 col-lg-6">
                        <label style="display: inline">Timings</label><label style="color: red">*</label>
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
                        <label style="display: inline">Do you have a car wash already at your dealership location?</label><label style="color: red">*</label>
                        <select name="HAS_CAR_WASH1" id="HAS_CAR_WASH1" class="form-control">
                            <option value=''>--Select--</option>
                            <option value='Yes'>Yes</option>
                            <option value='No'>No</option>
                        </select>
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
                        <button type="button" id="btnSubmit" class="btn btn-primary" style="position: relative; float: right;">Submit</button>
                        <button type="button" id="btnReset" class="btn btn-danger" style="position: relative; float: right; margin-right: 20px">Reset</button>
                    </div>

                </div>

            </div>
        </div>
        <div id="footerdiv">
            <label id="lblfooter">© Copyright 2019. All Rights Reserved.  </label>
        </div>

        <div id="loader"></div>
    </form>
</body>
</html>
