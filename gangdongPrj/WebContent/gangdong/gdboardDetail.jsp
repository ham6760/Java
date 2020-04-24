<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
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
			<th class="left">글번호</th>
			<td>${g.gdnum }</td>
			<th class="left">조회수</th>
			<td>${g.gdcnt }</td>
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td>${g.gdwriter }</td>
			<th class="left">작성시간</th>
			<td>${g.gddate }</td>
		</tr>
		<tr>
			<th class="left">제목</th>
			<td colspan="3">${g.gdtitle }</td>			
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3">${g.gdcontent }</td>			
		</tr>
	</tbody>
</table>
<div>
<a href="gdboardEdit.do?d=${g.gdnum }">수정</a>
<a href="gdboardDelProc.do?d=${g.gdnum }">삭제</a>
<a href="gdboard.do">목록</a>
</div>

</body>
</html>