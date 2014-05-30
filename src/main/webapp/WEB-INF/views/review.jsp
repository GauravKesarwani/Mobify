<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> 				 <html class="no-js lt-ie9" lang="en" > <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en" > <!--<![endif]-->

<head>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Reviews and Feedback</title>

  
  <link rel="stylesheet" href="resources/css/foundation.css">
  

  <script src="resources/js/vendor/custom.modernizr.js"></script>

</head>
<body>
<div class="sticky">
                <nav class="top-bar">
                        <ul class="title-area">
                                <li class="name">
                                        <h1><a style="color:#0d95ca" href="#">MobileApps</a></h1>
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
			<h2>Product Reviews and Feedback</h2>
			<hr />
		</div>
	</div>
<form:form modelAttribute="review" action="save_review" method="post">
	<div class="row">
		<div class="large-8 columns">
			<p>Provide reviews of the product</p>

			<!-- Grid Example -->
			<div class="row">
				<div class="large-12 columns">
					<div id= "User Review" class="panel">
				
						First name: <form:input type="text" name="firstName" path="firstname"/><br>
						Last name: <form:input type="text" name="lastName" path ="lastname"/><br>
						E-mail Id: <form:input type="email" name="email" path="email"/><br>
						Message: <form:textarea type="text" rows ="10" cols="20" name="Message" path="message"/><br>
						
						<p><button class="small button" type = "submit">Submit</button></p>
						
					
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
