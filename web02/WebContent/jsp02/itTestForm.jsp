<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>itTestForm.jsp</title>
</head>
<body>
<h2>itTest 예제 - 요청</h2>

<form action="itTest.jsp" method="post">
<label for="name">이름</label>
<input type="text" id="name" name="name" 
placeholder="" autofocus required/>

<label for="kyo">교육기관명</label>
<select name="kyo" id="kyo" required>
	<option value="미래">미래</option>
	<option value="능력">능력</option>
	<option value="개발">개발</option>
	<option value="교육원">교육원</option>
</select>
<fieldset>
	<legend>성별</legend>
	<input type="radio" id="gender" name="gender" 
	value="남자" checked/>
	<label for="gender">남자</label>
	<input type="radio" id="gender" name="gender" 
	value="여자" checked/>
	<label for="gender">여자</label>
</fieldset>
<label for="it">it 과정명</label>
<!-- <input type="text" id="it" name="it" 
placeholder="자동완성" autofocus/> -->
<select name="it" id="it" required>
	<option value="능력">능력</option>
	<option value="개발">개발</option>
	<option value="교육원">교육원</option>
	<option value="미래">미래</option>
</select>
<input type="submit" value="확인" />
</form>
</body>
</html>