<%@page import="bean.MemberVO"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
	1. 데이터를 받아서 저장해 두기
	2. dao를 이용해서 데이터를 주면서 db처리해 달라고 요청
	3. 요청에 대한 결과를 html로 만든다
-->
<%
	String id = request.getParameter("id");

	MemberDAO dao = new MemberDAO();
	MemberVO bag = dao.one(id);
	//자동 import: 클릭하고 나서 Ctrl + Shift + m
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="greenyellow">
	검색해 온 id는 <%= bag.getId() %> <br>
	검색해 온 pw는 <%= bag.getPw() %> <br>
	검색해 온 name은 <%= bag.getName() %> <br>
	검색해 온 tel은 <%= bag.getTel() %>
</body>
</html>