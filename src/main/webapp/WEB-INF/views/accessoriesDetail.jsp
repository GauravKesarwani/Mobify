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
              <a class="navbar-brand" href="#">${companyName}</a>
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
  
		<table class="table">
		  <tr>
		  		<td><b class="para"><i>Product: ${accessname} </i></b></td>
		  </tr>
		    <tr>
		        <td> <img src="${accessImage}"></td>
		    </tr>
		    <tr>
				<td>
				  
				  <c:forEach var="p" items="${accessSpecs}">
				     <table class="table">
				      <tr> 
				         <td> 
				            ${p }
				         </td>
				      </tr>
				     </table>
				  </c:forEach>
				</td>
			</tr>
			<tr>
				
				<td><b class="para"><i>Price: ${accessprice} </i></b>
				<td>
				<td>
					<form method="get" action="shoppingCart">

						<input type="hidden" name="tenantid" value="${tenantid}" /> <input
							type="hidden" name="product_id" value="${accessid}" /> <input
							type="hidden" name="price" value="${accessprice}" /> <input
							type="hidden" name="product_name" value="${accessname}" /> <input
							align="middle" class="btn" type="submit" value="Buy" />

					</form>

				</td>
				</tr>
				
		</table>

	</div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  
	<script type="text/javascript" src="<c:url value="resources/js/bootstrap.min.js" />"></script>

    <script type="text/javascript" src="<c:url value="resources/js/jquery.js" />"></script>


</body>
</html>