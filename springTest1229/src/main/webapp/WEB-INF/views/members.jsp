<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="i" items="${memberList}">
		${i.getMid()} <a href="getUser?uid=${i.getMid()}">${i.getMname()}</a>&nbsp;<button
			onclick="getUser('${i.mid}')">상세보기</button>&nbsp;<a
			href="delUser?uid=${i.getMid()}">삭제</a>
		</br>
	</c:forEach>
	
	<div id="here"></div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	function getUser(mid) {

		$.ajax({
			data : {"mid":mid},
			type : 'post',
			dataType : 'JSON',
			url : 'getUserAjax',
			success:(data)=>{
				console.log(data);
				var output = "<table border='1'>";
				output += "<tr><th>ID</th> <th>PASSWORD</th> <th>NAME</th>";
				output += "<th>PHONE</th> <th>EMAIL</th> <th>BIRTH</th></tr>";
				output += "<tr>";
				output += "<td>"+data.mid+"</td>";
				output += "<td>"+data.mpassword+"</td>";
				output += "<td>"+data.mname+"</td>";
				output += "<td>"+data.mphone+"</td>";
				output += "<td>"+data.memail+"</td>";
				output += "<td>"+data.mbirth+"</td>";
				output += "</tr>";
				output += "</table>";
				
				$('#here').html(output);
			},
			erorr:(data)=>{
				console.log(data);
				
			},
		});
	};
</script>
</html>