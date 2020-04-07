<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
</head>
<body>
<h2>선언문 예제</h2>

<%! 
String id="blue";
public String getId(){
	return id;
}
%>
<h2> id변수 : <%=id %></h2>
<h2> id변수 : <%=getId() %></h2>

</body>
</html>