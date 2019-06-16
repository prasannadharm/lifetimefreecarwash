<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CARWASH.Index" %>

<!DOCTYPE html>

<html>
<head>
    <title>Lifetime Free Car Wash :: www.lifetimefreecarwash.com</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="lifetimefreecarwash.com, Car Wash, Wash, Car Detail, Full Service, Touchless" />
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/bootstrap4.3.1.min.css">    
    <link rel="stylesheet" href="css/style.css?v=3">
    <link href="css/ajaxloader.css" rel="stylesheet" />
    <script src="scripts/jquery3.4.1.slim.min.js"></script>
    <script src="scripts/bootstrap4.3.1.bundle.min.js"></script>
    <script src="scripts/app/index.js?v=3"></script>
</head>

<body>
    <div id="loader"></div>
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top" id="mainnavbar">
        <!-- <div class="container"> -->

        <a class="navbar-brand" href="#">
            <img src="images/Logo.png" alt="" id="imglogo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#homediv-1" data-nav-section="home">HOME
                <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Index.aspx#fetauresdiv-1">FEATURES</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Index.aspx#aboutusdiv-1">ABOUT US</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Index.aspx#whyusdiv-1">WHY US</a>
                </li>
                <li class="nav-item active" id="licontactus">
                    <a class="nav-link" href="Index.aspx#contactusdiv-1">CONTACT US</a>
                </li>
            </ul>
        </div>
        <!-- </div> -->
    </nav>

    <div id="homediv-1">
        <div class="row">
            <div class="col-12 col-md-6 col-lg-6" id="firstdiv-1-1">
                <img src="images/Hero image.png" alt="" id="imgfirstdiv-1-1" style="height: 100%; width: 100%">
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6" id="firstdiv-1-2">
            </div>
        </div>
        <div class="square" id="firstdiv-1-center-1">
            <table style="width: 100%; height: 100%">
                <tr>
                    <td style="width: 50%" id="tdleft"></td>
                    <td style="width: 50%" valign="middle">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <label id="lblfirstdiv-1-1">We Are</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label id="lblfirstdiv-1-2">Revolutionizing the Car Wash Industry</label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>

        <div id="firstdiv-1-center-2">
               <button id="btnScrollDown"  onclick="window.location.href = '#fetauresdiv-1';" class="btnscroll">SCROLL <i class="down"></i></button>                
        </div>
    </div>


    <div id="fetauresdiv-1">
        <div id="carouselcarwashabout" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators darkcolor">
                <li data-target="#carouselcarwashabout" data-slide-to="0" class="active"></li>
                <li data-target="#carouselcarwashabout" data-slide-to="1"></li>
                <li data-target="#carouselcarwashabout" data-slide-to="2"></li>
            </ol>

            <div class="carousel-inner">
                <div class="carousel-inner-details">
                    <div class="carousel-item active">
                        <div class="clboxblueaboutus">
                            <div class="row">
                                <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8" style="min-height:150px">
                                    <label class="lblseconddiv-1-blue">OUR GOAL</label>
                                    <label class="lblseconddiv-1-pink">
                                        Wash your car for FREE<br>
                                        for as long as you drive it!</label>
                                </div>
                                <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 divimgaboutus">
                                    <img src="images/Our Goal.png" id="imgsecondiv-1-1" style="width: 100%; height: 100%;min-height:370px"></img>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="clboxblueaboutus">
                            <div class="row">
                                <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8" style="min-height:150px">
                                    <label class="lblseconddiv-1-blue">QUICK SERVICE FOR FREE</label>
                                    <label class="lblseconddiv-1-pink">Drive into any of our car wash locations and get a clean, fast, touch-less car wash for $0 </label>
                                </div>
                                <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 divimgaboutus">
                                    <img src="images/Quick Service.png" id="imgsecondiv-1-2" style="width: 100%; height: 100%;max-height:370px"></img>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="clboxblueaboutus">
                            <div class="row">
                                <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8" style="min-height:150px">
                                    <label class="lblseconddiv-1-blue">Starts from Day 1 of car ownership</label>
                                    <label class="lblseconddiv-1-pink">Free car wash from the day you walk out of the car dealership with the keys.<span class="ellipsis">...</span> <span class="moreText">Just look up the location and drive to the one nearest to you!</span> <a class="more">Read more.</a></label>
                                </div>
                                <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 divimgaboutus">
                                    <img src="images/Ownership.png" id="imgsecondiv-1-3" style="width: 100%; height: 100%;max-height:370px"></img>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="carousel-controls darkcolor">
                <a class="carousel-control-prev" href="#carouselcarwashabout" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" id="blueprev" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselcarwashabout" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" id="bluenext" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

        </div>
    </div>

    <div id="aboutusdiv-1">
        <div class="row" id="thirddiv-1-1">
            <div class="col-sm-12 col-md-12 col-lg-6">
                <label id="lblthirddiv-1-1">
                    OUR<br>
                    STORY</label>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-6" id="thirddiv-1-2" >
                <label id="lblthirddiv-1-2">Started in Schaumburg in 1999, we have 20 years of experience providing great quality and quick, car washing and drying services at both car dealerships and gas stations in greater Chicago. We are now expanding and are looking at formaing partnerships with more car dealerships, car wash operators and gas stations.</label>
            </div>
        </div>
    </div>

    <div id="whyusdiv-1">
        <div id="carouselcardealers" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselcardealers" data-slide-to="0" class="active"></li>
                <li data-target="#carouselcardealers" data-slide-to="1"></li>
                <li data-target="#carouselcardealers" data-slide-to="2"></li>
            </ol>

            <div class="carousel-inner">
                <div class="carousel-inner-details">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 mobdivbox">
                                <div class="clboxblue">
                                    <label class="lblforthdiv-1-box">
                                        Why Car<br>
                                        Dealerships<br>
                                        Love Us</label>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6" style="min-height:170px">
                                <label class="lblforthdiv-1-plain">We started off washing and drying cars at the car dealerships<span class="ellipsis"></span><span class="moreText">. We have trusted relationships with over 40 dealerships who rely on us for this service.</span> <a class="more">Read more.</a></label>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 dektopdivbox">
                                <div class="clboxblue">
                                    <label class="lblforthdiv-1-box">
                                        Why Car<br>
                                        Dealerships<br>
                                        Love Us</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">

                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 mobdivbox">
                                <div class="clboxblue">
                                    <label class="lblforthdiv-1-box">
                                        Why Car<br>
                                        Dealerships<br>
                                        Love Us</label>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6" style="min-height:170px">
                                <label class="lblforthdiv-1-plain">We now offer a Lifetime Free Carwash card for every car sold at a car dealership,<span class="ellipsis"></span> <span class="moreText"> where the owner of the car can drive into any of the car washes associated with us and get a FREE car wash.</span> <a class="more">Read more.</a></label>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 dektopdivbox">
                                <div class="clboxblue">
                                    <label class="lblforthdiv-1-box">
                                        Why Car<br>
                                        Dealerships<br>
                                        Love Us</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 mobdivbox">
                                <div class="clboxblue">
                                    <label class="lblforthdiv-1-box">
                                        Why Car<br>
                                        Dealerships<br>
                                        Love Us</label>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6" style="min-height:170px">
                                <label class="lblforthdiv-1-plain">This is a great value-add for you as a car dealer.  Come, partner with us!</label>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 dektopdivbox">
                                <div class="clboxblue">
                                    <label class="lblforthdiv-1-box">
                                        Why Car<br>
                                        Dealerships<br>
                                        Love Us</label>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            <div class="carousel-controls">
                <a class="carousel-control-prev" href="#carouselcardealers" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon"  id="blueprev1" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselcardealers" role="button" data-slide="next">
                    <span class="carousel-control-next-icon"  id="bluenext1" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>

                </a>
            </div>
        </div>
    </div>

    <div id="whyusdiv-2">
        <div id="carouselcarwshop" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselcarwshop" data-slide-to="0" class="active"></li>
                <li data-target="#carouselcarwshop" data-slide-to="1"></li>
                <li data-target="#carouselcarwshop" data-slide-to="2"></li>
                <li data-target="#carouselcarwshop" data-slide-to="3"></li>
                <li data-target="#carouselcarwshop" data-slide-to="4"></li>
            </ol>

            <div class="carousel-inner">
                <div class="carousel-inner-details">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-2 col-xl-2">
                                <img src="images/carwash.png" class="imgcarwash"></img>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
                                <label class="lblfifthdiv-1-bold">
                                    Why Car WASH<br>
                                    OPERATORS<br>
                                    Love Us</label>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 fifthdiv-1-plain">
                                <label class="lblfifthdiv-1-plain" id="lblfifthdiv-1-plainWIN">Whether you are a standalone car wash operator or a car wash at a gas station, we will send you more customers than ever before, through our Lifetime Free Car Wash Program. </label>
                                <label class="lblfifthdiv-1-plain" id="lblfifthdiv-1-plainMOB">Whether you are a standalone car wash operator or a car wash at a gas station,<span class="ellipsis"></span><span class="moreText">we will send you more customers than ever before, through our Lifetime Free Car Wash Program.</span><a class="more">Read more.</a></label>
                            </div>

                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-2 col-xl-2">
                                <img src="images/carwash.png" class="imgcarwash"></img>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
                                <label class="lblfifthdiv-1-bold">
                                    Why Car WASH<br>
                                    OPERATORS<br>
                                    Love Us</label>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 fifthdiv-1-plain">
                                <label class="lblfifthdiv-1-plain">Every person who buys a car at a car dealership that partners with us, will get a Free Lifetime Car Wash Card.</label>
                            </div>

                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-2 col-xl-2">
                                <img src="images/carwash.png" class="imgcarwash"></img>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
                                <label class="lblfifthdiv-1-bold">
                                    Why Car WASH<br>
                                    OPERATORS<br>
                                    Love Us</label>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 fifthdiv-1-plain">
                                <label class="lblfifthdiv-1-plain">With this card, the person can get a free cash wash at your facility.</label>
                            </div>

                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-2 col-xl-2">
                                <img src="images/carwash.png" class="imgcarwash"></img>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
                                <label class="lblfifthdiv-1-bold">
                                    Why Car WASH<br>
                                    OPERATORS<br>
                                    Love Us</label>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 fifthdiv-1-plain">
                                <label class="lblfifthdiv-1-plain">This will increase footfalls and will drive further sales at your convenience stores, gas stations, etc.</label>
                            </div>

                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-2 col-xl-2">
                                <img src="images/carwash.png" class="imgcarwash"></img>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
                                <label class="lblfifthdiv-1-bold">
                                    Why Car WASH<br>
                                    OPERATORS<br>
                                    Love Us</label>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 fifthdiv-1-plain">
                                <label class="lblfifthdiv-1-plain">We will compensate you for every exterior car wash at $1 per car wash. Come, partner with us!</label>
                            </div>

                        </div>
                    </div>


                </div>

            </div>
            <div class="carousel-controls">
                <a class="carousel-control-prev" href="#carouselcarwshop" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" id="redprev" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselcarwshop" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" id="rednext" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>

                </a>
            </div>
        </div>
    </div>

    <div id="contactusdiv-1">
        <div id="divcontactus">
            <label id="lblcontactus1" class="lblcontactus">So, what are you</label>
            <label id="lblcontactus2" class="lblcontactus">waiting for!</label>
            <div style="width:100%;text-align:center">
                <button id="btnContactus" class="btncntus" style="display: inline">Get in Touch</button>
            </div>
            <div style="width:100%;text-align:center">
                <button id="btnContactusCarwashOp" class="btncntus" style="margin-right:10px; display:none">For Car Wash Operators</button>
                <button id="btnContactusCarDealer" class="btncntus" style="margin-left:10px; display:none">For Car Dealers</button>
            </div>            
        </div>
    </div>

    <div id="footerdiv">
        <label id="lblfooter"> © Copyright 2019. All Rights Reserved.</label>
    </div>


</body>

</html>
