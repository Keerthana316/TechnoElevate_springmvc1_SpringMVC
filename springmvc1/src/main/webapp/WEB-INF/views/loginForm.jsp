<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    String msg=(String)request.getAttribute("errMsg");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% if(msg!=null && !msg.isEmpty()){ %>
<h1><%= msg %></h1>
<%} %>
<fieldset>
<legend>Login Form</legend>
<form action="./emplogin" method="post">
<label for="id">ID</label>
<input type="number" name="id" required="required">
<label for="password">PASSWORD</label>
<input type="password" name="password" required="required"><br><br>
<input type="submit" value="login">
</form>

</fieldset>
</body>
</html>