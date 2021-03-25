<%@page import="kosta.bean.BoardDao2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%-- <jsp:useBean 객체생성 --%>
<%-- <jsp:setProperty 폼의 내용을 객체에 초기화 --%>
<jsp:useBean id="board" class="kosta.bean.Board"/>
<jsp:setProperty property="*" name="board"/>

<%
	BoardDao2 dao = BoardDao2.getInstance();
	int re = dao.insertBoard(board);
	
	if(re == 1){
		response.sendRedirect("list.jsp");
	}else{
		System.out.println("실패");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>