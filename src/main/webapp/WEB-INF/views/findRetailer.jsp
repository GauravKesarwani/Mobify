<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 


String company = (String) session.getAttribute("companyname"); 
//String company = "Samsung"; 
System.out.println("company "+company);%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Registering Vendor</title>

	<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/custom/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/custom/google.css">
    <!-- Custom Google Web Font -->
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map-canvas { height: 100% }
    </style>

<script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJ2nu6-0_cibjgvphOIDsv_2Iv30ROLg8&sensor=false">
    </script>
<script>
var geocoder;
</script>
    
    <script type="text/javascript">
    
    var map;
    var markers = [];
    var infoWindow;
    var locationSelect;
    
    function load() {
        map = new google.maps.Map(document.getElementById("map"), {
          center: new google.maps.LatLng(37.386337, -122.085823),
          zoom: 4,
          mapTypeId: 'roadmap',
          mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU}
        });
        infoWindow = new google.maps.InfoWindow();

        locationSelect = document.getElementById("locationSelect");
        locationSelect.onchange = function() {
          var markerNum = locationSelect.options[locationSelect.selectedIndex].value;
          if (markerNum != "none"){
            google.maps.event.trigger(markers[markerNum], 'click');
          }
        };
     }
    function searchLocations() {
		
        var address = document.getElementById("addressInput").value;
        //alert(address);
        geocoder = new google.maps.Geocoder();

        geocoder.geocode({address: address}, function(results, status) {
        	var location = results[0].geometry.location;
          if (status == google.maps.GeocoderStatus.OK) {
 			
           searchLocationsNear(location);
           
          } else {
            //alert(address + ' not found');
          }
        });
      }
    
    function clearLocations() {
        infoWindow.close();
        for (var i = 0; i < markers.length; i++) {
          markers[i].setMap(null);
        }
        markers.length = 0;

        locationSelect.innerHTML = "";
        var option = document.createElement("option");
        option.value = "none";
        option.innerHTML = "See all results:";
        locationSelect.appendChild(option);
      }
    
   /*  function searchLocationsNear(center) {
        clearLocations();

        var radius = document.getElementById('radiusSelect').value;
        //var searchUrl = 'phpsqlsearch_genxml.php?lat=' + center.lat() + '&lng=' + center.lng() + '&radius=' + radius;
        downloadUrl(searchUrl, function(data) {
          var xml = parseXml(data);
          var markerNodes = xml.documentElement.getElementsByTagName("marker");
          var bounds = new google.maps.LatLngBounds();
          for (var i = 0; i < markerNodes.length; i++) {
            var name = "Frankie Johnnie & Luigo Too"; //markerNodes[i].getAttribute("name");
            var address = "939 W El Camino Real, Mountain View, CA"; //markerNodes[i].getAttribute("address");
            var distance = parseFloat(markerNodes[i].getAttribute("distance"));
            var latlng = new google.maps.LatLng(
            		parseFloat("37.386337"),//parseFloat(markerNodes[i].getAttribute("lat")),
            		parseFloat("-122.085823")); //parseFloat(markerNodes[i].getAttribute("lng")));

            //createOption(name, distance, i);
            createMarker(latlng, name, address);
            bounds.extend(latlng);
          }
          map.fitBounds(bounds);
          locationSelect.style.visibility = "visible";
          locationSelect.onchange = function() {
            var markerNum = locationSelect.options[locationSelect.selectedIndex].value;
            google.maps.event.trigger(markers[markerNum], 'click');
          };
         });
       } */
       
       
       function searchLocationsNear(center) {
           //clearLocations();

           //var radius = document.getElementById('radiusSelect').value;
           //var searchUrl = 'phpsqlsearch_genxml.php?lat=' + center.lat() + '&lng=' + center.lng() + '&radius=' + radius;

             //var xml = parseXml(data);
             //var markerNodes = xml.documentElement.getElementsByTagName("marker");
             name="";
             lat;
             var bounds = new google.maps.LatLngBounds();
   				//alert("bounds "+bounds);
   				var company = "<%=company%>";
   				//alert("JUST BEFORE IF   "+company);
				if(company=="Samsung" || company=="samsung" )
				{
				var name = ["Best Buy"]; 
				var address = ["3090 Stevens Creek Blvd San Jose, CA"]; 
				var lat = [37.322888];
				var lng = [-121.949571];
 
				}	else if(company=="Apple" || company=="apple" )
					{
	
					var name = ["Apple Store - Westfield Valley Fair","Best Buy"]; 
					var address = ["2855 Stevens Creek Boulevard, Santa Clara, CA 95050","3090 Stevens Creek Blvd San Jose, CA"]; 
					var lat = [37.325654,37.322888];
					var lng = [-121.945620,-121.949571];
 
					}else if(company=="Nokia" || company=="nokia")
					{
						
						var name = ["Apple Store - Westfield Valley Fair","Best Buy"]; 
						var address = ["2855 Stevens Creek Boulevard, Santa Clara, CA 95050","3090 Stevens Creek Blvd San Jose, CA"]; 
						var lat = [37.325654,37.322888];
						var lng = [-121.945620,-121.949571];
	 
						}else if(company == "Google" || company == "google")
						{
							
							var name = ["T-Mobile ","RadioShack","Best Buy","RadioShack"]; 
							var address = ["595 Coleman Ave #40, San Jose","779 Story Rd #7, San Jose","181 Curtner Ave, San Jose","311 N Capitol Ave, San Jose"]; 
							var lat = [37.340502,37.329459,37.301379,37.369673];
							var lng = [-121.906995,-121.859277,-121.866490,-121.845301];
		 
							}else if(company=="Motorola" || company=="motorola")
							{
								//alert("INSIDE MOTO");
								var name = ["Cellular Phone Repair Services - Cprs ","International Microcell Communications Inc"]; 
								var address = ["3756 Santa Rosalia Dr., Ste 605,Los Angeles, Ca","5812 W. Pico Blvd,Los Angeles, CA"]; 
								var lat = [34.008820,34.050889];
								var lng = [-118.339161,-118.365076];
			 
								}else if(company == "Sony" || company == "Sony")
								{
									
									var name = ["Apple Store - Westfield Valley Fair","Best Buy"]; 
									var address = ["2855 Stevens Creek Boulevard, Santa Clara, CA 95050","3090 Stevens Creek Blvd San Jose, CA"]; 
									var lat = [37.325654,37.322888];
									var lng = [-121.945620,-121.949571];
				 
									}
				//alert("name.length "+name.length);
               for (var i = 0; i < name.length; i++) {
               var latlng = new google.maps.LatLng(
               		parseFloat(lat[i]),
               		parseFloat(lng[i]));

               //createOption(name, distance, i);
               createMarker(latlng, name[i], address[i]);
               bounds.extend(latlng);
               }
             map.fitBounds(bounds);
             locationSelect.style.visibility = "visible";
             locationSelect.onchange = function() {
               var markerNum = locationSelect.options[locationSelect.selectedIndex].value;
               google.maps.event.trigger(markers[markerNum], 'click');
             };
 
          }


    function createMarker(latlng, name, address) {
    	//alert("In create Marker"+latlng );
        var html = "<b>" + name + "</b> <br/>" + address;
        var marker = new google.maps.Marker({
          map: map,
          position: latlng
        });
        google.maps.event.addListener(marker, 'click', function() {
          infoWindow.setContent(html);
          infoWindow.open(map, marker);
        });
        markers.push(marker);
      }
    
   /* function createOption(name, distance, num) {
    	alert("creater marker : "+ name +distance +num  );
        var option = document.createElement("option");
        option.value = num;
        option.innerHTML = name + "(" + distance.toFixed(1) + ")";
        locationSelect.appendChild(option);
      }*/
    
    function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

        request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request.responseText, request.status);
          }
        };
        request.open('GET', url, true);
        request.send(null);
      }
    
    
  
</script>
</head>

  <body  onload="load()">

  
    <div>
     <input type="text" id="addressInput" size="10" style="font-family: Arial, Sans-Serif;font-size: 13px;margin-bottom: 5px;
    display: block;
    padding: 4px;
    border: solid 1px #85b1de;
    width: 200px;"/>
    <select id="radiusSelect">
      <option value="25" selected>25mi</option>
      <option value="100">100mi</option>
      <option value="200">200mi</option>
    </select>

    <input type="button" onclick="searchLocations()" value="Search" id= "buttonOnClick"/>
    <FORM><INPUT Type="button" VALUE="Back" onClick="history.go(-1);return true;"></FORM>
    </div>
    <!--  <div><select id="locationSelect" style="width:100%;visibility:hidden"></select></div>-->
    <div id="map" style="width: 80%; height: 70%; margin-left: 100px; border: 5px;" ></div>

    
  </body>




</html>