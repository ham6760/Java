<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String id=request.getParameter("id");
String pass=request.getParameter("password");

String sql="select pwd from bjoin where id=?";
Class.forName("oracle.jdbc.driver.OracleDriver");

//접속
String url="jdbc:oracle:thin:@localhost:1521:orcl";
String user="scott";
String pw="123456";
Connection con=DriverManager.getConnection(url, user, pw);

PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);
ResultSet rs=pstmt.executeQuery();

String ypass="";
int x=-1;
String msg="";
if(rs.next()){
	ypass=rs.getString("pwd");
	if(ypass.equals(pass))
		x=1;
	else
		x=0;
}else{
	x=-1;
}
System.out.println("xxxx : "+x);
if(x==1){
	session.setAttribute("sessionID", id);
	msg="../MainForm.jsp";
}else if(x==0){
	msg="loginForm.jsp?msg=0";
}else{
	msg="loginForm.jsp?msg=-1";
}
response.sendRedirect(msg);
%>