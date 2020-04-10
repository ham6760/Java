<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
<script>
function logoutProc() {
	location.href="login/logoutProc.jsp";
}
function boardProc() {
	location.href="book/bboard.jsp";
}
</script>
</head>
<body>
<b> <<font size="3" color="skyblue">메인화면</font></b> <br /><br />
<%
if(session.getAttribute("sessionID")==null){
	response.sendRedirect("login/loginForm.jsp");
}else{
%>
<h3>
	<font color="red"> <%=session.getAttribute("sessionID") %></font>
	님 로그인
</h3>
<br /><br />
<input type="button" value="logout" onclick="logoutProc();" />
<input type="button" value="board" onclick="boardProc();" />
<%
}
%>
</body>
</html>