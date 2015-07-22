<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
       <link rel="stylesheet" href="css/bootstrap.responsive.css">
       <script>
         $(function () {
         $('#myTab a:last').tab('show');
                        });
       </script>
   </head>
   <body>
     <div class="well">
         <h1 align="center">Maker-Checker</h1>
     </div>
     <div class="container-fluid">
         <div class="row-fluid">
            <div class="span6">
                 <div class="tabbable tabbable-bordered">
                    <ul class="nav nav-tabs" id="myTab">
                      <li class="active"><a href="#about" data-toggle="tab">About Us</a></li>
                      <li><a href="#feature" data-toggle="tab">Features</a></li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane active" id="about">
                          <div>
                               <div class="span11">
                                 <div id="myCarousel" class="carousel slide">
                                   <div class="carousel-inner">
                                     <div class="item active">
                                        <img alt="" src="img/Winter.jpg">
                                        <div class="carousel-caption">
                                          <h4>First Thumbnail label</h4>
                                          <p>Cras justo odio, dapibu...es vehicula ut id elit.</p>
                                       </div>
                                    </div>
                                    <div class="item">
                                       <img alt="" src="img/Sunset.jpg">
                                       <div class="carousel-caption">
                                          <h4>Second Thumbnail label</h4>
                                          <p>Cras justo odio, dapibu...es vehicula ut id elit.</p>
                                       </div>
                                   </div>
                                   <div class="item">
                                       <img alt="" src="img/Blue hills.jpg">
                                       <div class="carousel-caption">
                                         <h4>Third Thumbnail label</h4>
                                         <p>Cras justo odio, dapibu...es vehicula ut id elit.</p>
                                       </div>
                                   </div>
                                 </div>
                                 <a class="left carousel-control" data-slide="prev" href="#myCarousel"><</a>
                                 <a class="right carousel-control" data-slide="next" href="#myCarousel">></a>
                             </div>
                           </div>
                        </div>
                     </div>
                     <div class="tab-pane" id="feature">
                        <div>
                         <div id="accordion2" class="accordion">
                           <div class="accordion-group">
                             <div class="accordion-heading">
                                 <a class="accordion-toggle" href="#collapseOne" data-parent="#accordion2" data-toggle="collapse"> Coll...tem #1 </a>
                             </div>
                             <div id="collapseOne" class="accordion-body collapse" style="height: 0px;">
                                 <div class="accordion-inner"> Anim...e VHS. </div>
                             </div>
                          </div>
                          <div class="accordion-group">
                            <div class="accordion-heading">
                              <a class="accordion-toggle" href="#collapseTwo" data-parent="#accordion2" data-toggle="collapse"> Coll...tem #2 </a>
                            </div>
                            <div id="collapseTwo" class="accordion-body collapse" style="height: 0px;">
                               <div class="accordion-inner"> Anim...e VHS. </div>
                            </div>
                          </div>
                        </div>
                      </div>
                   </div>
                </div>
            </div>
            <div class="span5">
            </div>
          </div>
          <div class="span1"></div>
          <div class="span4"><br><br>
             <div id="accordion2" class="accordion">
               <div class="accordion-group">
                 <div class="accordion-heading">
                    <a class="accordion-toggle" href="#mukul" data-parent="#accordion2" data-toggle="collapse">
                       LOGIN HERE           
                    </a>
                 </div>
                 <div id="mukul" class="accordion-body collapse" style="height: auto;">
                    <div class="accordion-inner">
                        <form:form modelAttribute="user" method="POST"  class="well form-horizontal" id="commentForm">
                    <div class="control-group">
                        LoginID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <form:input path="userId" id="input01" placeholder="Enter loginId..." class="required input-small" minlength="3"/>
                       <form:errors path="userId"/>
                    </div>
                    <div class="control-group">
                        Password&nbsp;&nbsp;
                        <form:password id="input02" path="password" placeholder="Enter password..." class=" required input-small" minlength="6"/>
                        <form:errors path="password"/></div>
                        <form:checkbox path="remember" /> Remember Me<br><br>
                         <button type="submit" class="btn">Sign in</button>
                         </form:form>
                  </div>
                 <%String msg="";
                   msg=(String)request.getAttribute("msg");
                   if(msg!=null)
                     {
                 %>
                  <div class="alert alert-error fade in span11">
                  <button class="close" data-dismiss="alert" type="button">x</button>
                  <strong><%=msg%></strong>
                  </div>
                <%} %>
             </div>
           </div>
           <div class="accordion-group">
              <div class="accordion-heading">
                <a class="accordion-toggle" href="#MK2" data-parent="#accordion2" data-toggle="collapse">LOGIN CRITERIA </a>
              </div>
              <div id="MK2" class="accordion-body collapse" style="height: 0px;">
                  <div class="accordion-inner"><p class="well">YOU MUST BE AN AUTHORISED USER OF THIS PORTAL.KINDLY GET YOUR LoginID AND PASSWORD FROM THE ADMINISTRATOR.</p>  </div>
              </div>
          </div>
        </div>
        <div class="progress progress-striped active">
           <div class="bar" style="width: 50%;"></div>
        </div>
     </div>
    </div>
     <legend></legend>
     <footer class="footer">
     <p class="pull-right">
<a href="#">Back to top</a>
</p>
<p>
Designed and built with all the love and patience in the world
by&nbsp;
Mukul&nbsp;.
</p>
<p>
Extended with pride by
<a target="_blank" href="http://twitter.com/ArnoldDaniels">@ArnoldDaniels</a>
of
<a target="_blank" href="http://www.jasny.net/">Jasny Software solutions</a>
.
</p>
<p>
Code licensed under the
<a target="_blank" href="http://www.apache.org/licenses/LICENSE-2.0">Apache License v2.0</a>
. Documentation licensed under
<a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>
.
</p>
<p>
Icons from
<a href="http://glyphicons.com">Glyphicons Free</a>
, licensed under
<a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>
.
</p>
<p>
<a href="http://somerandomdude.com/work/iconic/">Iconic icon set font</a>
, licensed under the
<a href="http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL">SIL Open Font License</a>
.
</p>
</footer>


<script src="js/jquery.js"></script>

<script src="js/bootstrap.js"></script>
<script src="js/bootstrap-tab.js"></script>
<script src="js/bootstrap-corosoul.js"></script>
<script src="js/bootstrap-collapse.js"></script>
<script src="js/bootstrap-alert.js"></script>
<script src="js/application.js"></script>
<script src="js/file1.js"></script>
<script type="text/javascript" src="js/widget.js"></script>
<script src="js/jquery.validate.js"></script>
<!-- <script type="text/javascript">
$(document).ready(function(){
$("#commentForm").validate();
			}); </script> -->
<script src="js/validations.js"></script>
			


</div>
</body>
</html>