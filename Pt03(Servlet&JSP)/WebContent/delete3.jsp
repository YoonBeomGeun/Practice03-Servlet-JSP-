<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    	ProductDAO dao = new ProductDAO();
    	int result = dao.delete(id);
    	String resultText = "삭제 실패";
    	String resultImg = "3.png";
    	if(result == 1) {
    		resultText = "삭제 성공";
    		resultImg="go1.png";
    	}
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="greenyellow">
	<%= resultText %> <img src="img/<%= resultImg %>">
</body>
</html>