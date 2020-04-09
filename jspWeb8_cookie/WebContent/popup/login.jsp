<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
<script>
function loginCheck(ff) {
	window.open("login_check.jsp","","width=300,height=200");
}
</script>
</head>
<body>
<h2>login.jsp</h2>
<form action="" name="frm">
	<table>
		<tr>
			<td align="right">아이디 <input type="text" id="id" size="8" /></td>
			<td rowspan="2"> <input type="button" value="Login"
			onclick="loginCheck(this.form)" class="box" /> </td>
		</tr>
		<tr>
			<td align="right">암호 <input type="password" id="pwd" size="8" /> </td>
		</tr>
	</table>
</form>

</body>
</html>