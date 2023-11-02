<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	double won = Double.parseDouble(request.getParameter("won"));
	double result = 0.0;
	try {
		result = won / 1340.0;
	} catch(Exception e) {
		System.out.println("에러발생");
	}
%>
<%=result%>