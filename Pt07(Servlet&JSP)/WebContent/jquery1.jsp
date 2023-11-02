<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function age() {
		//alert("나이계산 처리할 예정");
		//input 중에서 year을 입력한 정보를 가지고 와야함
		//name=year로 가져올 수 있지만 잘 쓰지 않음
		//name은 여러 개가 올 수 있기 때문에 배열로 가지고 옴
		//그렇기 떄문에 id속성을 이용함
		let yearTag= document.getElementById("year"); //var보다는 let이 더 강력함
		let yearValue = yearTag.value; // 숫자로 바꿔줘야함, window.parseInt(), parseFloat()
		let year2 = 2023;
		let age = year2 - parseInt(yearValue);
		alert("당신의 나이는 " + age)
	}
	
	function rec() {
		//alert("사각형의 면적 계산 처리할 예정");
		let wTag = document.getElementById("w");
		let hTag = document.getElementById("h");
		let myun = parseFloat(wTag.value) * parseFloat(hTag.value);
		alert("사각형의 면적은 " + myun);
	}
</script>
</head>
<body>
	나이계산 <input name="year" id="year" value="1999"> <button onclick="age()">나이 게산</button><br>
	사각형의 가로 <input name="w" id="w" value=3> 세로 <input name="h" id="h" value=2>
	<button onclick="rec()">사각형 면적 계산</button>
	<hr color="blue">
	
</body>
</html>