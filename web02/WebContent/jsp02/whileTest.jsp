<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>whileTest.jsp</title>
<%
request.setCharacterEncoding("utf-8");
%>
</head>
<body>
<h2>while 예제</h2>
<%
int number=Integer.parseInt(request.getParameter("number"));
int num=Integer.parseInt(request.getParameter("num"));

long multiply=1;
int count=0;

while(count<num){
	multiply*=number;
	count++;
}
%>

<br />
결과 : <%=multiply %>

</body>
</html>