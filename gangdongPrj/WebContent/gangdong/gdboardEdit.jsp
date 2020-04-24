<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<form action="gdboardEditProc.do" method="post">
<table class="twidth">
	<colgroup>
		<col width="15%"/>
		<col width="35%"/>
		<col width="15%"/>
		<col width="35%"/>
	</colgroup>
	<caption>글저장</caption>
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
			<td colspan="3">
			<input class="inp" name="gdtitle" value="${g.gdtitle }" />
			</td>			
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="gdcontent">
			<textarea class="txt" name="gdcontent" >${g.gdcontent }</textarea>
			</td>			
		</tr>
	</tbody>
</table>
<div>
<input type="hidden" name="d" value="${g.gdnum }" />
<input type="submit" value="저장" />
<a href="gdboardDetail.do?d=${g.gdnum }">취소</a>
</div>
</form>

</body>
</html>