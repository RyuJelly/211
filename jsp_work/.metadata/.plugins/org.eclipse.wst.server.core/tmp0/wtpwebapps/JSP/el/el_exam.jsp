<%@page import="java.util.HashMap"%>
<%@page import="kosta.bean.Member2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("name", "kosta");

	Member2 m = new Member2();
	m.setName("홍길동");
	request.setAttribute("member", m);
	
	HashMap<String, String> map =
			new HashMap<String, String>();
	
	map.put("samsung", "이승엽");
	request.setAttribute("baseball", map);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="jstl_exam2.jsp">
		<jsp:param value="apple" name="fruit"/>
	</jsp:forward>
</body>
</html>