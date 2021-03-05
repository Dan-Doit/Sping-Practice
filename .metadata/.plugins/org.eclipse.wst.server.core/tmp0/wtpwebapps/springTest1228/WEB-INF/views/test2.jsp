<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${pa1}</p>
	<p>${pa2}</p>
	
	<a href="./">홈으로가기</a>
	
	<form action="insert" method="post">
		DB에 저장될 데이터 : <input type="text" name="data1">
		<input type="submit" value="DB저장">
	</form>
</body>
</html>