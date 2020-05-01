<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jqTest3.jsp</title>
</head>
<body>
<h2>jqTest3.jsp</h2>
<style>
p{
width: 500px;
height: 200px;
background: green;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
$(document).ready(function () {
	$("p").mouseenter(function () {
		$(this).text("마우스 접근")
	});
	$("p").mouseleave(function () {
		$(this).text("마우스 사라짐")
	});
});
</script>


<p>마우스 포인터를 이곳으로 이동하세요</p>
<button>더블클릭</button>
</body>
</html>