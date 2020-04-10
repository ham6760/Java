<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% 
String sql="select * from books order by to_number(bno) desc";

Class.forName("oracle.jdbc.driver.OracleDriver");

String url="jdbc:oracle:thin:@localhost:1521:orcl";
String user="scott";
String pw="123456";
Connection con=DriverManager.getConnection(url, user, pw);

Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bboard.jsp</title>
</head>
<body>
<table width="600" border="1">
	<tr>
		<td>책번호</td>
		<td>책제목</td>
		<td>작가</td>		
		<td>작성일</td>
		<td>조회수</td>
	</tr>
	<%
	while(rs.next()){
	%>		
	<tr>
		<td><%=rs.getString("bno") %></td>
		<td> <a href="bboardDetail.jsp?c=<%=rs.getInt("bno") %>"><%=rs.getString("btitle") %></a></td>
		<td><%=rs.getString("bwriter") %></td>		
		<td><%=rs.getDate("bdate") %></td>
		<td><%=rs.getInt("bhit") %></td>
	</tr>
	<% 
	}
	%>
	
</table>
<a href="bboardReg.jsp">Write</a>
</body>
</html>
<% 
rs.close();
st.close();
con.close();
%>