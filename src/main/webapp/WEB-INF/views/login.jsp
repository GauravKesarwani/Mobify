<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if IE 8]> 				 
<html class="no-js lt-ie9" lang="en" > <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en" > <!--<![endif]-->

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>MobileAppStore Login</title>

  
  <link rel="stylesheet" href="resources/css/foundation.css">
    <script src="resources/js/vendor/custom.modernizr.js"></script>

</head>
<body>


	    <div class="sticky">
                <nav class="top-bar">
                        <ul class="title-area">
                                <li class="name">
                                        <h1><a style="color:#0d95ca" href="#">MobileAppStore</a></h1>
                                </li>
                        </ul>
                        <section class="top-bar-section">
                                <ul class="right">
                                        <li>
                                                <a style="color:#0d95ca" href="${pageContext.request.contextPath}/register"  onclick=createuser()>Create Account</a>
                                        </li>
                                </ul>
						</section>
				</nav>
			</div>
	
	<h2><div class="row">
	<div class="center">
You're more powerful than you think!!</div></h2>
	
<iframe width="1100" height="600"

src="http://images.apple.com/media/us/iphone-5s/2014/tv-spots/powerful/iphone5s-powerful-cc-us-20140422_848x480.mp4">
</iframe>	
		
		
		<div class="right">
		<div class="panel">
			<div class="row">  
		<form:form  modelAttribute="Variants" action="verify_user" method="post">
		
						<p>
						<label for="tenantID">Username</label>  
						<input id="tenantID" type="text" name="tenantID" placeholder="Username"required>
						</p>
						<p>
						<label for="password">Password</label>  
						<input id="password" type="password" name="password" placeholder="Password"required>
						</p>
						<p><button class="small button" type="submit">Login</button></p>
							
		</form:form>
			</div>
		</div>
	</div>
	
	

	
	</body>


  

</html>






