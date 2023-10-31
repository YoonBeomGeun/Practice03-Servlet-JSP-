<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//브라우저에 심어놓은 쿠키들을 한번에 다 가지고 온디.
	//브라우저 --> 서버, request
	Cookie[] cookies = request.getCookies();
	//cookie = name + value
	String name = "";	// 결합이나 누적시키는 것이 아니면 null 많이 씀 
	String value = "";
	//==> 서블릿으로 변환될 때 service()안으로 코드가 다 들어가 생성
	for(Cookie c : cookies) {
		/*name = name + " " + c.getName();
		value = value + " " + c.getValue();*/
		String name2 = c.getName();
		if(!name2.equals("JSESSIONID")) {
			out.print("쿠키이름: " + c.getName() + " 쿠키의 값: " + c.getValue() + "<br>");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	쿠키 개수:
	<%=cookies.length%>개 <br>
	<a href="특정한쿠키지우기.jsp">쿠키 삭제</a>
</body>
</html>