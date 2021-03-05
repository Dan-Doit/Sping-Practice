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
	<h1>${is}</h1>
	
	<a href="./">홈으로 이동하기</a>
	<c:if test="${sessionScope.mid eq 'ADMIN'}" >
	<a href="members">회원 목록보기</a>
	</c:if>
	<c:if test="${sessionScope.mid ne null}" >
	<a href="logout">로그아웃하기</a>
	</c:if>
	
</body>
</html>