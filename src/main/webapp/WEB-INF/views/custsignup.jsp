<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> 				 <html class="no-js lt-ie9" lang="en" > <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en" > <!--<![endif]-->

<head>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Customer SignUp</title>

  
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
                                                <a style="color:#0d95ca" href="#" data-reveal-id="event" onclick=createevent()></a>
                                        </li>
										 <li>
                                                <a style="color:#0d95ca" href="#" data-reveal-id="login" onclick=login()>Contact</a>
                                        </li>
                                </ul>
						</section>
				</nav>
			</div>

	<div class="row">
		<div class="large-12 columns">
			<h2>First Time Customers SignUp</h2>
			<hr />
		</div>
	</div>

		<form:form commandName="customer" action="register_cust" method="post">

	<div class="row">
		<div class="large-8 columns">
			<p>Customer SignUp</p>

			<!-- Grid Example -->
			<div class="row">
				<div class="large-12 columns">
					<div id= "Customer SignUp" class="panel">
				
						First name: <form:input type="text" name="firstName" path="firstname"/><br>
						Last name: <form:input type="text" name="lastName" path ="lastname"/><br>
						E-mail: <form:input type="email" name="email" path="emailid"/><br>
						User name: <form:input type="text" name="firstName" path="username"/><br>
						Password: <form:input type="password" path="Password"/><br>
						Address: <form:input type="text" path="address"/><br>
						Phone: <form:input type="text" path="phone"/><br>

						
						<p><button class="small button" type = "submit">Register</button></p>
						
					
					</div>
				</div>
			</div>
		</div>
	</div>

  </form:form>
  
  <script src="resources/js/foundation.min.js"></script>
  
  <script>
    $(document).foundation();
 </script>
</body>
</html>
