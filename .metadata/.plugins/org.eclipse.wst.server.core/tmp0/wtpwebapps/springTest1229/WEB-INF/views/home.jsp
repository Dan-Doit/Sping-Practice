<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	안녕 반가워!
</h1>

<P> 둘중 하나는 꼭해! </P>
<form action="Gologin" method="post">
	아이디 : <input type="text" name="mid"></br>	
	비밀번호 : <input type="text" name="mpwd"></br>
	<input type="submit" value="로그인">
</form>

<a href="Goregistration">회원가입</a>

</body>
</html>
