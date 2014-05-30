<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Page</title>

 <link rel="stylesheet" href="resources/css/foundation.css">
    <script src="resources/js/vendor/custom.modernizr.js"></script>

<script type="text/javascript">

$(function(){
$("#expirationdate").datepicker({});	
});


function myFunction()
{
/* var value;
alert(value);
alert(event.target.name);
var btn=event.target.name;
if(btn=="cancel")
{
 alert("let return true");
 value=true;
 alert(value);
 return true;
} 
else if(btn=="buy")
{ */
// alert("inside");
       var val=document.getElementsByName("credit")[0].value;
       var isnum = /^\d+$/.test(val);
       if(isnum) {
    //alert(test);
    if(val.length!=16){
   	alert("lenght doesnot match");
   	return false;
    }
    else if(val.length==16)
   	{
   	    return true;
   	}
    return false;
}
else {
alert("Invalid");
return false;
}
//}
 
 
}

</script>
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css">



</head>
<body>
<div class="sticky">
                <nav class="top-bar">
                        <ul class="title-area">
                                <li class="name">
                                        <h1><a style="color:#0d95ca" href="#">MobileApps</a></h1>
                                </li>
                        </ul>
                        <section class="top-bar-section">
                                <ul class="right">
                                        <li>
                                                <a style="color:#0d95ca" href="#" data-reveal-id="newAccount" onclick=createuser()>Contact</a>
                                        </li>
                                </ul>
						</section>
				</nav>
			</div>
	<center>
	<h2>Online Payments</h2>
	</center>
	<div class="row">
	<div class="left">
	
		</div>
		</div>
		
		<div style="position: relative;margin-top: 60px;">
<center>
   <label>Please provide your credit card information and click on Purchase to move ahead with your transaction</label>
   </center>
</div>
<div >
<label></label>
</div>
<div style="position:relative; margin-top:40px;margin-left:290px; width:50%;" align="center">
<form class="well span6" style="height: 200px;" action="" method="post" onsubmit="return myFunction();">
<center>
<table align="center">
<tr>
<td>
<label>Credit Card No</label>
</td>
<td>
</td>
<td>
<input type="text" class="span6" name="credit" >
</td>
</tr>
<tr>
<td>

<!-- Expiry-->
          <div class="control-group">
            <label class="control-label" for="password">Card Expiry Date</label>
            <div class="controls">
              <select class="span3" name="expiry_month" id="expiry_month">
                <option></option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>1
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select>
              <select class="span2" name="expiry_year">
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
            </div>
          </div>
     



<tr></tr>
<tr>
<td></td>

<td colspan="2">
<br><input type="submit" name="buy" value="Purchase" id="purchase" onclick="myFunction();" class="btn btn-primary">
</td>
<!-- <td><br><button class="btn btn-primary" name="cancel" id="cancel" value="cancel" onclick="myFunction(event);">Cancel</button></td> --> 
</tr>

</table>
  </center>
</form>
</div>
<div style="position:relative;margin-left: 5px; " >
 <form action="cancelPayment" method="post">
 
 <br><button class="btn btn-primary" name="Cancel Payments" id="cancel" value="Cancel Payments" >Cancel Payments</button>
 </form>
</div>

 
</body>
<script src="resources/js/foundation.min.js"></script>
  <script>
    $(document).foundation();
  </script>
</html>