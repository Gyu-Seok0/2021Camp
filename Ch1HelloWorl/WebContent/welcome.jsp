<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String name = request.getParameter("page");
	out.print("welcome"+name);
	pageContext.setAttribute("user", name, PageContext.SESSION_SCOPE);  

%>

<a href = "second.jsp"> Second page</a>


</body>
</html>