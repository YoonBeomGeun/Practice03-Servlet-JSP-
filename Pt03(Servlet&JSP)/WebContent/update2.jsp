<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	BbsDAO dao = new BbsDAO();
	int result = dao.update(no, title, content);
	String resultText = "수정 실패";
	if(result == 1) {
		resultText = "수정 성공";
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="greenyellow">
	<%= resultText %>
</body>
</html>