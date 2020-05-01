<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>outTest.jsp</title>
</head>
<body>
<%
int bufferSize=out.getBufferSize();
int remainSize=out.getRemaining();
int userSize=bufferSize-remainSize;
%>

<h2>현재 페이지의 버퍼 사용현황</h2>
전체버퍼크기 : <%=bufferSize %> <br />
현재사용버퍼크기 :<%=userSize %> <br />
남은버퍼크기 : <%=remainSize %>

</body>
</html>