<%@page import="book.board.dao.BookBoardDao"%>
<%@page import="book.board.vo.BookBoard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String btitle=request.getParameter("btitle");
String bwriter=request.getParameter("bwriter");
String bcontent=request.getParameter("bcontent");

BookBoard b=new BookBoard();
b.setBtitle(btitle);
b.setBwriter(bwriter);
b.setBcontent(bcontent);

BookBoardDao ba=new BookBoardDao();
int af=ba.insert(b);

if(af>0)
	response.sendRedirect("bboard.jsp");
else
	out.println("오류");
%>