<%@page import="kosta.bean.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- <%! List<Product> list = new ArrayList<Product>(); %> --%>
    
    <%
    	List<Product> list = null;
    
    	request.setCharacterEncoding("utf-8");
/*     	String fruit = request.getParameter("fruit");
    	int price = Integer.parseInt(request.getParameter("price"));
    	int amount = Integer.parseInt(request.getParameter("amount"));
    	Product product = new Product(fruit, price, amount); */
    	Product product = new Product();
        product.setFruit(request.getParameter("fruit"));
        product.setPrice(Integer.parseInt(request.getParameter("price")));
        product.setAmount(Integer.parseInt(request.getParameter("amount")));

        
    	list = (List)session.getAttribute("productList");
    	
    	if(list == null){
    		list = new ArrayList<Product>();
    		session.setAttribute("productList", list);
    	}
    	
    	list.add(product);
    	
/*     	session.setAttribute("product", product);
    	list.add((String)session.getAttribute("product"));
    	session.setAttribute("list", list); */
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="javascript:history.back()">뒤로가기</a>
	<%=product.getFruit() %>
</body>
</html>