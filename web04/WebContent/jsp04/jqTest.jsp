<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jqTest.jsp</title>

</head>
<body>
<style>
#display{
	width: 200px;
	height: 200px;
	border: 3px double #333;
}
</style>
<!-- <script src="../js/jquery-1.12.4.min.js"></script> -->
<!-- cdn(Contents delivery network) 방법 -->
<script src="https://code.jquery.com/jquery-3.4.1.js">

</script>

<script>
$(document).ready(function () {
	$("button").click(function () {
		$("#display").html("<img src='../img/a.png'>")
	});
});
</script>
<h2>jqTest.jsp</h2>
<div id="display">내용 변경</div>
<button>display</button>
</body>
</html>