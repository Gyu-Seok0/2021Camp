<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javatpoint.dao.UserDao"%>
<%  
request.setCharacterEncoding("UTF-8");
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 


<%  
	UserDao UserDAO = new UserDao();
	int i=UserDAO.update(u);  
	response.sendRedirect("table.jsp");  
%>
</body>
</html>