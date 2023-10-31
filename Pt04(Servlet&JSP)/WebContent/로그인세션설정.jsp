<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//로그인 성공한 경우 id를 세션으로 설정
	//id가 세션으로 설정이 되어있다면 로그인 성공이라고 판단
	session.setAttribute("id", "apple");
	if (session.getAttribute("id") == null) {
		//id라는 이름으로 저장된 세션이 없다.
		out.print("로그인되지 않았습니다. 먼저 로그인을 해 주세요.");
		out.print("로그인 아이디: input name=id");
	} else {
		//id라는 이름으로 저장된 세션이 있다.
		out.print(session.getAttribute("id") + "님이 로그인되었습니다.");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="news.jsp">뉴스로 링크</a>
	<a href="mail.jsp">메일로 링크</a>
	<a href="shopping.jsp">쇼핑으로 링크</a>
</body>
</html>