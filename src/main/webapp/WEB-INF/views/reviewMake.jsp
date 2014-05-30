<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>${companyName}-List</title>
	  <!-- Bootstrap core CSS -->
     
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
      
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap-responsive.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
  
       
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
            </div> <!--/.nav-collapse-->
          </div><!--/.navbar-inner -->
        </div><!--/.navbar-->

      </div>
    </div>
      
   
    <div class="container marketing">
    
   
    <c:forEach var="p" items="${reviewList}">
    <tr>
     <td width="5%" bgcolor="maroon">
      &nbsp;</td>
      <td width="30%" align="center"><i>Posted By: ${p.getFirstname()} </i></td><br/>
      <td class="item" width="30%" align="center"><b class="first"><i>Message: ${p.getMessage()}</i></b><br/><br/>
	
       
      </td>
     <td width="5%" bgcolor="maroon">
      &nbsp;</td>
    </tr> 
     </c:forEach> 
     
    	<form action="addreviews" method="post"> 
    		
    	<input class = "btn" type="submit" value = "Add Review"/>       
    </form>
     </div>
      
      
      
      <!-- FOOTER -->
      <div class = "navbar navbar-default navbar-fixed-bottom">
      <div class ="container">
       <form class="navbar-form navbar-left" role="search">
         <div class="form-group">
            <input type="text" class="form-control" placeholder="Find a Retailer">
         </div>
         <button type="submit" class="btn btn-primary">
           
           <span class="glyphicon glyphicon-search"></span>
         </button>
      </form> 
      
      <p class = "navbar-text pull-right">Like us on Socialmedia</p>

      <button href = "#" class = "navbar-btn btn-primary btn pull-right">
      <span class = "glyphicon glyphicon-thumbs-up"></span>
      </button>
      
      </div>  
      
      </div>

    </div><!-- /.container -->
  <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

    <script type="text/javascript" src="<c:url value="/resources/js/jquery.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap-carousel.js" />"></script>	
    
</body>
</html>
