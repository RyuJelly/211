<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	String checkId = "andigh";
	String checkPass = "1234";
	String pageName = "main.jsp";

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	request.setAttribute("id", id);
	
	if(id.equals(checkId) && checkPass.equals(password)){
		pageContext.forward("main.jsp");
%>
	<%-- <jsp:forward page="<%=pageName %>"/> --%>
<%
	}else{
		response.sendRedirect("loginForm.jsp");
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