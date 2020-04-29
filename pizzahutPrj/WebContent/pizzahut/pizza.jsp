<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp!</title>
</head>
<body>
<h2>pizza.jsp</h2>

<table>
<tr>
	<th>pno</th>
	<th>pmenu</th>
	<th>pprice</th>
	<th>pdate</th>
	<th>pimg</th>
	
</tr>
<c:forEach items="${list }" var="p">
<tr>
	<td>${p.pno }</td>
	<td>
		<a href="pizzadetail.do?c=${p.pno }">${p.pmenu }</a>
	</td>
	<td>${p.pprice }</td>
	<td>${p.pdate }</td>
	<td>${p.pimg }</td>
</tr>
</c:forEach>
</table>

</body>
</html>