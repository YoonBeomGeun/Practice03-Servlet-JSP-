<%@page import="bean.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/project.css">
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div id="total">
		<div id="top">
			<jsp:include page="top.jsp"></jsp:include> <!-- 액션 태그 -->
		</div>
		<div id="top2">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
		<div class="center">
			<br>
			<% if(session.getAttribute("id") != null) {%>
				<span class="alert alert-success"> <%=session.getAttribute("id")%>님 환영합니다.
				</span>
				<a href="insert.jsp">
					<button class="btn btn-success">글쓰기</button>
				</a>
				<a href="logout.jsp">
					<button class="btn btn-outline-danger">로그아웃</button>
				</a>
			<% } %>
			<% 
				ProductDAO dao = new ProductDAO();
				ArrayList<ProductDTO> list = dao.list();
			%>
			<br><br>
			전체 제품 수: <%= list.size() %>
			<br>
			<table border="1" class="table table-hover">
				<thead>
					<tr class="table-warning">
						<td>게시글</td>
						<td>내용</td>
						<td>작성자</td>
					</tr>
				</thead>
				<tbody>
					<% for(ProductDTO bag: list) { %>
					<tr class="table-info">
						<td>
							<a href="product2.jsp?id=<%= bag.getId() %>"><%= bag.getTitle() %></a>
						</td>
						<td><%= bag.getPrice() %></td>
						<td><img src="img/<%= bag.getImg() %>" width="100" height="100"></td>
					</tr>
					<% } %>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>