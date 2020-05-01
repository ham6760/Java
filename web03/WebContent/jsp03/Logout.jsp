<%@page import="org.apache.jasper.tagplugins.jstl.core.Remove"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
</head>
<body>
<%
//로그아웃 조건처리	
//session.invalidate(); //세션모두제거
session.removeAttribute("id"); //키가 id인 세션제거
response.sendRedirect("sessionTestForm.jsp");
%>

<h2>logout.jsp</h2>
</body>
</html>