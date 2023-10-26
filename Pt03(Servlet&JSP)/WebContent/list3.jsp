<%@page import="bean.ProductVO"%>
<%@page import="bean.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ProductDAO dao = new ProductDAO();
	ArrayList<ProductVO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		background: skyblue;
	}
	
	* {
		font-size: 20px;
		text-align: center;
	}
	
	.top {
		width: 100px;
		background: pink;
	}
	
	.data {
		background: lightblue;
	}
	
</style>
</head>
<body bgcolor="greenyellow">
<a href="product.html">상품정보 페이지로 이동</a>
<!-- 반복문(for)문 필요 -->
<h3>상품 목록입니다.</h3>
<table border="1" align="center">
<tr>
	<td class="top">상품번호</td>
	<td class="top">상품명</td>
	<td class="top">내용</td>
	<td class="top">상품가격</td>
	<td class="top">제조사</td>
	<td class="top">상품이미지</td>
</tr>

<%	//스크립트릿
	for(ProductVO bag:list) {	//{bag, bag, bag, ...}
%>
	<tr>
		<td class="data"><%= bag.getId() %></td>
		<td class="data">
			<a href="one3.jsp?id=<%= bag.getId() %>">
				<%= bag.getName() %>
			</a>
		</td>
		<td class="data"><%= bag.getContent() %></td>
		<td class="data"><%= bag.getPrice() %></td>
		<td class="data"><%= bag.getCompany() %></td>
		<td class="data">
			<img src="img/<%= bag.getImg() %>" width="150" height="150">
		</td>
	</tr>
<%
	} //for
%>
</table>
</body>
</html>