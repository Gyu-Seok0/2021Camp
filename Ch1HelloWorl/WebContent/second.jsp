<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page isErrorPage = "true" %>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name=(String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);  
	out.print("Hello "+name);  
%>

Sorry following exception occured: <%= exception %>
</body>
</html>