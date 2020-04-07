<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"
    buffer="8kb"
    autoFlush="true"
    isThreadSafe="true"
    %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html영역 -->
<%
/* 자바영역 */
Timestamp now=new Timestamp(System.currentTimeMillis());
SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
String strDate=format.format(now);
String name="홍길동";

%>

오늘은 <%=strDate %>입니다. <br>
당신의 이름은 : <%=name %>	<br>
그대의 이름은 : <%="홍길순" %>

</body>
</html>