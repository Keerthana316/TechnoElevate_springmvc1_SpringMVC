<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String msg = (String) request.getAttribute("msg"); 
    String errMsg = (String) request.getAttribute("errMsg");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(msg!=null && !msg.isEmpty()){
	%>
<h2><%=msg %></h2>
<%
} 
%>

<%
if(errMsg!=null && !errMsg.isEmpty()){
	%>
<h2><%=errMsg %></h2>
<%
} 
%>
<fieldset>
<legend>Delete form</legend>
<form action="./delete" method="get">
<label for="id"> ID </label>
<input type="number" id="id" name="id" required="required"><br><br>
<input type="submit">
</form>

</fieldset>
</body>
</html>