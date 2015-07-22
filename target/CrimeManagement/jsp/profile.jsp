<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="base.model.User"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="errors" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maker-Checker</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/docs.css">
<link rel="stylesheet" href="css/bootstrap.responsive.css">
<script type="text/javascript">
('.fileupload').fileupload('show');
</script>
   <script>
   $(function () {
   $('#myTab a:last').tab('show');
     });
   </script>
</head>
<body>
<div>
<%User user=(User)request.getAttribute("user"); %>
<div class="navbar navbar-fixed-top" style="background-color: #E5EECC;">
<div class="navbar-inner">
<div class="container-fluid">
<a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</a>
<a class="brand">Welcome <%=user.getName()%> </a>
<div class="btn-group pull-right">
<a class="btn dropdown-toggle" href="#" data-toggle="dropdown">
<i class="icon-user"></i>
<%=user.getUserId()%>
<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li>
<a href="#">Profile</a>
</li>
<li class="divider"></li>
<li>
<a href="#">Sign Out</a>
</li>
</ul>
</div>
<div class="nav-collapse">
<ul class="nav">
<li class="active">
<a href="#">Home</a>
</li>
<li>
<a href="#">Contact</a>
</li>
</ul>
</div>
</div>
</div>
</div></div>
<div class="container-fluid">
  <div class="row-fluid">
 <div class="span3">
 <div class="tabbable">
<ul class="nav nav-list bs-docs-sidenav affix" id="myTab">
<li class="active">
<a data-toggle="tab" href="#add">
ADD RECORD
</a>
</li>
<li class="">
<a data-toggle="tab" href="#view">
VIEW RECORDS
</a>
</li>
<li class="">
<a data-toggle="tab"  href="#modify">
MODIFY RECORD
</a>
</li>
<li class="">
<a data-toggle="tab"  href="#delete">
DELETE RECORD
</a>
</li>
</ul>
</div>
</div>
<!-- <div class="span1"></div> -->
<div class="span8">
  <div class="tab-content">
   <div class="tab-pane active" id="add">
   <form:form modelAttribute="customer" action="add.htm" enctype="multipart/form-data" class="form-horizontal bordered">
   <div>
   
     <legend>Personal Details</legend>
   </div>
   <div class="container-fluid">
     <div class="row-fluid">
       
       <div class="span6"> 
    
    <div class="control-group">
    <label class="control-label" for="customerCode">Customer Code</label>
    <div class="controls">
    <form:input path="customerCode" class="required" minlength="3" maxlength="100" id="customerCode" placeholder="Enter...."/>
    <form:errors path="customerCode" />
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="customerName">Customer Name</label>
    <div class="controls">
    <form:input path="customerName" class="required" lettersonly="true" minlength="3" maxlength="100"  id="customerName" placeholder="Name..."/>
    <form:errors path="customerName" />
    </div>
    </div>

    <div class="control-group">
    <label class="control-label" for="email">Email</label>
    <div class="controls">
    <form:input path="email" class="required email" id="email" placeholder="mk@gmail.com..."/>
    <form:errors path="email"/>
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="contactNumber">Contact Number</label>
    <div class="controls">
    <form:input path="contactNumber" placeholder="9999999999" class="required" digits="true" minlength="10" maxlength="10"  id="contactNumber"/>
    <form:errors path="contactNumber"/>
    </div>
    </div>
     <div class="control-group">
    <label class="control-label" for="contactPerson">Contact Person</label>
    <div class="controls">
    <form:input path="contactPerson" class="required" lettersonly="true" minlength="3" maxlength="100"   id="contactPerson" placeholder="Person..."/>
    <form:errors path="contactPerson"/>
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="flag">Flag</label>
    <div class="controls">
    <form:select path="flag" multiple="false" placeholder="Flag">
    <form:options items="${flagList}"/>
    </form:select>
    </div>
    </div>
    </div>
    <div class="span1"></div>
      <div  class="span5">
       <div class="fileupload fileupload-new" data-provides="fileupload">

<div class="fileupload-new thumbnail" style="max-width: 200px; max-height: 150px; line-height: 0px;">
<img src="img/lk.jpeg" height="75px" width="100px" >
</div>
<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 150px; max-height: 75px; line-height: 0px;"></div>
<div><span class="btn btn-file">

<span class="fileupload-new">Select image</span>
<span class="fileupload-exists">Change</span>
<form:input type="file" path="file"/>
<form:errors path="file"/> 
</span>
<a class="btn fileupload-exists" data-dismiss="fileupload" href="#">Remove</a>
</div>
</div><br>
       <div class="row-fluid"> 
  
        <div class="span2">DateOfBirth</div>
    
   <!--  <div class="span9"> -->
    <%-- <form:input  data-mask="99-99-9999" path="dateOfBirth" id="dob"/> --%>
    <div class="span3">
    <form:select path="month" multiple="false" placeholder="Month">
    <form:options items="${monthList}"/>
    </form:select>
    </div>
    <div class="span2"></div>
    <div class="span1">
        <form:select path="day" multiple="false" placeholder="Day">
    	<form:options items="${dayList}"/>
    	</form:select></div>
    <div class="span2"></div>
    <div class="span2">
        <form:select path="year" multiple="false" placeholder="Year">
    	<form:options items="${yearList}"/>
    	</form:select>
    </div><!-- <div class="span2"></div> -->
    
    <form:errors path="dateOfBirth"/></div>
     
   <!--  </div> --><br><div class="row-fluid">
            <div class="span3">Sex</div>
    <div class="span9">
    <form:select path="sex" multiple="false" placeholder="Sex">
    <form:options items="${sexList}"/>
    </form:select>
    </div></div><br>

   </div>

    
    </div>
    <legend>Address Details</legend>
    <div class="row-fluid">
      <div class="span6">
         <div class="control-group">
    <label class="control-label" for="add1">AddressLine 1</label>
    <div class="controls">
    <form:input path="address.add1" class="required" id="add1" placeholder="Enter...."/>
    <form:errors path="address.add1"/>
    </div>
    </div>
       <div class="control-group">
    <label class="control-label" for="add2">AddressLine 2</label>
    <div class="controls">
    <form:input path="address.add2" id="add2" placeholder="Enter...."/>
    </div>
    </div>
       <div class="control-group">
    <label class="control-label" for="zipCode">ZipCode</label>
    <div class="controls">
    <form:input path="address.zipCode" class="required" digits="true" minlength="6" maxlength="6" id="zipCode" placeholder="Enter...."/>
    <form:errors path="address.zipCode"/>
    </div>
    </div>
    </div>
      <div class="span1"></div>
      <div class="span5">
                  <div class="row-fluid">
    <div class="span3">Country</div>
    <div class="span9">
    <form:select path="address.country" multiple="false" placeholder="Country">
    <form:options items="${countryList}"/>
    </form:select>
    </div>
    </div><br>
                <div class="row-fluid">
    <div class="span3">State</div>
    <div class="span9">
    <form:select path="address.state" multiple="false" placeholder="State">
    <form:options items="${stateList}"/>
    </form:select>
    </div>
    </div>
    </div>
    </div>
    <legend></legend>
    <button type="submit" class="btn">Submit</button>
    <button type="reset" class="btn">Reset</button>
    
    </div>
    </form:form>
  </div>
   <div class="tab-pane" id="view">
   hii..view
   
   </div>
     <div class="tab-pane" id="modify">
   hii..modify
   
   </div>
      <div class="tab-pane" id="delete">
   hii..delete
   
   </div>
  
  
  
  </div>



</div>
</div>
 </div>
<script src="js/jquery.js"></script>

<script src="js/bootstrap.js"></script>
<script src="js/bootstrap-tab.js"></script>
<script src="js/bootstrap-corosoul.js"></script>
<script src="js/bootstrap-collapse.js"></script>
<script src="js/bootstrap-alert.js"></script>
<script src="js/bootstrap-inputmask.js"></script>
<script src="js/application.js"></script>
<script src="js/file1.js"></script>
<script type="text/javascript" src="js/widget.js"></script>
<script src="js/jquery.validate.js"></script>
<!-- <script type="text/javascript">
$(document).ready(function(){
$("#commentForm").validate();
			}); </script> -->
<script src="js/validations.js"></script>
			



</body>
</html>