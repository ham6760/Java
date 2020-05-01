<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sessionTest.jsp</title>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
request.getParameter("id");
request.getParameter("pass");
%>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
%>
</head>
<body>
<h2>sessionTest.jsp</h2>

<%
//아이디 비번이 일치하면 세션에 등록
if(id.equals("blue") && pass.equals("1234")){
	session.setAttribute("id", id);	
	session.setAttribute("h1", "승마");
	session.setAttribute("h2", "영화관람");
}
response.sendRedirect("sessionTestForm.jsp");
%>

아이디 : <%=id %> <br />
비번 : <%=pass %>

</body>
</html>