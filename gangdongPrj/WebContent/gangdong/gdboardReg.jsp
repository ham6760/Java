<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새로운글 작성</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<form action="gdboardRegProc.do" method="post">
	<table class="twidth">
	<colgroup>
		<col width="15%"/>
		<col width="35%"/>
		<col width="15%"/>
		<col width="35%"/>
	</colgroup>
	<caption>새로운글 작성</caption>
	<tbody>
		<tr>
			<th class="left">제목</th>
			<td colspan="3">
			<input class="inp" name="gdtitle" />
			</td>
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td colspan="3">
			<input class="inp" name="gdwriter" />
			</td>
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="content">
			<textarea class="txt" name="gdcontent" ></textarea>
			</td>
		</tr>
	</tbody>
	</table>
<div>
	<input type="submit" value="save" />
	<input type="button" value="cancel" class="cancel" />
</div>
</form>

</body>
</html>