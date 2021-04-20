<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<legend>Add Employee Form</legend>
<form action="/login" method="post"></form>
<label for="id">ID</label>
<input type="text" name="id" id="id" required="required">
<label for="name">NAME</label>
<input type="text" name="name" id="name" required="required">
<label for="dob">DATE OF BIRTH</label>
<input type="date" name="dob" id="dob" required="required">
<label for="password">PASSWORD</label>
<input type="password" name="password" id="password" required="required">
</fieldset>


</body>
</html>