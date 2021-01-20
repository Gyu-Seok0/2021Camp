<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="${'뭐가 이렇게 많은거유'}"/>  

<br>

<c:set var = "Income" scope = "session" value = "${'4000*4'}"/>
<p> Before: <c:out value = "${Income}"/> </p>

<c:remove var = "Income"/>
<p> After: <c:out value = "${Income}"/> </p>


<h1>  Exception </h1>
<c:catch var = "catchs">
	<% int x = 2/0;%>
</c:catch>

<c:if test = "${catchs != null}">
<p> ${catchs} ${catchs.message} </p>

</c:if>

<h1> 조건문 </h1>
<c:set var = "income" value = "${1000* 3}"/>

<c:if test = "${income >= 10}"> 성공입니다. </c:if>

<h1> 조건문2 (약간 switch 느)</h1>
<c:set var = "age" value = "${26}"/>

<c:choose>
	<c:when test = "${age > 30 }">
		<c:out value = "${'1: Your age is higher than 30'}"/>
	</c:when>
	
	<c:when test = "${age < 30 }">
		<c:out value = "${'2: Your age is lower than 30'}"/> 
		<c:out value = "${age}"/> 
		
	</c:when>
	
	<c:otherwise>
		<c:out value = "${'your age is 30!'}"/>
	</c:otherwise>
</c:choose>

<br>

<h1>반복문</h1>
<c:forEach var = "j" begin = "1" end = "3">
	Item <c:out value = "${j}" />
</c:forEach>

<c:forTokens items = "A-B-c" delims = "-" var = "name"> 
	<c:out value = "${name}"/>
</c:forTokens>

<form action="val.jsp">
<input type = "text" name = "val">
<input type = "submit" value = "submit">
</form>

<c:set var = "String" value = "Welcome to Java"/>
<c:if test="${fn:containsIgnoreCase(String, 'Java')}">  
	<p> Found it </p>
</c:if>



<%-- <c:set var="url" value="3" scope="request"/>  
  <c:if test="${url<1}">  
     <c:redirect url="http://javatpoint.com"/>  
  </c:if>  
  <c:if test="${url>1}">  
     <c:redirect url="https://facebook.com"/>  
  </c:if>  --%> 






</body>
</html>