<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.*"%>
     <%@page import="java.util.ArrayList"%>
     <%@page import="com.cmpe281.app05.cartBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
      
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap-responsive.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
  <title>${companyName}-List</title>
<title>Shopping Cart</title>
<!-- <script type="text/javascript">
function removeItem(id){
	alert(id);
	
	ArrayList buyList=new ArrayList();
	buyList=(ArrayList)session.getAttribute("cart");
	cartBean cb=new cartBean();
 	for(int i=0;i<buyList.size();i++)
 	{
	   	cartBean pb=(cartBean)buyList.get(i);  
		if(pb.getProduct_id()==id)
		 {
			int index=buyList.indexOf(pb);
			buyList.remove(index);
		  }
    }
	
}


</script>

 --></head>
<body>

 <%
	     if(null!=request.getParameter("removeid"))
	     {
       		int removeid=Integer.parseInt(request.getParameter("removeid"));
       		//System.out.println("remove id is "+removeid);
       		ArrayList buyList=new ArrayList();
			buyList=(ArrayList)session.getAttribute("cart");
			cartBean cb=new cartBean();
		 	for(int i=0;i<buyList.size();i++)
		 	{
			   	cartBean pb=(cartBean)buyList.get(i);  
			   //	System.out.println("comar "+pb.getProduct_id());
				if(pb.getProduct_id()==removeid)
				 {
					int index=buyList.indexOf(pb);
					buyList.remove(index);
				  }
		    }
       }
	  %>
	 
	 
	 
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
                <li><a href="Cart">Shopping Cart</a></li>
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
	 
	 
<div class="container">
  <table>
      <c:forEach var="bean" items="${sessionScope.cart}" >
	<table class="table">
	<tr>
	    <td> Name </td>
		<td> Price </td>
		<td></td>
		<td></td>
		</tr>
      <tr>
        <td> ${bean.getProduct_name()}</td>
     	<td> ${bean.getPrice()}</td>
     	<td>${bean.getProduct_id()}</td>
     	<td> 
     	
     	 <form action="shoppingCart" method="get">
     	   
     	    <input type="hidden" name="product_id" value="${product_id}"/>
    		<input type="hidden" name="product_name" value="${product_name}"/>
	      	<input type="hidden" name="price" value="${price}"/>
	      	<input type="hidden" name="tenantid" value="${tenantid}"/>
	      	<input type="hidden" name="removeid" value="${product_id}"/>
     	<input align="middle" class="btn" type="submit" value="remove"/>
     	</form>
     	</td>
     	<td>
     	<form action="payment" method="get">
     	 
     	    <input type="hidden" name="product_id" value="${product_id}"/>
    		<input type="hidden" name="product_name" value="${product_name}"/>
	      	<input type="hidden" name="price" value="${price}"/>
	      	<input type="hidden" name="tenantid" value="${tenantid}"/>
	      	<input type="hidden" name="removeid" value="${tenantid}"/>
     	<input type="submit" name="buy" value="Purchase" id="Purchase" class="btn btn-primary">
     	</form>
     	</td>
     	
     	 <%-- <td><input type="submit" name="buy" value="Purchase" id="purchase" onclick="removeItem('${bean.getProduct_id()}');" class="btn btn-primary"></td> --%>
	  </tr>
	  </table>
 </c:forEach>
      
  </table>
  </div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

    <script type="text/javascript" src="<c:url value="/resources/js/jquery.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap-carousel.js" />"></script>	
    
  
</body>
</html>