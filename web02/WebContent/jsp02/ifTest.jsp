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
<h2>if else 데이터 받음</h2>
<%
String name=request.getParameter("name");
String color=request.getParameter("color");

%>

이름 : <%=name %> <br />
색상 : <%=color %> <br />

<img src="../img/<%=color+".png" %>" alt="" />

<br />
<h3>div색상</h3>
<div style="width: 100px; height: 100px; background: <%=color%>">
</div>
<br />
<div id="col">
</div>
<%
String strCol="";
if(color.equals("blue")){
	strCol="파랑색";
}else if(color.equals("green")){
	strCol="초록색";
}else if(color.equals("red")){
	strCol="빨강색";
}else{
	strCol="노랑색";
}
%>
<h3><%=name %>님께서 <%=strCol %>을 선택하였습니다.</h3>

<style>
	#col{
	width: 100px;
	height: 50px;
	background: <%=color%>

	}
</style>

</body>
</html>