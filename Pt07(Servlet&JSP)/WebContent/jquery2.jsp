<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.7.1.js"></script> <!-- 연결용 script -->
<script type="text/javascript">
	$(function() {	//$() ==> body부분을 브라우저가 먼저 읽고 오도록 명령
					//$(function() {처리내용}) ==> body부분을 먼저 읽고 와서 입력값으로 지정한 function() 부분 실행
		//b1 클릭했을 때 처리내용 입력
		$("#b1").click(function() {
			let yearValue = $("#year").val();
			let year2 = 2023;
			let age = year2 - parseInt(yearValue);
			alert("당신의 나이는 " + age);
		})
		//b2 클릭했을 때 처리내용 입력
		$("#b2").click(function() {
			let myun = parseFloat($("#w").val()) * parseFloat($("#h").val());
			alert("사각형의 면적은 " + myun);
		})
	})
</script>
</head>
<body>
	나이계산: <input name="year" id="year" value="1999"> <button id="b1">나이 게산</button>
	<hr color="blue">
	사각형의 가로: <input name="w" id="w" value=3> 세로: <input name="h" id="h" value=2>
	<button id="b2">사각형 면적 계산</button>
	<hr color="blue">
	
</body>
</html>