<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int num1 = 0;
	int num2 = 0;
	
	request.setCharacterEncoding("utf-8");
	
	String s1 = request.getParameter("num1");
	String s2 = request.getParameter("num2");
	String name = request.getParameter("userName");
			
	if(s1 == null) {
		s1 = "0";
	}
	
	num1 = Integer.parseInt(s1);
	num2 = Integer.parseInt(s2);
	
	int result = num1 + num2;
	
	request.setAttribute("result", result);
	request.setAttribute("userName", name);
%>
<jsp:forward page="result.jsp"></jsp:forward> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>계산결과</h1>
	결과1: <b><%=result %></b><br>
	결과2: <b><%= name %></b>
</body>
</html>