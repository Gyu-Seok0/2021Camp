<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		input{
			border: 1px solid black;
		}
		
	</style>

</head>
<body>

Hello world!!!!!

<%  out.print("if we"); %>
<br>

<%= "welcome to jsp" %>

<br><br><br>


<form action = "welcome.jsp"> 
방문록: <input type = "text" name = "unname">
<input type = "submit" value = "submit">
</form>

<%!
int cube(int n){
	return n*n*n;
}

%>


<% int data = 50; %>
<%= "data^3 = "+cube(data) %>  

<form action = "name.jsp">
name: <input type = "text" name = "fname">
<input type = "submit" value = "sumbit">
</form>


<form action = "./test.jsp">

text: <input type = "text" name = "unname">
<input type = "submit" value = "submit">


</form>

<form action="welcome.jsp">  
<input type="text" name="page">  
<input type="submit" value="go"><br/>  
</form>



</body>
</html>

