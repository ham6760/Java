<%@page import="book.board.dao.BookBoardDao"%>
<%@page import="book.board.vo.BookBoard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String btitle=request.getParameter("btitle");
String bcontent=request.getParameter("bcontent");
String bno=request.getParameter("c");

BookBoard b=new BookBoard();
b.setBno(bno);
b.setBtitle(btitle);
b.setBcontent(bcontent);

BookBoardDao dao=new BookBoardDao();
int af=dao.update(b);

if(af>0)
	response.sendRedirect("bboardDetail.jsp?c="+bno);
else
	out.write("오류");

%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bboardEditProc.jsp</title>
</head>
<body>

</body>
</html>