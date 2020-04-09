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
<h2>useCookie.jsp</h2>

<%
Cookie[] cookies=request.getCookies();
if(cookies!=null){
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("id")){
			out.println("cookie name : "+cookies[i].getName());
			out.println("cookie value : "+cookies[i].getValue());
		}
	}
}

%>

</body>
</html>