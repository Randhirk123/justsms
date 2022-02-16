<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="uri" value="${req.requestURI}" />

<!-- meta tags and other links -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Send Sms</title>
  <base
	href="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}/" />
  <!-- site favicon -->
  <link rel="shortcut icon" type="image/png" href="assets/images/logoIcon/favicon.png">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap">
  <!-- bootstrap 4  -->
  <link rel="stylesheet" href="assets/userpanel/css/vendor/bootstrap.min.css">
  <!-- bootstrap toggle css -->
  <link rel="stylesheet" href="assets/userpanel/css/vendor/bootstrap-toggle.min.css">
  <!-- fontawesome 5  -->
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.14/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<link href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="assets/userpanel/css/all.min.css">
  <!-- line-awesome webfont -->
  <link rel="stylesheet" href="assets/userpanel/css/line-awesome.min.css">
  <!-- custom select box css -->
  <link rel="stylesheet" href="assets/userpanel/css/vendor/nice-select.css">
  <!-- code preview css -->
  <link rel="stylesheet" href="assets/userpanel/css/vendor/prism.css">
  <!-- select 2 css -->
  <link rel="stylesheet" href="assets/userpanel/css/vendor/select2.min.css">
  <!-- data table css -->
  <link rel="stylesheet" href="assets/userpanel/css/vendor/datatables.min.css">
  <!-- jvectormap css -->
  <link rel="stylesheet" href="assets/userpanel/css/vendor/jquery-jvectormap-2.0.5.css">
  <!-- datepicker css -->
  <link rel="stylesheet" href="assets/userpanel/css/vendor/datepicker.min.css">
  <!-- timepicky for time picker css -->
  <link rel="stylesheet" href="assets/userpanel/css/vendor/jquery-timepicky.css">
  <!-- bootstrap-clockpicker css -->
  <link rel="stylesheet" href="assets/userpanel/css/vendor/bootstrap-clockpicker.min.css">
  <!-- bootstrap-pincode css -->
  <link rel="stylesheet" href="assets/userpanel/css/vendor/bootstrap-pincode-input.css">
  
  <link rel="stylesheet" href="assets/userpanel/css/lightcase.css">
  

  <!-- dashdoard main css -->
  <link rel="stylesheet" href="assets/userpanel/css/app.css">
    <link rel="stylesheet" href="css/dbtable.css">

  <link rel="stylesheet" href="assets/additional/bootstrap-fileinput.css">
  <link rel="stylesheet" href="assets/additional/intlTelInput.css">
  <link rel="stylesheet" href="css/snackbar.css">
   <script src="js/sticky.js"></script>
    </head>
  <body>
  <!-- page-wrapper start -->
  <div class="page-wrapper default-version"></div>


    <!-- page-wrapper start -->
    <div class="page-wrapper default-version">
        <div class="sidebar capsule--rounded bg--" style="background-image: url('assets/userpanel/images/sidebar/1.jpg')">
    <button class="res-sidebar-close-btn"><i class="las la-times"></i></button>
    <button class="sidebar__expand"><i class="las la-plus"></i></button><br>
    <div class="sidebar__inner">
        <div class="sidebar__logo">
            <a href="/Dashboard" style="color:white">SMS.JUSTSMS.CO.IN</a>
            <button type="button" class="navbar__expand"></button>
        </div>

        <div class="sidebar__menu-wrapper" id="sidebar__menuWrapper">
            <ul class="sidebar__menu">
            
             <li class="sidebar-menu-item sidebar-dropdown">
                    <a href="javascript:void(0)" class="">
                        <i class="menu-icon las la-home"></i>
                        <span class="menu-title">Dashboard</span>
                    </a>
                
                   <ul>
                   		<li class="sidebar-menu-item sidebar-dropdown">
                   		 <a href="javascript:void(0)" class="side-menu--open">
                        <i class="menu-icon fas fa-envelope"></i>
                        <span class="menu-title">Message</span>
                        </a>
                        <div class="sidebar-submenu sidebar-submenu__open ">
                         <ul>
                         
                            <li class="sidebar-menu-item active">
                                <a href="/sendsms" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Send SMS</span>
                                </a>
                            </li>
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Send Opt SMS</span>
                                </a>
                            </li>
                            
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">SMS From File</span>
                                </a>
                            </li>
                        </ul>
                        </div>
                   		</li>
                   </ul>
                   <!-- start transactional -->
                   <ul>
                   		<li class="sidebar-menu-item sidebar-dropdown">
                    <a href="javascript:void(0)" class="">
                        <i class="menu-icon fas fa-bars"></i>
                        <span class="menu-title">Transactional</span>
                    </a>
                        <div class="sidebar-submenu">
                         <ul>
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">My SenderId's</span>
                                </a>
                            </li>
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">My Templates</span>
                                </a>
                            </li>
                            
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">My Drafts</span>
                                </a>
                            </li>
                            
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">My Routes</span>
                                </a>
                            </li>
                            
                        </ul>
                        
                        
                        
                        <!-- end transactional -->
                        </div>
                   		</li>
                   </ul>
                   
                   <ul>
                   
                   	<li class="sidebar-menu-item sidebar-dropdown">
                    <a href="javascript:void(0)" class="">
                        <i class="menu-icon fas fa-address-book"></i>
                        <span class="menu-title">Phone-Book</span>
                    </a>
                    <div class="sidebar-submenu ">
                        <ul>
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">My Groups</span>
                                </a>
                            </li>
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Import Contacts</span>
                                </a>
                            </li>
                            
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Export Contacts</span>
                                </a>
                            </li>
                           
                            
                        </ul>
                    </div>
                </li>
                   </ul>
                   
                   
                   <ul>
                   
                   	 <li class="sidebar-menu-item sidebar-dropdown">
                    <a href="javascript:void(0)" class="">
                        <i class="menu-icon far fa-chart-bar"></i>
                        <span class="menu-title">Reports</span>
                    </a>
                    <div class="sidebar-submenu ">
                        <ul>
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Campaign Report</span>
                                </a>
                            </li>
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Delivery Report</span>
                                </a>
                            </li>
                            
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Schedule Report</span>
                                </a>
                            </li>
                            
                             <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Archive Report</span>
                                </a>
                            </li>
                            
                             <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Credit History</span>
                                </a>
                            </li>
                            
                             <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Delivery Statistics</span>
                                </a>
                            </li>
                   
                   </ul>
                   </div>
                   </li>
                   </ul>
                   
                   <ul>
                   		<li class="sidebar-menu-item sidebar-dropdown">
                    <a href="javascript:void(0)" class="">
                        <i class="menu-icon fa fa-archive"></i>
                        <span class="menu-title">Application</span>
                    </a>
                    <div class="sidebar-submenu ">
                        <ul>
                            <li class="sidebar-menu-item  ">
                                <a href="/changepassword" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Change Password</span>
                                </a>
                            </li>
                            <li class="sidebar-menu-item  ">
                                <a href="#" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Service Support</span>
                                </a>
                            </li>
                            
                        
                           
                            
                        </ul>
                    </div>
                </li>
                   
                   </ul>
                   <ul>
                   
                   		 <li class="sidebar-menu-item sidebar-dropdown">
                    <a href="javascript:void(0)" class="side-menu--open">
                        <i class="menu-icon fas fa-wrench"></i>
                        <span class="menu-title">Settings</span>
                    </a>
                     <div class="sidebar-submenu sidebar-submenu__open ">
                        <ul>
                            <li class="sidebar-menu-item  ">
                                <a href="/manageSignature" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Manage Signature</span>
                                </a>
                            </li>
                            <li class="sidebar-menu-item active ">
                                <a href="/blackList" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Blacklist Numbers</span>
                                </a>
                            </li>
                            
                    
                    </ul>
                    </div>
                </li>
                   </ul>
                   
                   </div>
                  
                  
                   </li>
                   </ul>
               
             

          
             
             
             
             
             
      
               
            
           <!--End side bar --> 

                
        </div>
    </div>
</div>
<!-- sidebar end -->        <nav class="navbar-wrapper active">
    <button class="res-sidebar-open-btn"><i class="las la-bars"></i></button>
    <form class="navbar-search">
      <button type="submit" class="navbar-search__btn">
        <i class="las la-search"></i>
      </button>
      <input type="search" name="navbar-search__field" id="navbar-search__field" placeholder="Search your products">
      <button type="button" class="navbar-search__close"><i class="las la-times"></i></button>
    </form>
    <div class="navbar navbar-expand-md">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span>Menu</span>
      </button>
    
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
       
          
          <ul class="navbar-nav navbar-right">
                        <li id="liSMS" class="dropdown open">
                            <a name="SMS" class="nav-link navbar-avatar has-icon" href="javascript:__doPostBack(&#39;ctl00$ctl25&#39;,&#39;&#39;)">
                                <i class="fa fa-envelope" style="color:black;"></i>
                                <span class="hidden-sm-down menu-caption" style="color:black;">&nbsp;SMS</span>
                            </a>
                        </li>
                        
                        <li id="liMissCall" class="dropdown">
                            <a name="MissCall" class="nav-link navbar-avatar" href="javascript:__doPostBack(&#39;ctl00$ctl29&#39;,&#39;&#39;)">
                                <i class="fa fa-phone-square" style="color:black;"></i>
                                <span class="hidden-sm-down menu-caption" style="color:black;">&nbsp;Miss Call</span>
                            </a>
                        </li>
                        
                         <li id="liPlugins" class="dropdown">
                            <a name="Plugin" class="nav-link navbar-avatar" href="javascript:__doPostBack(&#39;ctl00$ctl30&#39;,&#39;&#39;)">
                                <i class="fa fa-puzzle-piece" style="color:black;"></i>
                                <span class="hidden-sm-down menu-caption" style="color:black;">&nbsp;Plugin</span>
                            </a>
                        </li>
                        <li id="liAPI" class="dropdown">
                            <a name="API" class="nav-link navbar-avatar" href="javascript:__doPostBack(&#39;ctl00$ctl31&#39;,&#39;&#39;)">
                                <i class="fa fa-code" style="color:black;"></i>
                                <span class="hidden-sm-down menu-caption" style="color:black;">&nbsp;API</span>
                            </a>
                        </li>
                         <li id="liUsermanual" class="dropdown">

                               
                            <a href="../UserManual/UserGuide.pdf" name="Manual" class="nav-link navbar-avatar">
                             
                          
                            <i class="fas fa-address-book" style="color:black;"></i> <span id="txtblink" class="hidden-sm-down menu-caption" style="color:black;">&nbsp; User Manual</span> 
                            </a>
                        </li>
                        </ul>
                        
      </div>
    </div>
    <div class="navbar__right">
      <ul class="main-menu d-flex flex-wrap align-items-center">
        <li class="dropdown">
          <button type="button" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
            <span class="navbar-user">
              <span class="navbar-user__thumb"><img src="assets/images/default.png" alt="image"></span>
              <span class="icon"><i class="las la-chevron-circle-down"></i></span>
            </span>
          </button>
          <div class="dropdown-menu dropdown-menu--sm p-0 border-0 box--shadow1 dropdown-menu-right">
         
               <a href="#" class="dropdown-menu__item d-flex align-items-center px-3 py-2">
              <i class="dropdown-menu__icon fas fa-globe"></i>
              <span class="dropdown-menu__caption">worldtone</span>
            </a>
            
               <a href="#" class="dropdown-menu__item d-flex align-items-center px-3 py-2">
              <i class="dropdown-menu__icon fas fa-bullhorn"></i>
              <span class="dropdown-menu__caption">Promotional</span>
            </a>
           
           
            <a href="#" class="dropdown-menu__item d-flex align-items-center px-3 py-2">
             <i class="dropdown-menu__icon fas fa-file-invoice-dollar"></i>
             <span class="dropdown-menu__caption">Transactinoal</span>
           </a>
           
            <a href="#" class="dropdown-menu__item d-flex align-items-center px-3 py-2">
             <i class="dropdown-menu__icon fa fa-phone-square"></i>
             <span class="dropdown-menu__caption"> Miss Call</span>
           </a>
           
           <a href="#" class="dropdown-menu__item d-flex align-items-center px-3 py-2">
             <i class="dropdown-menu__icon fa fa-phone" aria-hidden="true"></i>
             <span class="dropdown-menu__caption"> Voice Call</span>
           </a>
           
            <a href="#" class="dropdown-menu__item d-flex align-items-center px-3 py-2">
             <i class="dropdown-menu__icon fa fa-user"></i>
             <span class="dropdown-menu__caption"> Profile</span>
           </a>
              <a href="/logout" class="dropdown-menu__item d-flex align-items-center px-3 py-2">
              <i class="dropdown-menu__icon las la-sign-out-alt"></i>
              <span class="dropdown-menu__caption">Logout</span>
            </a>
                      </div>
        </li>
      </ul>
    </div>
  </nav> -->
<!-- navbar-wrapper end -->

        <div class="body-wrapper active">
            <div class="bodywrapper__inner">

                <div class="row align-items-center mb-15 justify-content-between">
    <div class="col-lg-6 col-sm-6">
        <h6 class="page-title">Compose New Message
</h6>

  </div>
    <div class="col-lg-6 col-sm-6 text-sm-right mt-sm-0 mt-3">
            </div>
</div>

                    <div class="row mb-none-30">


 
                
<div class="container">
    
        <div class="row">
       
            <div class="col-lg-6 mb-4">
             <form:form action="/sendsms" modelAttribute="message" method="POST">
                <div class="card">
                    <img class="card-img-top" src="" alt="">
  
                    <div class="card-body">
                   
                        <h5 class="card-title">Compose New Message</h5>
                       <div class="form-group">
                            <label>Message Channel</label>
                            <select name="msgChannel"  id="type" class="form-control" style="width: 100%; height: 40px;">
	<option selected="selected" value="Transactional">Transactional</option>
	<option value="Promotional">Promotional</option>

</select>
                        </div>
                        
                        <div class="form-group">
                            <label>Message Route</label>
                            <select name="msgRoute" class="form-control" data-placeholder="Select a routing" style="width: 100%; height: 40px;">
	<option value="0">Select Gateway</option>
	<option selected="selected" value="4">High Priority</option>
</select>
                        </div>
                        
                        <div class="form-group">
                            <label>SenderID</label>
                            

                            <select name="senderId" id="size" data-placeholder="Select a senderid" class="form-control" style="width: 100%; height: 40px;">
							<option value="">TRANS</option>
</select>
                        </div>
                        
                        <div class="form-group">
                            <label>Campaign Name</label>
                            <input name="campaignName" type="text" class="form-control" placeholder="Campaign Name" value="" required="required">
                        </div>
                        
                        <div class="form-group">
                            <label>
                                Numbers &nbsp;<small style="font-size: 14px;">(<label id="cphContent_lblContactCount"><div class="cr_keywords"></div></label>)
                                </small>
                            </label>
                            <div class="box-body no-padding">
                                <div>

</div>
                            </div>
                            <textarea name="mobileNumber" id="keywords" placeholder="Enter recipient numbers in comma separated, e.g. 919999999999,918888888888,911234567890" rows="5" class="form-control" style="height: 70px"></textarea>
                        </div>
                        
                        <div class="form-group">
                            <label>Message Text </label>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <span id="cphContent_lblDLTTemplateId">DLTTemplateId : NA </span>
                            <input type="hidden" name="ctl00$cphContent$hfDLTTemplateId" id="cphContent_hfDLTTemplateId">
                            &nbsp;&nbsp;&nbsp;
                            <span id="cphContent_lblTelemarketerId">TelemarketerId : NA </span>
                            <input type="hidden" name="ctl00$cphContent$hfTelemarketerId" id="cphContent_hfTelemarketerId">
                            <div class="box box-solid">
                                <!-- /.box-header -->
                                <div id="dvMessageText" class="box-body no-padding">
                                    <select name="messageLang" id="cphContent_languageSelection" class="form-control" onchange="ReLoadLangControl(this);" data-placeholder="English" style="width: 100%; height: 40px;">
	<option selected="selected" value="en">ENGLISH</option>
	<option value="hi">HINDI</option>
	<option value="bn">BENGALI</option>
	<option value="gu">GUJARATI</option>
	<option value="kn">KANNADA</option>
	<option value="ml">MALAYALAM</option>
	<option value="mr">MARATHI</option>
	<option value="ne">NEPALI</option>
	<option value="or">ORIYA</option>
	<option value="pa">PUNJABI</option>
	<option value="sa">SANSKRIT</option>
	<option value="si">SINHALESE</option>
	<option value="ta">TAMIL</option>
	<option value="te">TELUGU</option>
	<option value="ur">URDU</option>
</select>
                                    <textarea name="smsmessage" maxlength="1683" placeholder="Message text" class="form-control" style="height: 120px; line-height: 1.5em; font-family: Arial, Helvetica, sans-serif; font-size: 14px;" dir="ltr" required="required"></textarea>
                                    <label id="lblCounterInfo" style="color: green;">0&nbsp;Characters Used&nbsp;&nbsp;&nbsp;&nbsp; Count 1</label>
                                    <a href="#dvTemplateSelection" id="aTemplateSelection" data-toggle="modal" data-target="#tabselect" class="link-black float-right"><i class="far fa-clipboard"></i>&nbsp;Select Template </a>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        
                        <div class="btn-group pull-left">
                            <button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Settings
                            </button>
                            <div class="dropdown-menu" style="will-change: transform;">
                                <ul style="padding-left: 9px;">
                                    <li>
                                        <label>
                                            <input name="ctl00$cphContent$chkFlashSms" type="checkbox" id="cphContent_chkFlashSms" class="flat-red">
                                            Flash SMS                       
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input name="ctl00$cphContent$chkRemoveDuplicate" type="checkbox" id="cphContent_chkRemoveDuplicate" class="flat-red" checked="checked">
                                            Remove Duplicate                       
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input name="ctl00$cphContent$chkRemoveBlackList" type="checkbox" id="cphContent_chkRemoveBlackList" class="flat-red" checked="checked">
                                            Remove BlackList                       
                                        </label>
                                    </li>
                                </ul>
                            </div>
                        </div>
  
                       <label class="pull-right">
                            <input name="ctl00$cphContent$chkSaveAsDraft" type="checkbox" id="cphContent_chkSaveAsDraft" class="flat-red">
                            Save As Draft                       
                        </label>
                    </div>
                    
                    <div class="card-footer">
                        <div class="row">
                            <div class="hide" style="z-index: 1;" id="dvSpinner">
                                <i class="fa fa-spinner fa-pulse fa-2x fa-fw text-danger" style="font-size: 30px;"></i>
                                <span class="font-light text-danger progress-text" style="font-size: 20px;">Campaign is Processing Please wait...</span>
                            </div>
                            <div class="pull-left" id="btnBox">
                                <input type="submit" class="mysubmit" value="Send Now">
                          
                                
                                &nbsp;
                    Or&nbsp;
                         <a href="#dvSchedukeSms" data-toggle="modal" id="sendit" data-target="#sendlater" class="btn btn-icon icon-left btn-light"><i class="fa fa-calendar"></i>&nbsp;&nbsp;Schedule For Later</a>
                            </div>
                        </div>
                    </div>
                </div>
                  </form:form>
            </div>
         
    <%--         <!-- second card start -->
            <div class="col-lg-6 mb-4">
                <div class="card">
                    
  
                    <div class="card-body">
                       
                       <div id="accordion" class="myaccordion">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
         Groups
          <span class="fa-stack fa-sm">
            <i class="fas fa-circle fa-stack-2x"></i>
            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
          </span>
        </button>
      </h2>
    </div>
    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
      <div class="card-body">
        <input type="submit" class="mybutton1" value="Select Group">
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          File
          <span class="fa-stack fa-2x">
            <i class="fas fa-circle fa-stack-2x"></i>
            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
          </span>
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
        <form>
        	<input type="file" style="padding: 0; width: 190PX;">
        	
        	<input type="submit" class="mybutton2" value="Upload">
            <input type="submit" class="mybutton3" value="Proceed">
            <P>Max. 1MB (Upload CSV, XLS, XLSX file only.)</P>
        </form>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Draft
          <span class="fa-stack fa-2x">
            <i class="fas fa-circle fa-stack-2x"></i>
            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
          </span>
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
      <div class="card-body">
        <ul>
         
        </ul>
      </div>
    </div>
  </div>
  
  <div class="card">
    <div class="card-header" id="headingFour">
      <h2 class="mb-0">
        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
          Signature
          <span class="fa-stack fa-2x">
            <i class="fas fa-circle fa-stack-2x"></i>
            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
          </span>
        </button>
      </h2>
    </div>
    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
      <div class="card-body">
        <ul>
          <li>Astrophysics</li>
          <li>Informatics</li>
          <li>Criminology</li>
          <li>Economics</li>
        </ul>
      </div>
    </div>
  </div>
  
  <div class="card">
    <div class="card-header" id="headingFive">
      <h2 class="mb-0">
        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
          Mobile Preview
          <span class="fa-stack fa-2x">
            <i class="fas fa-circle fa-stack-2x"></i>
            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
          </span>
        </button>
      </h2>
    </div>
    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
      <div class="card-body">
        <ul>
          <li>Astrophysics</li>
          <li>Informatics</li>
          <li>Criminology</li>
          <li>Economics</li>
        </ul>
      </div>
    </div>
  </div>
  
  
</div>
                       
                    </div>
                </div>
            </div>
            
            <!-- second card ends --> --%>
        </div>
    </div>

            </div><!-- bodywrapper__inner end -->
        </div><!-- body-wrapper end -->
    </div>


<!-- model start -->
<!-- Modal -->
<div class="modal fade" id="tabselect" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">My Tempaltes</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <i class="fa fa-close" style="font-size:28px;color:red"></i>
        </button>
      </div>
      <div class="modal-body">
        <li><a href="javascript:;">No template found!</a></li>
        
        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>Select</th>
                                                <th>Template Name</th>
                                                <th>Template</th>
                                                <th>DLTTemplateId</th>
                                                <th>TelemarketerId</th>
                                            </tr>
                                        </thead>
                                        <tbody id="chpModalContent_tbodyTemplate">
</tbody>
                                    </table>
      </div>
    </div>
  </div>
</div>
<!-- Model end -->



<c:set var="now" value="<%=new java.util.Date()%>" />
<fmt:formatDate var="fmtDate" value="${now}" pattern="dd-MM-yyyy"/>
<!-- model second start -->
<!-- Modal -->
<div class="modal fade" id="sendlater" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Schedule Sms Later</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <i class="fa fa-close" style="font-size:28px;color:red"></i>
        </button>
      </div>
      <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
    <input type="text" name="date" data-language="en" class="datepicker-here form-control"
     data-position='bottom left' placeholder="${fmtDate}">
    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>


                        </div>
                        <div class="col-md-6">
                             <div class="form-group">
    <input type="text" name="time" class="timepicki-input form-control"
      placeholder="${fmtDate}">
    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>
                            <!-- /.form group -->
                        </div>
                    </div>
                </div>
                
                <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Schedule Sms Later</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
         
        </button>
      </div>
      </div>
    </div>
  </div>

<!-- Model end -->
<script type="text/javascript">

$("#accordion").on("hide.bs.collapse show.bs.collapse", e => {
	  $(e.target)
	    .prev()
	    .find("i:last-child")
	    .toggleClass("fa-minus fa-plus");
	});
</script>



<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.14/js/jquery.dataTables.min.js"></script>

 <!-- jQuery library -->
  <!-- jQuery library -->
 <script src="assets/userpanel/js/vendor/jquery-3.5.1.min.js"></script>
 <!-- bootstrap js -->
 <script src="assets/userpanel/js/vendor/bootstrap.bundle.min.js"></script>
 <!-- bootstrap-toggle js -->
 <script src="assets/userpanel/js/vendor/bootstrap-toggle.min.js"></script>
 <!-- slimscroll js for custom scrollbar -->
 <script src="assets/userpanel/js/vendor/jquery.slimscroll.min.js"></script>
 <!-- custom select box js -->
 <script src="assets/userpanel/js/vendor/jquery.nice-select.min.js"></script>
 <!-- code preview js -->
 <script src="assets/userpanel/js/vendor/prism.js"></script>
 <!-- seldct 2 js -->
 <script src="assets/userpanel/js/vendor/select2.min.js"></script>
 
 <script src="assets/userpanel/js/vendor/lightcase.js"></script>
  
 <!-- data-table js -->
 <script src="assets/userpanel/js/vendor/datatables.min.js"></script>
<!-- apex chart js -->
<script src="assets/userpanel/js/vendor/apexcharts.min.js"></script>
<script src="assets/admin/js/nicEdit.js"></script>
<!-- apex chart init -->

<!-- main js -->
<script src="assets/userpanel/js/app.js"></script>
<script src="assets/userpanel/js/vendor/datepicker.min.js"></script>
<script src="assets/userpanel/js/vendor/datepicker.en.js"></script>
<script src="assets/userpanel/js/vendor/jquery-timepicky.js"></script>
<script>
    'use strict'
    bkLib.onDomLoaded(function() {
        $( ".nicEdit" ).each(function( index ) {
            $(this).attr("id","nicEditor"+index);
            new nicEditor({fullPanel : true}).panelInstance('nicEditor'+index,{hasPanel : true});
        });
    });
</script>

<script type="text/javascript">

$(document).ready(function () {
	  $("#type").change(function () {
	     switch($(this).val()) {
	        case 'Transactional':
	            $("#size").html("<option value='trans'>TRANS</option>");
	            break;
	        case 'Promotional':
	            $("#size").html("<option value='promo'>PROMO</option>");
	            break;
	     }
	  });
	});
</script>


<script type="text/javascript">

$("#keywords").on("keyup change input paste", function(e) {
    var content = $("#keywords").val();
    var words = content.split(",").filter(item => item);
    var num_words = words.length;
      $(".cr_keywords").text(num_words);
  });
</script>
   
    <script>
'use strict';
$('.datepicker-here').datepicker();
</script>

<script>
'use strict';
$('.timepicki-input').timePicky();
</script>
<script src="js/dbtab.js"></script>
  <script type="text/javascript">toastFunction()</script>
</body>
</html>