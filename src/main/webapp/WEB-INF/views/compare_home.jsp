<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Compare!</title>
 <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/carousel.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap-responsive.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
  <style>
	body {
	background: #f2f2f2;
	font-size: 1.25em;
	font-family: 'Raleway', sans-serif;
}

nav {
	margin: 100px auto; 
	text-align: center;
}

nav ul {
	margin-left: 0;
	padding-left: 0;
	width: 500px;
	list-style: none;
	position: relative;
	display: inline-table;
}

nav ul ul {
	display: none;
}

nav ul li:hover > ul {
	display: block;
}

nav ul li {
	float: left;
	width: 500px;
	text-align: left;
	border-bottom: 3px solid #2ecc71; 
}
	
nav ul li:hover {
	background: #f2f2f2;
}

nav ul li a {
	display: block; 
	padding: 15px 10px;
	color: #2a2a2a; 
	text-decoration: none;
}
					
nav ul ul {
	border-radius: 0px; 
	padding: 0;
	position: absolute; 
	top: 100%;
}

nav ul ul li {
	float: none;
	border-bottom: 2px solid #eaeaea; 
	position: relative;
}

nav ul ul li a {
	padding: 15px 10px;
	color: #838383;
}	

nav ul ul li a:hover {
	background: #47d583;
	color: #fff;
}	

#down-triangle {
	float: right;
	width: 0; 
 	height: 0;
 	margin-top: 10px;
 	border-top: 10px solid #2ecc71;
  border-left: 10px solid transparent; 
  border-right: 10px solid transparent; 
}

.circle {
	float: right;
	display: inline;
	width: 10px;
 	height: 10px; 
 	margin-top: 5px;
  border: 3px solid #8ce5b2;
  -moz-border-radius: 100%; 
  -webkit-border-radius: 100%; 
  border-radius: 100%;
}
	 

    </style>
<script>
    !function ($) {
        $(function(){
          // carousel demo
          $('#myCarousel').carousel()
        })
      }(window.jQuery)
   
      
    </script> 


</head>
<body><center><h2>
Lets compare the product!
</h2></center>
 <form  name="compare"  action="compare"><center>
<table border="0" cellpadding="1" cellspacing="1" height="125" width="800">


<tr>

<td  >
<h5>Please select the first product:</h5>
<select id="prod_name1" name="prod_name1">
						<c:forEach var="p" items="${productList}">
                        <option class='dropdown'>${p.prod_name}</option>
                        </c:forEach>
                       
</select>  
</td>
 
<td>
<h5>Please select the second product:</h5>
<select id="prod_name2" name="prod_name2">
                      	<c:forEach var="p" items="${productList}">
                        <option>${p.prod_name}</option>
                        </c:forEach>
</select>  
</td>
</tr>

 <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">
        <div class="item active">
          <img src="<c:url value="/resources/images/phone.jpg"/>">
          <div class="container">
            </div>
          </div>
        </div>
<!-- <input type="text" value="" name="prod_name1" id="prod_name1"/> <br>  
Please enter your second ProductName: <input type="text" value="" name="prod_name2" id="prod_name2"/> <br>  -->
</table>
<br><br><br>
<button type="submit" value="Confirm" >Compare the product</button>
</center>
</form>

</body>
</body>
</html>