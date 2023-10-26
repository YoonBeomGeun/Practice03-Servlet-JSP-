<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int no = Integer.parseInt(request.getParameter("no"));
    	BbsDAO dao = new BbsDAO();
    	int result = dao.delete(no);
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