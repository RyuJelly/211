<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String body = request.getParameter("body");
	if(body == null){
		body = "../main.jsp";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>새로운내용</div>
	<div>새로운내용</div>
	<div>새로운내용</div>
	<jsp:include page="logo.jsp"></jsp:include>
	<hr>
	<jsp:include page="header.jsp"/>
	<hr>
	<jsp:include page="menu.jsp"></jsp:include>
	<hr>
	<h3>Body영역</h3>
	<jsp:include page="<%= body %>"></jsp:include>
	<hr>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>