<%@page import="bean.BbsVO"%>
<%@page import="bean.BbsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BbsDAO dao = new BbsDAO();
	ArrayList<BbsVO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		background: skyblue;
	}
	
	* {
		font-size: 20px;
		text-align: center;
	}
	
	.left {
		width: 100px;
		background: pink;
	}
	
	.data {
		background: lightblue;
	}
	
</style>
</head>
<body bgcolor="greenyellow">
<a href="bbs.html">게시판정보 페이지로 이동</a>
<h3>게시판 글 목록입니다.</h3>
<!-- 반복문(for)문 필요 -->
<table border="1" align="center">
<tr>
	<td class="left">번호</td>
	<td class="left">제목</td>
	<td class="left">내용</td>
	<td class="left">작성자</td>
	<td class="left">상세보기</td>
</tr>

<%	//스크립트릿
	for(BbsVO bag:list) {	//{bag, bag, bag, ...}
%>
	<tr>
		<td class="data"><%= bag.getNo() %></td>
		<td class="data"><%= bag.getTitle() %></td>
		<td class="data"><%= bag.getContent() %></td>
		<td class="data"><%= bag.getWriter() %></td>
		<td>
			<a href="one2.jsp?no=<%= bag.getNo() %>">
				<button style="background:gold; width:150px;">상세정보보기</button>
			</a>
		</td>
	</tr>
<%
	} //for
%>
</table>
</body>
</html>