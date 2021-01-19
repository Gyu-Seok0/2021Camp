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
	request.setCharacterEncoding("utf-8"); // 한글 짐 방
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
%>


<h4> 입력하신 데이터: </h4>
<%= fname %>
<%= lname %>


<h1>  Study 하면서 정리한 내용 </h1>


</body>
</html>