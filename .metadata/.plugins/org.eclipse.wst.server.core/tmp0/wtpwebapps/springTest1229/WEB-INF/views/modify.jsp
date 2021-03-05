<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 회원 정보 수정하기</h1>
	<form action="modify" method="post">
		<input type="hidden" name="mid" value="${userInfo.getMid()}">
		비밀번호 : <input type="text" name="mpwd" ${userInfo.getMpwd()}>
		이름 : <input type="text" name="mname" placeholder="${userInfo.getMname()}">
		전화번호 : <input type="text" name="mphone" placeholder="${userInfo.getMphone()}">
		이메일 : <input type="text" name="memail" placeholder="${userInfo.getMemail()}">
		생년월일 : <input type="text" name="mbirth" placeholder="${userInfo.getMbirth()}">
		
		<input type="submit" value="제출하기!">
	
	</form>
	
</body>
</html>