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
		$.ajax({
			url: "ok.jsp",
			success: function(result) {
				$("#d1").html(result);
			}
		})
		
		$.ajax({
			url: "weather.jsp",
			success: function(result) {
				$("#d2").html(result);
			}
		})
		
		$.ajax({
			url: "tour.jsp",
			success: function(result) {
				$("#d3").html(result);
			}
		})
	})
</script>
</head>
<body>
	<div id="d1" style="background:yellowgreen">결과들어가는 곳1</div>
	<div id="d2" style="background:pink">결과들어가는 곳2</div>
	<div id="d3" style="background:skyblue">결과들어가는 곳3</div>
	<a href="ok.jsp">오케이정보</a>
</body>
</html>