<%@page import="book.board.dao.BookBoardDao"%>
<%@page import="book.board.vo.BookBoard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String bno=request.getParameter("c");

BookBoard b=new BookBoard();
BookBoardDao dao=new BookBoardDao();

int af=dao.delete(bno);

if(af>0)
	response.sendRedirect("bboard.jsp");
else
	out.write("오류");
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