<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
</head>
<body>
<h2>while 문장</h2>
<form action="whileTest.jsp" method="post">
	<label for="number">곱해질 값</label>
	<input type="number" name="number" required /> <br />
	<label for="num">곱해질 횟수</label>
	<input type="number" name="num" required /> <br />
	<input type="submit" value="확인" />
</form>
</body>
</html>