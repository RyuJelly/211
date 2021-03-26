<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kosta.bean.Search"%>
<%@page import="kosta.bean.Board"%>
<%@page import="java.util.List"%>
<%@page import="kosta.bean.BoardDao2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	Search search = new Search();
	Map map = new HashMap();
	//search.setArea(request.getParameterValues("area"));
	//search.setSearchKey("%" + request.getParameter("searchKey") + "%");
	map.put("area", request.getParameterValues("area"));
	map.put("searchKey", "%" + request.getParameter("searchKey") + "%");
	
	BoardDao2 dao = BoardDao2.getInstance();
	List<Board> list = dao.listBoard(map);
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
		<%
			for(int i=0; i<list.size(); i++){
				Board board = list.get(i);	
		%>
		<tr>	
			<td><%= board.getSeq() %></td>
			<td><a href="detail.jsp?seq=<%= board.getSeq() %>"><%= board.getTitle() %></a></td>
			<td><%= board.getWriter() %></td>
			<td><%= board.getRegdate() %></td>
			<td><%= board.getHitcount() %></td>
			<td><a href="updateForm.jsp?seq=<%= board.getSeq() %>">글 수정</a></td>
		</tr>
		<%} %>
	</table>
	<br><br>
	
	<form action="list.jsp" method="post">
		<input type="checkbox" name="area" value="title">제목
		<input type="checkbox" name="area" value="writer">작성자
		<input type="text" name="searchKey" size="10">
		<input type="submit" value="검색">
	</form>
	
</body>
</html>

















