<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	double dollor = Double.parseDouble(request.getParameter("dollor"));
	double result = dollor * 1340.5;
%>
<%=result%>