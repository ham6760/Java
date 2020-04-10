<%@page import="java.sql.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
String pwd2=request.getParameter("pwd2");
String name=request.getParameter("name");
String gender=request.getParameter("gender");

String year=request.getParameter("year");
String month=request.getParameter("month");
String day=request.getParameter("day");
String birth=String.format("%s-%s-%s", year, month, day);

String IsLunar=request.getParameter("IsLunar");
String cphone=request.getParameter("cphone");
String email=request.getParameter("email");

List<String> errors=new ArrayList();
if(id==null || id.equals(""))
	errors.add("아이디 없음");
if(!pwd.equals(pwd2))
	errors.add("비밀번호 불일치");

if(errors.size()>0){
	request.setAttribute("errors", errors);
	request.getRequestDispatcher("join.jsp").forward(request, response);	
}else{
String sql="insert into bjoin"
+"(id,pwd,name,gender,birth,is_lunar,cphone,email,regdate)"
+"values(?,?,?,?,?,?,?,?,sysdate)";

Class.forName("oracle.jdbc.driver.OracleDriver");
//접속
String url="jdbc:oracle:thin:@localhost:1521:orcl";
String user="scott";
String pw="123456";
Connection con=DriverManager.getConnection(url, user, pw);

PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, pwd);
pstmt.setString(3, name);
pstmt.setString(4, gender);
pstmt.setString(5, birth);
pstmt.setString(6, IsLunar);
pstmt.setString(7, cphone);
pstmt.setString(8, email);

pstmt.executeUpdate();

response.sendRedirect("../login/loginForm.jsp");
}
%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
</head>
<body>

</body>
</html>