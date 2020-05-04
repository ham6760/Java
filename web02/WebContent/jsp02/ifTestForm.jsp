<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
</head>
<body>
<h2>if else 좋아하는 색</h2>
<form action="ifTest.jsp" method="post">
<label for="name">이름</label>
<input type="text" id="name" name="name" placeholder="홍길동"
autofocus required
/>
<br />
<label for="color">색상</label>
<select name="color" id="color" required>
	<option value="blue" selected>파랑</option>
	<option value="green">초록</option>
	<option value="red">빨강</option>
	<option value="yellow">노랑</option>
</select>
<br />
<input type="submit" value="확인"/>


</form>

</body>
</html>