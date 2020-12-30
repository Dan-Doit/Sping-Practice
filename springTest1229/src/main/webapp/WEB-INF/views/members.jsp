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
	<c:forEach var="i" items="${memberList}">
		${i.getMid()} <a href="getUser?uid=${i.getMid()}">${i.getMname()}</a>&nbsp;&nbsp;<a href="delUser?uid=${i.getMid()}">삭제</a></br>
	</c:forEach>
</body>
</html>