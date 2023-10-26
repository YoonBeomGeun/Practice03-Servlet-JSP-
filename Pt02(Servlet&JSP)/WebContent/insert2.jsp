<%@page import="bean.BbsVO"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 
	1.클라이언트로부터 전달되는 데이터 받아서 저장하기
	2. DAO 이용해서 db 처리하기
	3. 결과 html로 만들어서 클라이언트로 보내기
-->
<%
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	
	BbsDAO dao = new BbsDAO();
	BbsVO bag = new BbsVO();
	bag.setTitle(title);
	bag.setContent(content);
	bag.setWriter(writer);
	
	dao.insert(bag);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="greenyellow">
	<h3>당신이 입력한 회원정보를 확인해 주세요.</h3>
	<hr color="green">
	게시물이 등록되었습니다. <br>
	게시판 제목은 <%= title %> <br> <!-- id변수에 있는 거 보여줘~(print) -->
	게시판 내용은 <%= content %> <br>
	게시판 작성자는 <%= writer %>
</body>
</html>