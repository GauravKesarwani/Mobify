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
              <c:forEach var="varient" items="${variants}">
               	<li><a href="<c:url value="/${varient}"/>" >${varient}</a></li>
               	</c:forEach>
                    <li><a href="${pageContext.request.contextPath}/phones?category=phone">Mobile Phones</a></li>
                    <li><a href="${pageContext.request.contextPath}/Buy Accesories">Accessories</a></li>
                    <li><a href="${pageContext.request.contextPath}/tablets?category=tablets">Tablets</a></li>
                  </ul>

              
            </div> <!--/.nav-collapse-->
          </div><!--/.navbar-inner -->
        </div><!--/.navbar-->

      </div>
    </div>
      
   
   
   <div class="container marketing">
    	<c:forEach var="o" items="${orders}">
			<div class="row">
				<div class="span4" style="text-align: center"><p  style ="text-align: center; color: #87CEEB" class="lead">Product name: ${p.getProd_name()}</p></div>
				<div class="span4" style="text-align: center">
					
						<div  id="product_id">${o.getProdname()} </div>
						<div id="Quantity" >${o.getQuantity()} </div>
						 <div id="price" >${o.getPrice()}</div>
				</div>
			</div>
		</c:forEach>
	 
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
