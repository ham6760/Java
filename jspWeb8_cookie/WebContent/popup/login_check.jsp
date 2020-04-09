<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp</title>
<script>
	idArray=new Array("kang","kim","lee");
	nameArray=new Array("강","김","이");
	pwdArray=new Array("111","222","333");
	
	function member_check() {
		//메인창의 정보를 가져오기
		id=window.opener.document.frm.id.value;
		pwd=window.opener.document.frm.pwd.value;
		
		rs=document.getElementById("result");
		flag="n";//찾는 멤버가 없음
		tempStr="";//임시 문자열
		pos=0;//찾는 배열의 위치값
		
		for(var i=0;i<idArray.length;i++){
			if((id==idArray[i]) && (pwd==pwdArray[i])){
				pos=i;
				flag="y";
				break;
			}
		}
		if(flag=="y"){
			tempStr="<font color='red'>로그인 성공</font>";
			tempStr+=nameArray[pos]+"님 반갑습니다.";
		}else {
			tempStr="<font color='blue'>로그인 실패</font>";
			tempStr+id+"님 재로그인 하세요";
		}
		rs.innerHTML=tempStr;
	}
</script>
</head>
<body onload="member_check()">
<h2>login_check.jsp</h2>
<div id="result"></div>
</body>
</html>