<%@page import="kosta.bean.BoardDao2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request.setCharacterEncoding("UTF-8");	
%>

<jsp:useBean id="board" class="kosta.bean.Board"/>
<<jsp:setProperty property="*" name="board"/>


<%
	BoardDao2 dao = BoardDao2.getInstance();
	int re = dao.updateBoard(board);
	
	if(re>0){
		response.sendRedirect("list.jsp");
	}
%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Form에서 전송된 데이터를 DB에 수정 완료  함-->
<!-- 수정 완료 후 list.jsp로 이동(redirect) -->
</body>
</html>