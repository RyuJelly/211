<%@page import="java.util.ArrayList"%>
<%@page import="kosta.bean.Member2"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String hello = "Hello!!";
	%>
	
	<c:set var="msg" value="Hello2"/>
	<c:set var="msg2" value="<%= hello %>"/>
	<c:out value="${msg2 }"/>
	
	<!--  구구단 4단 -->
	
	<ul>
		<c:forEach var="i" begin="1" end="9">
			<li>4 * ${i } = ${4*i}</li>
		</c:forEach>
	</ul>
	
	<%
		List<Member2> list = new ArrayList<Member2>();
		list.add(new Member2("홍길동"));
		list.add(new Member2("콩길동"));
		list.add(new Member2("김길동"));
		
		request.setAttribute("list", list);
	%>
	
	<table border="1">
		<tr>
			<td>이름</td>
		</tr>
		<c:forEach var="m" items="${list }">
			<tr>
				<td>${m.name }</td>
			</tr>
		</c:forEach>
	</table>
	
	
</body>
</html>