<%@page import="com.te.springmvc1.beans.EmployeeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="header.jsp" %>
    <%
    String msg=(String)request.getAttribute("msg");
    EmployeeBean bean =(EmployeeBean) request.getAttribute("data");
    
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
<legend>Search form</legend>
<form action="./search" >
<label for="id">ID</label>
<input type="number" name="id" id="id" required="required">
<input type="submit">
</form>
<%
if(bean!=null){
%>
<h4>ID:<%=bean.getId() %></h4>
<h4>Name:<%=bean.getName() %></h4>
<h4>DOB:<%=bean.getBirthDate() %></h4>

<%
} 
%>

</fieldset>

</body>
</html>