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
	<title>${companyname} Home</title>
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
              <a class="navbar-brand" href="#">${companyname}</a>
            </div>
            <div class="navbar-collapse collapse" id = "example-navbar-collapse">
              <ul class="nav navbar-nav">
                
                <li><a href="${pageContext.request.contextPath}/About">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="${pageContext.request.contextPath}/Cart">Shopping Cart</a></li>
               <c:forEach var="team" items="${variants.featureList}">
				<li><a href="<c:url value="/${team}"/>" >${team}</a></li>
				<%-- <li><c:url value="/${team}"/>${team}</li> --%>
				</c:forEach>
              </ul>
              <form class = "navbar-form navbar-right" role="form" action="sign_in">
              <div class = "form-group">
              <input id="custID" name="custID" type = "text" placeholder = "Username" class = "form-control">
              </div>
              <div class = "form-group">
              <input id="password" name="password" type = "text" placeholder = "Password" class = "form-control">
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
    </div>
	<div class = "devices">
    <div class = "container">

			<div class="row">
				<div class="col-xs-3" id="phones">
					<h4>Buy Mobile Phones</h4>
					<a href="${pageContext.request.contextPath}/phones?category=phone" class="thumbnail"> <img
						src="<c:url value="/resources/images/phone-hover.jpg"/>">

					</a>
				</div>
				<div class="col-xs-4" id="tab">
					<h4>Buy Tablets</h4>
					<a href="${pageContext.request.contextPath}/tablets?category=tablets" class="thumbnail"> <img
						src="<c:url value="/resources/images/tablets-montage.jpg"/>">
					</a>
				</div>
		</div>
		<div style="position:relative;margin-left: 1100px; width=100 " >
		
					<form action="custsignup">
						<button type="submit" class="btn btn-success">Customer Sign Up</button>
					</form>
		
			</div>
		
		</div>
      <!-- FOOTER -->
      <div class = "navbar navbar-default navbar-fixed-bottom">
      <div class ="container">
		<form:form class="navbar-form navbar-left" role="search" modelAttribute="mobile" method="post" action="search_phone">
  		<div class="form-group">
    	<form:input type="text" class="form-control" placeholder="Search" path="prod_name"/>
  		</div>
  		<button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
		</form:form>

      <p class = "navbar-text pull-right">Like us on Socialmedia</p>
      <button href = "#" class = "navbar-btn btn-primary btn pull-right">
      <span class = "glyphicon glyphicon-thumbs-up"></span>
      </button>
      </div>  
      </div>
    </div><!-- /.container -->
  <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap-carousel.js"/>"></script>	
    
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
