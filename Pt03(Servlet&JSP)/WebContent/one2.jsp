<%@page import="bean.BbsVO"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));

	BbsDAO dao = new BbsDAO();
	BbsVO bag = dao.one(no);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		background: pink;
	}
	
	* {
		font-size: 20px;
		text-align: center;
	}
	
	.left {
		width: 100px;
		background: skyblue;
	}
	
	#bottom {
		background: blue;
	}
	
	input {
		background: greenyellow;
	}
	
	textarea {
		background: greenyellow;
	}
</style>
</head>
<body bgcolor="greenyellow">
<h3>게시물 상세정보입니다.</h3>
<table border = 1 align = center>
		<tr>	<!-- 가로 한 줄 -->
			<td class="left">번호: </td>	<!-- 칸 하나 -->
			<td>
				<%= bag.getNo() %>
			</td>
		</tr>
		<tr>	<!-- 가로 한 줄 -->
			<td class="left">제목: </td>	<!-- 칸 하나 -->
			<td>
				<%= bag.getTitle() %>
			</td>
		</tr>
		<tr>	<!-- 가로 한 줄 -->
			<td class="left">내용: </td>	<!-- 칸 하나 -->
			<td>
				<%= bag.getContent() %>
			</td>
		</tr>
		<tr>	<!-- 가로 한 줄 -->
			<td class="left">작성자: </td>	<!-- 칸 하나 -->
			<td>
				<%= bag.getWriter() %>
			</td>
		</tr>
</table>
</body>
</html>