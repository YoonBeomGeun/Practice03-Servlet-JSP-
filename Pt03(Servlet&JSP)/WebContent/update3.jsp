<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    
    	ProductDAO dao = new ProductDAO();
    	int result = dao.update(id);
    	String resultText = "수정 실패!";
    	if(result == 1) {
    		resultText = "수정 성공!";
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= resultText %>
</body>
</html>