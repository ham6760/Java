<%@page import="java.net.Inet4Address"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
<%
request.setCharacterEncoding("utf-8");
%>
</head>
<body>
<%
String name=request.getParameter("name");
int age=Integer.parseInt(request.getParameter("age"));
String gender=request.getParameter("gender");
String hobby=request.getParameter("hobby");
/* url(Uniform Resource Locator)
uri(Unfiorm Resource Identifier) */
String uri=request.getRequestURI();//식별자
StringBuffer url=request.getRequestURL();//서비스종류 도메인 파일위치
String cxPath=request.getContextPath();
String mod=request.getMethod();
String addr6=request.getRemoteAddr();
String addr4=Inet4Address.getLocalHost().getHostAddress();

//성별처리 -> 남자 여자로
if(gender.equals("m"))
	gender="남자";
else
	gender="여자";

%>
<h2>request 예제</h2>
<%=name %>님의 정보는 다음과 같습니다. <br />

나이 : <%=age %> <br />
성별 : <%=gender %> <br />
취미 : <%=hobby %> <br />
url : <%=url %> <br />
uri : <%=uri %> <br />
cxPath : <%=cxPath %> <br />
mod : <%=mod %> <br />
addr6 : <%=addr6 %> <br />
addr4 : <%=addr4 %> <br />

</body>
</html>