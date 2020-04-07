<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
</head>
<body>
<h1>페이지 스크립트 요소</h1>
<%-- 선언문 : <%! %> -전역변수선언
스크립트릿(코드블락)(Scriptlet) : <% %> -java프로그래밍 코딩
표현식 : <%= %> -화면에 출력할 내용 --%>

<%
String str1="게임 ID : "+str2;
%>
<%
String username=str2;
%>


<%!
String str2="blue";
%>

접속자 : <%=str1 %> <br>
접속자 2 : <%=str2 %> <br>
username : <%=username %>



</body>
</html>