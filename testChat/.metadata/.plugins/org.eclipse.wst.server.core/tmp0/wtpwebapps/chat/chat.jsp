<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅</title>
</head>
<body>
	<div class="container">
		<div class="textLog" style="height: 300px; width: 400px; border: solid 1px;">
			<c:forEach var="chat" items="${list }">
				${chat.writer} : ${chat.contents}<br>
			</c:forEach>
		</div>
		<div class="input">
			<div></div>
			<div class="row" style="heigh: 90px;">
				<form action="insertAction.do" method="post">
					<input style="height: 40px;" type="text" id="chatName"
						name="writer" class="form-control" placeholder="이름" maxlength="20">
					<input style="height: 80px;" id="chatContent" name="contents"
						class="form-control" placeholder="메세지를 입력하세요." maxlength="100">
					<input type="submit" value="전송">
				</form>
			</div>
		</div>
	</div>
</body>
</html>