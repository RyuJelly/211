<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 글번호를 받아서 DB로부터 글 1개를 받아야함 -->
<!-- 해당 글을 폼에 출력(title, contents) -->
	<form action="updateAction.do" method="post">
		<input type="hidden" name="seq" value="${board.seq }">
		작성자 : <input type="text" name="writer" value="${board.writer }"><br>
		제목 : <input type="text" name="title" value="${board.title }"><br>
		내용 <br>
		<textarea rows="6" cols="70" name="contents">${board.contents }</textarea>
		<br>
	<input type="submit" value="수정완료">
	</form>
</body>
</html>








