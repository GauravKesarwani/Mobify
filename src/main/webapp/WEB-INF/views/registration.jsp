<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> 				 <html class="no-js lt-ie9" lang="en" > <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en" > <!--<![endif]-->

<head>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>User Registration</title>

  
  <link rel="stylesheet" href="resources/css/foundation.css">
  

  <script src="js/vendor/custom.modernizr.js"></script>

</head>
<body>

<div class="sticky">
                <nav class="top-bar">
                        <ul class="title-area">
                                <li class="name">
                                        <h1><a style="color:#0d95ca" href="#">Mobile Web Store</a></h1>
                                </li>
                        </ul>

                        <section class="top-bar-section">
                                <ul class="right">
                                        <li>
                                                <a style="color:#0d95ca" href="#" data-reveal-id="event" onclick=createevent()></a>
                                        </li>
										 <li>
                                                <a style="color:#0d95ca" href="#" data-reveal-id="login" onclick=login()>Log In</a>
                                        </li>
                                </ul>
						</section>
				</nav>
			</div>

	<div class="row">
		<div class="large-12 columns">
			<h2>User SignUp/ Registration</h2>
			<hr />
		</div>
	</div>
<form:form commandName="tenant" action="user_save" method="post">
			
	<div class="row">
		<div class="large-8 columns">
			<p>Enter your details to create an account</p>

			<!-- Grid Example -->
			
			<div class="row">
				<div class="large-12 columns">
					<div id= "User registration form" class="panel">
						<form:form commandName = "tenant" id="signupForm" action="user_save" method="POST">
						First Name: <form:input type="text" path="firstname"/><br>
						Last Name: <form:input type="text" path="lastname"/><br>
						User Name:&nbsp; <form:input type="text" path="username"/><br>
						Password: <form:input type="password" path="Password"/><br>
						Address: <form:input type="text" path="address"/><br>
						Phone: <form:input type="text" path="phone"/><br>
						Email: <form:input type="text" path="email"/><br>
						Tenant Company:&nbsp; <form:input type="text" path="tenantCompany"/><br>
						<p><button class="small button" type = "submit">Submit</button></p>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</form:form>

    <script type="text/javascript">	
	$.fn.serializeObject = function()
	{
		var o = {};
		var a = this.serializeArray();
			$.each(a, function() {
				if (o[this.name] !== undefined) {
				if (!o[this.name].push){
					o[this.name] = [o[this.name]];
				}
			o[this.name].push(this.value || '');
			} else {
					o[this.name] = this.value || '';
			}
		});
			return o;
	};

	$(document).ready(function() {
		$('#signupForm').Submit(function() {
		// $('#result').text(JSON.stringify($('#signupForm').serializeObject()));   
		return false;
		});
	});
	
	
	function a(){
		
			//var url = 'https://api.mongolab.com/api/1/databases/eventdata/collections/users?apiKey=YpsnQ_SarNQSimcgDiH7j8fGxTPCskYB';
		    var jsonData = JSON.stringify($('#signupForm').serializeObject()) 
			/*var client = new XMLHttpRequest();
			
			client.open("POST", url, false);
            client.setRequestHeader("Content-Type", "application/json"); //this will also change to JSON
            client.send();*/
            // $.post("https://api.mongolab.com/api/1/databases/eventdata/collections/users?apiKey=YpsnQ_SarNQSimcgDiH7j8fGxTPCskYB",	jsonData,	function(data,status){alert("Data: " + data + "\nStatus: " + status);}); -->
			$.ajax({
						url:"map/v1/users",
						type:"POST",
						data:jsonData,
						contentType:"application/json; charset=utf-8",
						dataType:"json",
						success: function(){
											alert("Data: " + data + "\nStatus: " + status);
					    }
})

		$('#result').text(JSON.stringify($('signupForm').serializeObject()));
		    alert(jsonData);
		
		
		
	};
	
	function home()
	{
	window.location = "mainmenuNew.html";
	}
	
	function createevent()
	{
	window.location = "eventRegistration.html";
	}
	
	function login()
	{
	window.location = "login.html";
	}
  </script>
  
  <script src="js/foundation.min.js"></script>
  <!--
  
  <script src="js/foundation/foundation.js"></script>
  
  <script src="js/foundation/foundation.alerts.js"></script>
  
  <script src="js/foundation/foundation.clearing.js"></script>
  
  <script src="js/foundation/foundation.cookie.js"></script>
  
  <script src="js/foundation/foundation.dropdown.js"></script>
  
  <script src="js/foundation/foundation.forms.js"></script>
  
  <script src="js/foundation/foundation.joyride.js"></script>
  
  <script src="js/foundation/foundation.magellan.js"></script>
  
  <script src="js/foundation/foundation.orbit.js"></script>
  
  <script src="js/foundation/foundation.reveal.js"></script>
  
  <script src="js/foundation/foundation.section.js"></script>
  
  <script src="js/foundation/foundation.tooltips.js"></script>
  
  <script src="js/foundation/foundation.topbar.js"></script>
  
  <script src="js/foundation/foundation.interchange.js"></script>
  
  <script src="js/foundation/foundation.placeholder.js"></script>
  
  <script src="js/foundation/foundation.abide.js"></script>
  
  -->
  
  <script>
    $(document).foundation();
  </script>
</body>
</html>
