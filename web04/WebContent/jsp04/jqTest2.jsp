<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jqTest2.jsp</title>
<style>
	img{
	width: 300px;
	height: 300px;
	border: 3px double #333;
	}
</style>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
$(document).ready(function () {
	$("#b1").click(function () {
		$("#b2").text($("p").text());
	});
	$("#b2").click(function () {	
		$("#img").html("<img src='../img/a.png'>");	
	});
});

</script>
<h2>jqTest2.jsp</h2>
<p>이미지 표시</p>
<div id="img"></div>
<button id="b1">버튼에 레이블 변경</button>
<div id="display"></div>
<button id="b2">버튼</button>

</body>
</html>