<%@page import="java.util.ArrayList"%>
<%@page import="bean.MemberVO"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDAO dao = new MemberDAO();
	ArrayList<MemberVO> list = dao.list();
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
<a href="member.html">회원정보 페이지로 이동</a>
<h3>회원 목록입니다.</h3>
<!-- 반복문(for)문 필요 -->
<table border="1" align="center">
<tr>
	<td class="left">아이디</td>
	<td class="left">패스워드</td>
	<td class="left">이름</td>
	<td class="left">전화번호</td>
	<td class="left">상세정보</td>
</tr>

<%	//스크립트릿
	for(MemberVO bag:list) {	//{bag, bag, bag, ...}
%>
	<tr>
		<td class="data"><%= bag.getId() %></td>
		<td class="data"><%= bag.getPw() %></td>
		<td class="data"><%= bag.getName() %></td>
		<td class="data"><%= bag.getTel() %></td>
		<td>
			<a href="one.jsp?id=<%= bag.getId() %>">
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