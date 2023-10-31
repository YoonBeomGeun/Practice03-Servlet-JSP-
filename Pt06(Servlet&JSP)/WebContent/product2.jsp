<%@page import="bean.ProductDTO"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 
    1. 앞페이지에서 넘어온 id를 받아서 bag을 만들어서 저장
    2. dao를 이용해서 db처리
    3. db에서 가지고 온 데이터를 테이블로 출력
     -->
<!-- 액션태그 -->
<jsp:useBean id="bag" class="bean.ProductDTO"></jsp:useBean>
<jsp:setProperty property="id" name="bag" />
<%
	ProductDAO dao = new ProductDAO();
	ProductDTO bag2 = dao.one(bag);
	//dao가 Product 타입의 데이터를 보내기 때문에 같은 타입의 변수에 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/project.css">
<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div id="total">
		<div id="top">
			<jsp:include page="top.jsp"></jsp:include>
			<!-- 액션태그 -->
		</div>
		<div id="top2">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
		<div id="center">
			<br>
			<br>
			<%
				if (session.getAttribute("id") != null) {
			%>
			<%=session.getAttribute("id")%>님 환영합니다.
			<%
				}
			%>
			<table class="table table-info">
				<tr>
					<td rowspan="5"><img src="img/<%=bag2.getImg()%>"></td>
					<td><span class="card bg-primary text-white">상품아이디: <%=bag2.getId()%></span></td>
				</tr>
				<tr>
					<td><span class="card bg-primary text-white">상품제목: <%=bag2.getTitle()%></span></td>
				</tr>
				<tr>
					<td><span class="card bg-danger text-white">상품제목: <%=bag2.getContent()%></span></td>
				</tr>
				<tr>
					<td><span class="card bg-danger text-white">상품제목: <%=bag2.getPrice()%></span></td>
				</tr>
				<tr>
					<td><span class="card bg-danger text-white">상품제목: <%=bag2.getCompany()%></span></td>
				</tr>
			</table>
			<center>
				<button class="btn btn-primary">장바구니</button>
				<button class="btn btn-success">주문하기</button>
			</center>
			
		</div>
	</div>
</body>
</html>