<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int view = (int) session.getAttribute("view");
	//Object(큰) --> int(작은), 강제형변환
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	저장된 세션값은: <%=view%> <br>
	<a href="조회수증가.jsp">조회 수 증가</a>
</body>
</html>