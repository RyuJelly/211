<%@page import="kosta.bean.Board"%>
<%@page import="kosta.bean.BoardDao2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDao2 dao = new BoardDao2();
	Board board = new Board();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 글번호를 받아서 DB로부터 글 1개를 받아야함 -->
<!-- 해당글을 Form에 출력(title, contents) -->
	<form action="updateProc.jsp" method="post">
		<input type="hidden" name="seq" value="<%= board.getSeq()%>">
		작성자 : <input type="text" name="writer" value="<%= board.getWriter()%>"><br>
		제목 : <input type="text" name="title" value="<%= board.getTitle()%>"><br>
		내용 <br>
		<textarea rows="6" cols="70" name="contents"><%= board.getContents()%></textarea>
		<br>
	<input type="submit" value="수정완료">
</form>
</body>
</html>