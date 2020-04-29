<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp!</title>
</head>
<body>
<h2>pizzadetail.jsp</h2>
<table border="1">
	<tr>
		<td>pno</td>
		<td>${p.pno }</td>
		<td>pmenu</td>
		<td>${p.pmenu }</td>
	</tr>
	<tr>
		<td>price</td>
		<td>${p.pprice }</td>
		<td>pdate</td>
		<td>${p.pdate }</td>
	</tr>
	<tr>
		<td colspan="4">pimg</td>
	</tr>
	<tr>
		<td colspan="4">
		<div >
		<img style="width: 200px;height: 150px; border: 2px solid gray;"
		 src="../img/${p.pimg }" alt="" />
		</div>
		</td>
	</tr>
</table>

</body>
</html>