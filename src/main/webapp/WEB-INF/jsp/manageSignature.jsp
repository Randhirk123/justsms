<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="uri" value="${req.requestURI}" />

<!-- meta tags and other links -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Manage signature</title>
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
<link rel="stylesheet" href="css/snackbar.css">
   <script src="js/sticky.js"></script>
  <link rel="stylesheet" href="assets/additional/bootstrap-fileinput.css">
  <link rel="stylesheet" href="assets/additional/intlTelInput.css">
  
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
                   <div class="sidebar-submenu">
                   <ul>
                   		<li class="sidebar-menu-item sidebar-dropdown">
                   		 <a href="javascript:void(0)" class="">
                        <i class="menu-icon fas fa-envelope"></i>
                        <span class="menu-title">Message</span>
                        </a>
                        <div class="sidebar-submenu">
                         <ul>
                         
                            <li class="sidebar-menu-item  ">
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
                            <li class="sidebar-menu-item active ">
                                <a href="/manageSignature" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">Manage Signature</span>
                                </a>
                            </li>
                            <li class="sidebar-menu-item  ">
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
        <h6 class="page-title">Manage Signature
</h6>
<c:if test="${message ne null}">
        	 <div id="snackbar">${message}</div>
        </c:if>
    </div>
    <div class="col-lg-6 col-sm-6 text-sm-right mt-sm-0 mt-3">
            </div>
</div>

                    <div class="row mb-none-30">
<div class="card-body">
      <form:form class="form-inline" action="/manageSignature" modelAttribute="sign" method="POST" >
  <div class="form-group">
    <label class="sr-only">Email</label>
    <p class="form-control-static">Signature</p>
  </div>
  <div class="form-group">
    <label for="inputPassword2" class="sr-only">Password</label>
    <input type="text" class="form-control" id="signature" name="signature" placeholder="Enter your signature">
  </div>
  <button type="submit" class="btn btn-primary">Save</button>
</form:form>
</div>

<c:if test="${not empty mgsgList}">
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Date</th>
      <th scope="col">Signature</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${mgsgList}" var="element">
  	<tr>
  	<td>${element.created_at}</td>
  	<td>${element.signature}</td>
  	<td><i class="fa fa-trash-o" style="font-size:48px;color:red"></i><a onclick="return confirm('Are you sure to delete this item');" href="/delete/${element.id}">
                      Delete
                                                </a></td>
  	</tr>
  </c:forEach>
    
   
  </tbody>
</table>

</c:if>

  
  



        </div>


            </div><!-- bodywrapper__inner end -->
        </div><!-- body-wrapper end -->
    </div>





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

<script>
    'use strict'
    bkLib.onDomLoaded(function() {
        $( ".nicEdit" ).each(function( index ) {
            $(this).attr("id","nicEditor"+index);
            new nicEditor({fullPanel : true}).panelInstance('nicEditor'+index,{hasPanel : true});
        });
    });
</script>


    <script type="text/javascript">toastFunction()</script>

</body>
</html>