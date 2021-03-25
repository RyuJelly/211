<%@page import="kosta.bean.Board"%>
<%@page import="kosta.bean.BoardDao2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int seq = 1;
	if(request.getParameter("seq") != null){
		seq = Integer.parseInt(request.getParameter("seq"));
	}

	BoardDao2 dao = BoardDao2.getInstance();
	Board board = dao.detailBoard(seq);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="insert_form.jsp">글쓰기</a>
	<table border="1">
		<tr>
			<td>글번호</td>
			<td>글제목</td>
			<td>작성자</td>
			<td>작성일자</td>
			<td>조회수</td>
		</tr>
		<tr>
			<td><%=board.getSeq()%></td>
			<td><%=board.getTitle()%></td>
			<td><%=board.getWriter()%></td>
			<td><%=board.getRegdate()%></td>
			<td><%=board.getHitcount()%></td>
		</tr>
	</table>
</body>
</html>