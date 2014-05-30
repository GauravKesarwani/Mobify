<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lets Compare the two products!</title>
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/carousel.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap-responsive.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
</head>
<style type="text/css">
	.TFtable{
		width:90%; 
		border-collapse:collapse; 
	}
	.TFtable td{ 
		padding:7px; border:#4e95f4 1px solid;
	}
	/* provide some minimal visual accomodation for IE8 and below */
	.TFtable tr{
		background: #B6B6B4;
	}
	/*  Define the background color for all the ODD background rows  */
	.TFtable tr:nth-child(odd){ 
		background: #B6B6B4;
	}
	/*  Define the background color for all the EVEN background rows  */
	.TFtable tr:nth-child(even){
		background: #B6B6B4;
	}
</style>

<body><br><br>
<table class="TFtable" border="0" cellpadding="1" cellspacing="1" height="125" width="600" align="center"> 
<c:forEach var="p" items="${prod_spec1}">
<c:forEach var="q" items="${prod_spec2}">
<tr>
<td><B>Product Name:</B></td>
<td><B>${p.prod_name}</B></td>
<td><B>${q.prod_name}</B></td>
</tr>

<tr>
<td>Product Type:</td>
<td>${p.prod_type}</td>
<td>${q.prod_type}</td>
</tr>
<tr>
<td>Product Colour:</td>
<td>${p.prod_colour}</td>
<td>${q.prod_colour}</td>
</tr>
<tr>
<td>Product OS:</td>
<td>${p.prod_OS}</td>
<td>${q.prod_OS}</td>
</tr>
<tr>
<td>Product Colour:</td>
<td>${p.prod_colour}</td>
<td>${q.prod_colour}</td>
</tr>
<tr>
<td>Product Front Camera Resolution:</td>
<td>${p.camera_res_front}</td>
<td>${q.camera_res_front}</td>
</tr>
<tr>
<td>Product Rear Camera Resolution:</td>
<td>${p.camera_res_rear}</td>
<td>${q.camera_res_rear}</td>
</tr>
<tr>
<td>Internal Specification:</td>
<td>${p.internal_spec}</td>
<td>${q.internal_spec}</td>
</tr>

<tr>
<td>Internal Memory:</td>
<td>${p.internal_mem}</td>
<td>${q.internal_mem}</td>
</tr>


<tr>
<td>Display Size:</td>
<td>${p.display_size}</td>
<td>${q.display_size}</td>
</tr>

<tr>
<td>Display Resolution:</td>
<td>${p.display_resolution}</td>
<td>${q.display_resolution}</td>
</tr>

</c:forEach>
</c:forEach>
</table>

<br><br>
 <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">
        <div class="item active">
          <img src="<c:url value="/resources/images/spec.jpg"/>">
          <div class="container">
            </div>
          </div>
        </div>
</body>
</body>
</html>