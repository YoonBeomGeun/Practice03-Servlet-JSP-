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
		$("#b4").click(function() {
			let testValue = $("#test").val();
			//alert("테스트 중")
			//비동기통신으로 요청해서 결과받아서 div애 넣어보자
			$.ajax({
				url:"test.jsp",
				data:{
					test:testValue
				},
				success: function(x) {
					$("div").html(x);
				}
			})
		})//b4
		
		$("#b1").click(function() {
			let moneyValue = $("#money").val();
			let choiceValue = $("#choice").val();
			$.ajax({
				url:"money.jsp",
				data: {
					money: moneyValue,
					choice: choiceValue
				},
				success: function(x) {
					$("div").html("결제금액은 " + x + "원");
				}
			})
		})	
		
		$("#b3").click(function() {
			$.ajax({
				url:"phone.jsp",
				data: {
					tel: $("#tel").val()
				},
				success: function(x) {
					$("div").html("인증번호: " + x);
				}
			})
		})
		
		$("#b2").click(function() {
			$.ajax({
				url: "idCheck.jsp",
				data: {
					id:$("#id").val()
				},
				success: function(x) {
					$("div").html(x);
				}
			})
		})
	})
</script>
</head>
<body bgcolor="pink">
	<h3>비동기통신으로 서버와 통신하기</h3>
	ajax테스트: <input type="text" id="test" value="yoon">
	<button id="b4">ajax테스트(test.jsp)</button>
	<br>
	결제금액:
	<input type="text" id="money">
	<br> 1)계좌이체, 2) 신용카드, 3)휴대폰 결제
	<br> 결제수단:
	<input type="text" id="choice">
	<button style="color:red; background:gold;" id="b1">결제하기</button>
	<hr color="red">
	회원가입할 id입력:
	<input type="text" id="id">
	<button style="color:blue; background:yellow;" id="b2">회원가입 시 id 중복체크</button>
	<hr color="red">
	인증받을 전화번호 입력:
	<input type="text" id="tel" value="01011112222">
	<button style="color:blue; background: fuchsia;" id="b3">인증번호받기</button>
	<hr color="green">
	<div style="background:yellowgreen;"></div>
	
</body>
</html>