<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//쿠키를 만들자
    	Cookie c1 = new Cookie("like", "운동");	//공백 허용 안됨.
    	Cookie c2 = new Cookie("field", "축구");
    	//브라우저에 심기
    	//HttpServletResponse response = new HttpServletResponse();
    	//서버 --> 브라우저, response
    	//response.out.print("<html><head>~~~</head></html>")
    	response.addCookie(c1);
    	response.addCookie(c2);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쿠키심기~~</h3>
<a href="쿠키보기2.jsp">쿠키보기</a>

</body>
</html>