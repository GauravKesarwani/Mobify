<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Registering Vendor</title>
</head>
<body>
<div id= "global">
<form:form commandName="tenant" action="user_save" method="post">
<fieldset>
<legend>Add a Tenant</legend>
<p>
<label for="firstnameInput">FirstName: </label>
<form:input id ="firstnameInput" path="firstname"/>
</p>
<p>
<label for="lastnameInput">LastName: </label>
<form:input id ="lastnameInput" path="lastname"/>
</p>
<p>
<label for="usernameInput">UserName: </label>
<form:input id ="usernameInput" path="username"/>
</p>
<p>
<label for="passwordInput">Password: </label>
<form:input id ="passwordInput" path="password"/>
</p>
<p>
<label for="emailInput">Email: </label>
<form:input id ="emailInput" path="email"/>
</p>
<p>
<label for="phoneInput">PhoneNumber: </label>
<form:input id ="emailInput" path="phone"/>
</p>
<p>
<label for="addressInput">Address: </label>
<form:input id ="addressInput" path="address"/>
</p>
<p>
<label for="vendorInput">FirstName: </label>
<form:input id ="vendorInput" path="tenantCompany" name="companyName"/>
</p>
<p id = "buttons">
<input id = "submit" type = "submit" value = "Register">
</p>
</fieldset>


</form:form>




</div>
</body>
</html>