<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accessories</title>
<link type="text/css" rel="stylesheet" href="<c:url value="resources/css/bootstrap.css"/>">
      <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/style.css" />">
      
      <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/bootstrap-responsive.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css" />">
  
</head>
<body>
 <div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">${companyname}</a>
            </div>
               <div class="navbar-collapse collapse" id = "example-navbar-collapse">
              <ul class="nav navbar-nav">
                
                <li><a href="${pageContext.request.contextPath}/About">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="${pageContext.request.contextPath}/Cart">Shopping Cart</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Devices<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="${pageContext.request.contextPath}/phones?category=phone">Mobile Phones</a></li>
                    <li><a href="${pageContext.request.contextPath}/Buy Accesories">Accessories</a></li>
                    <li><a href="${pageContext.request.contextPath}/tablets?category=tablets">Tablets</a></li>
                  </ul>
                </li>
              </ul>
              <form class = "navbar-form navbar-right" role="form">
              <button type = "submit" class = "btn btn-success">Sign In </button>
              </form>
            </div>
          </div><!--/.navbar-inner -->
        </div><!--/.navbar-->

      </div>
    </div>
    
    
    <div class="container marketing">
    <c:forEach var="p" items="${accessories}">
    <table>
    <tr>
     
      
      <td class="item" width="30%" align="center"> <img src="${p.getImage()}"> </td>
      <td class="item" width="30%" align="center">Product name: ${p.getName()}<br/><br/>
      <td class="item" width="30%" align="center">Product Price: ${p.getPrice()}</td>
    
      <td>
       <form method="post" action="accesoriesDetails">
	      
	      	<input type="hidden" name="accessImage" value="${p.getImage()}"/>
      		<input type="hidden" name="accessid" value="${p.getAccessid()}"/>
      		<input type="hidden" name="accessname" value="${p.getName()}"/>
      		<input type="hidden" name="accessSpecs" value="${p.getSpecification()}"/>
      		<input type="hidden" name="accessprice" value="${p.getPrice()}"/>
      		<input type="hidden" name="tenantid" value="${p.getTenantid()}"/>
      		<input class="btn" type="submit" value="Select"/>
      		
      </form> 
      </td>
    
    </tr> 
    </table>
     </c:forEach> 
     </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  
	<script type="text/javascript" src="<c:url value="resources/js/bootstrap.min.js" />"></script>

    <script type="text/javascript" src="<c:url value="resources/js/jquery.js" />"></script>


</body>
</html>