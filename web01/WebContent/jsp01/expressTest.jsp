<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
</head>
<body>
<h2>표현식</h2>
<style>
table{
width: 500px;
border: 2px solid red;
border-collapse: collapse;
}
table tr td{
border: 2px solid green;
}
</style>
<%
String[] str={"jsp","java","javascript","html5"};
%>

<table>
<tr>
	<th>번호</th>
	<th>값</th>
</tr>
<%
for(int i=0;i<str.length;i++){
%>
<tr>
	<td><%=i %></td>
	<td><%=str[i] %></td>
</tr>
<%
}
%>

</table>
<hr />
<%
int x=10;
int y=(x>10)?20:x; //삼항연산자

out.println("y변수의 내용 : "+y+"<br>");
%>

<%--
주석
html 주석 <!--  -->
자바주석 // /* */
jsp주석 /<%-- --%>

</body>
</html>