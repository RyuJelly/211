<%@page import="kosta.bean.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
      List<Product> list = (List)session.getAttribute("productList");
    /*
       if(list == null){
          out.println("선택한 상품이 없습니다.");
       }else{
          for(int i=0; i<list.size(); i++){
             out.println(list.get(i)+"<br>");
          }
       }
    */
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <!-- 과일명 : 수량  = 가격 -->
   <%
      if(list == null){
   %>
      <b>선택한 상품이 없습니다.</b>
   <%}else{%>   
      <u>
         <%
         int total = 0;
         for(int i=0; i<list.size(); i++){
            Product product = list.get(i);
            total+= product.getAmount() * product.getAmount();
         %>
               <li>과일명 <%=product.getFruit() %> :
                  <%= product.getAmount() %> = <%=product.getAmount() * product.getPrice() %>원
               </li>
         <%
         }
         %>      
      </u>
      총 각격 <%= total %>원
   <%      
      }
   %>
   <!-- 총 가격 출력 -->
</body>
</html>