<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="insert_form.do">글쓰기</a>
	<table border="1">
		<tr>
			<td>글번호</td>
			<td>글제목</td>
			<td>작성자</td>
			<td>작성일자</td>
			<td>조회수</td>
		</tr>
		<tr>
			<td>${board.seq }</td>
			<td>${board.title }</td>
			<td>${board.writer}</td>
			<td>${board.contents }</td>
			<td>${board.hitcount }</td>
		</tr>
	</table>
	<a href="updateForm.do?seq=${board.seq }">글수정</a>
	<a href="deleteAction.do?seq=${board.seq }">글삭제</a>
</body>
</html>