<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String[] list = {"root", "admin", "yoon"};
	String result = "사용 가능";
	for(String s : list) {
		if(s.equals(id)) {
			result = "아이디가 중복됩니다.";
		}
	}
%>
<%= result %>
