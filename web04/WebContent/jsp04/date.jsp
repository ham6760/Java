<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
Date date=new Date();
SimpleDateFormat simpleDate=new SimpleDateFormat("yyyy-MM-dd");
String strdate=simpleDate.format(date);
%>

<h3>오늘의 날짜를 표현합니다</h3>
오늘 : <%=strdate %>

</body>
</html>