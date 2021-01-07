<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello Guys!  
</h1>
<div id="here"></div>

<input id="">

<a href="#" onclick="getInto('member/goRegMember')">처음이신가요?</a>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function getInto(address) {
		let info = address;
		console.log(info);
		fetch(info).then((response)=>{
			response.text().then((text)=>{
				document.querySelector('#here').innerHTML = text;
			})
		})
	};
</script>

</html>
