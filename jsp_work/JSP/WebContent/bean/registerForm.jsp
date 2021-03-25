<%@page import="kosta.bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" class="kosta.bean.Member"/>
<jsp:setProperty property="*" name="member"/>
<%
	MemberDao md = new MemberDao();
	md.insert(member);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>글쓰기</h3>
<hr>
<form action="registerForm.jsp" method="post">
	이름 : <input type="text" name="name"><br>
	주소 : <input type="text" name="address"><br>
	전화번호 : <input type="text" name="phoneNum"><br>
	<input type="submit" value="등록">
</form>
</body>
</html>