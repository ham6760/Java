<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
</head>
<body>
<h2>makeCookie.jsp</h2>
<!-- 쿠키는 웹사이트에 접속할때 생성되는 정보를 임시 저장하는 파일.
쿠키는 4KB이하의 크기
쿠키의 원래 목적은 웹사이트에 접속한 사용자의 정보를 유지하거나
사이트에 접속하는 사용자들이 쉽게 접속할 수 있도록 만들기위해 -->
<%
Cookie cookie=new Cookie("id","master");
cookie.setMaxAge(60*3);
response.addCookie(cookie);
out.println("쿠키가 생성됨");

%>
<form action="useCookie.jsp">
<input type="submit" value="쿠키확인하러가기" />


</form>

</body>
</html>