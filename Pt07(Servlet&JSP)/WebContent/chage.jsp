<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.7.1.js"></script> <!-- 연결용 script -->
<script type="text/javascript">
	$(function() {
		$("#b1").click(function() {
			$.ajax({
				url:"won.jsp",
				data: {
					dollor:$("#won").val()
				},
				success: function(x) {
					$("div").html("원화를 달러로 바꾸면 " + x + "달러");
				}
			})
		})
		
		$("#b2").click(function() {
			$.ajax({
				url:"dollor.jsp",
				data: {
					dollor:$("#dollor").val()
				},
				success: function(x) {
					$("div").html("달러를 원화로 바꾸면 " + x +"원");
				}
			})
		})
	})
</script>
</head>
<body bgcolor="lightblue">
	<h3>비동기통신으로 서버와 통신하기</h3>
	원화를 달러로: <input type="text" id="won">
	<button id="b1">원화를 달러로</button>
	<hr color="red">
	달러를 원화로: <input type="text" id="dollor">
	<button id="b2">달러를 원화로</button>
	<hr color="red">
	<div style="background:orange;"></div>
</body>
</html>