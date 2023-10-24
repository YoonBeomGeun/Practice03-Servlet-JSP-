<%@page import="bean.MemberVO"%>
<%@ page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- 
    jsp에서 해야하는 작업 3가지
    1. form안에 입력한 데이터 받아서 저장해 두기.	==> java
    2. 받은 데이터를 DAO에게 주자.	==> java
    3. 결과를 html로 만들자.	==> html/css/js
     -->
<%
	// 자바코드 쭉 쓰면 됨. 스크립트릿(let, 작은 프로그램, 작은 코드 블럭)
	// form안에 입력한 데이터 받아서 저장해 두기.
	// HttpServletRequest request = new HttpServletRequest();와 같이
	// 자주 사용하는 부품은 미리 톰킷에서 new를 이용해서 객체를 만들어놨음
	// 클라이언트로부터 데이터를 받아오는 객체 ==> request

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");

	// 2. DAO에 데이터를 주소 db처리 요청
	// JSP = java + html
	MemberDAO dao = new MemberDAO();
	// bag 기능을 하는 DTO(VO)가 필요 --> 만들어주고 --> 값을 넣어주어야함
	MemberVO bag = new MemberVO();
	bag.setId(id);
	bag.setPw(pw);
	bag.setName(name);
	bag.setTel(tel);
	
	dao.insert(bag);
	// 3. 결과를 html로 만들어서 클라이언트에 전송
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="red">
	<h5>당신이 입력한 회원정보를 확인해 주세요.</h5>
	<hr color="green">
	가입한 아이디는 <%= id %> <br> <!-- id변수에 있는 거 보여줘~(print) -->
	가입한 패스워드는 <%= pw %> <br>
	가입한 이름은 <%= name %> <br>
	가입한 전화번호는 <%= tel %>
</body>
</html>