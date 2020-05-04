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
String kyo=request.getParameter("kyo");
String gender=request.getParameter("gender");
String it=request.getParameter("it");
%>
<%-- <%
if(kyo.equals("미래")){
	it="능력";
}else if(kyo.equals("능력")){
	it="개발";
}else if(kyo.equals("개발")){
	it="교육원";
}else
	it="미래";
%> --%>

<h2>itTest 예제</h2>
이름 : <%=name %> <br />
교육기관명 : <%=kyo %> <br />
성별 : <%=gender %> <br />
it과정명 : <%=it %>

</body>
</html>