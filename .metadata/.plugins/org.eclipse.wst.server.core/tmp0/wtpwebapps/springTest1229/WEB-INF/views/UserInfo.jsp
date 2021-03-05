<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>${userInfo.getMid()}</h1>
	<h3>${userInfo.getMpwd()}</h3>
	<h3>${userInfo.getMname()}</h3>
	<h3>${userInfo.getMphone()}</h3>
	<h3>${userInfo.getMemail()}</h3>
	<h3>${userInfo.getMbirth()}</h3>
	
	<a href="./">홈으로 이동하기</a></br>
	<a href="Gomodify?uid=${userInfo.getMid()}">정보수정</a></br>
	<c:if test="${sessionScope.mid eq 'ADMIN'}" >
	<a href="members">회원 목록보기</a>
	</c:if>
	
</body>
</html>