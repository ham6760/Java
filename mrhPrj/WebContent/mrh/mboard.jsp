<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
</head>
<body>
<h1>mboard.jsp</h1>
<c:forEach items="${list }" var="m">
${m.mseq } &nbsp; ${m.mtitle } &nbsp; ${m.mwriter } <br />
</c:forEach>

</body>
</html>