<%@page import="com.te.springmvc1.beans.EmployeeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
String msg = (String) request.getAttribute("msg");
List<EmployeeBean> emp =(List) request.getAttribute("data");
%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	if (msg != null && !msg.isEmpty()) {
	%>
	<h1 style="color: red">
		<%=msg%>
	</h1>
	<%
	}
	%>
	
	<table border="1" style="width: 80%">
		<tr style='background-color: lightgrey; color: blue; height: 30px'>
			<th style="font-size: 20px">Employee Id</th>
			<th style="font-size: 20px"> Name</th>
			<th style="font-size: 20px">Dob</th>

		</tr>

		<%
		for (EmployeeBean employeeBean : emp) {
		%>
		<tr style='background-color: lightgrey; color: blue; height: 30px'>
			<td style="font-size: 20px"><%=employeeBean.getId()%></td>
			<td style="font-size: 20px"><%=employeeBean.getName()%></td>
			<td style="font-size: 20px"><%=employeeBean.getBirthDate()%></td>
		</tr>
		<%
		}
		%>


</body>
</html>