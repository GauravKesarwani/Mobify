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
	<title>${validuser}Home</title>
	  <!-- Bootstrap core CSS -->
     
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/carousel.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap-responsive.css" />">
      <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
      <style>
    
    #phones{ height: 100px; width: 200px;}
    #accessories { height: 100px; width: 200px;}    
    #tab{ height: 100px; width: 200px; }
      
    </style>
       
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
              <a class="navbar-brand" href="#">${validuser}</a>
            </div>
            <div class="navbar-collapse collapse" id = "example-navbar-collapse">
              <ul class="nav navbar-nav">
                
                <li><a href="${pageContext.request.contextPath}/About">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="${pageContext.request.contextPath}/Cart">Shopping Cart</a></li>
              </ul>
              <form class = "navbar-form navbar-right" role="form">
              <div class = "form-group">
              <input type = "text" placeholder = "Username" class = "form-control">
              </div>
              <div class = "form-group">
              <input type = "text" placeholder = "Password" class = "form-control">
              </div>
              <button type = "submit" class = "btn btn-success">Sign In </button>
              </form>
            </div> <!--/.nav-collapse-->
          </div><!--/.navbar-inner -->
        </div><!--/.navbar-->

      </div>
    </div>
    
    <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">
        <div class="item active">
          <img src="<c:url value="/resources/images/cell-phone-accessories.jpg"/>">
          <div class="container">
            <div class="carousel-caption">
              <h1>Example headline.</h1>
              
              <a class="btn btn-large btn-primary" href="#">Sign up today</a>
            </div>
          </div>
        </div>
        <div class="item">
        	<img src="<c:url value="/resources/images/second.jpg"/>">
          <alt="Second Slide">
          <div class="container">
  
          </div>
        </div>
        <div class="item">
        
          <img src="<c:url value="/resources/images/one.jpg"/>">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              
              <a class="btn btn-large btn-primary" href="#">Browse gallery</a>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
      
	<form:form method="post" modelAttribute="Variants" action="home.html">
	<table>
    <tr>
   <td>
	    <ul>
	    	<form:checkboxes element="li" path="featureList" items="${featureList}"/>
	   			
	    </ul>
  </td> 
  
  <td>
<!--   <c:forEach var = "bean" items="${featureList}">
  

  <input type = "checkbox" name="${bean}" value ="${bean}" > ${bean} </input>
  </c:forEach>--> 
  
  
  </td> 
    </tr>
    <tr>
        <td>
            <input type="submit" class = "btn btn-primary" value="Build Website"/>
        </td>
    </tr>
</table>  
</form:form>
	
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
    
    <script>
    !function ($) {
        $(function(){
          // carousel demo
          $('#myCarousel').carousel()
        })
      }(window.jQuery)
    </script>  
</body>
</html>
