<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//HttpSession session = new HttpSession();
	session.setAttribute("view", 0); //Integer(작은) --> Object(큰)
	//value 위치의 타입이 Object로 설정되어있음(타입 상관없음)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="세션설정보기.jsp">세션 설정 보기</a>
</body>
</html>