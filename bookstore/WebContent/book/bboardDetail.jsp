<%@page import="book.board.vo.BookBoard"%>
<%@page import="book.board.dao.BookBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String bno=request.getParameter("c");
BookBoardDao dao=new BookBoardDao();
BookBoard b=dao.getBookBoard(bno);
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BookBoardDetail.jsp</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<table class="twidth">
	<colgroup>
		<col width="15%"/>
		<col width="35%"/>
		<col width="15%"/>
		<col width="35%"/>
	</colgroup>
	<caption>Detail</caption>
	<tbody>
		<tr>
			<th class="left">책번호</th>
			<td><%=b.getBno() %></td>
			<th class="left">조회수</th>
			<td><%=b.getBhit() %></td>
		</tr>
		<tr>
			<th class="left">작가</th>
			<td><%=b.getBwriter() %></td>
			<th class="left">작성시간</th>
			<td><%=b.getBdate() %></td>
		</tr>
		<tr>
			<th class="left">책제목</th>
			<td colspan="3">
			<%=b.getBtitle() %> 
			</td>
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="content"><%=b.getBcontent() %></td>
		</tr>		
	</tbody>
</table>
<div>
<a href="bboardEdit.jsp?c=<%=b.getBno() %>">수정</a>
<a href="bboardDelProc.jsp?c=<%=b.getBno() %>">삭제</a>
<a href="bboard.jsp">목록</a>
</div>

</body>
</html>