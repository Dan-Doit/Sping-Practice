<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>         
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function memberUpdate(){
		location.href="memberupdate";
	}
	function logout(){
		location.href="memberlogout";
	}
</script>
</head>
<body>
	<h2>MemberMain.jsp</h2>
	<h2>${sessionScope.loginId} 님 환영합니다.</h2>
	<c:if test="${sessionScope.loginId eq 'admin'}">
		<a href="memberlist">회원목록조회</a>
	</c:if>
	
	<button onclick="memberUpdate()">정보수정</button>
	<button onclick="logout()">로그아웃</button>
</body>
</html>







