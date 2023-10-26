<%@page import="bean.ProductVO"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	int price = Integer.parseInt(request.getParameter("price"));
	String company = request.getParameter("company");
	String img = request.getParameter("img");
	
	ProductDAO dao = new ProductDAO();
	ProductVO bag = new ProductVO();
	bag.setId(id);
	bag.setName(name);
	bag.setContent(content);
	bag.setPrice(price);
	bag.setCompany(company);
	bag.setImg(img);
	
	dao.insert(bag);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h5>당신이 입력한 상품정보를 확인해 주세요.</h5>
	<hr color="green">
	입력한 상품 아이디는 <%= id %> <br>
	입력한 상품 이름 <%= name %> <br>
	입력한 상품 내용은 <%= content %> <br>
	입력한 상품 가격은 <%= price %> <br>
	입력한 상품 제조사는 <%= company %> <br>
	입력한 상품 이미지는 <%= img %>
</body>
</html>