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
	String tel = request.getParameter("tel");

	MemberDAO dao = new MemberDAO();
	MemberVO bag = new MemberVO();
	bag.setId(id);
	bag.setTel(tel);
	
	int result = dao.update(bag);
	String resultText = "회원수정실패함";
	if(result == 1) {
		resultText = "회원수정성공함";
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="greenyellow">
	<h4><%= resultText %></h4>
</body>
</html>