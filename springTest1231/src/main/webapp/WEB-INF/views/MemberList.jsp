<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	function memberviewAjax(mid){
		console.log(mid);
		$.ajax({
			type: "post",
			url: "memberviewajax",
			data: {"mid": mid},
			dataType: "json",
			success: function(result){
				console.log(result);
				var output = "<table border='1'>";
				output += "<tr><th>ID</th> <th>PASSWORD</th> <th>NAME</th>";
				output += "<th>PHONE</th> <th>EMAIL</th> <th>BIRTH</th></tr>";
				output += "<tr>";
				output += "<td>"+result.mid+"</td>";
				output += "<td>"+result.mpassword+"</td>";
				output += "<td>"+result.mname+"</td>";
				output += "<td>"+result.mphone+"</td>";
				output += "<td>"+result.memail+"</td>";
				output += "<td>"+result.mbirth+"</td>";
				output += "</tr>";
				output += "</table>";
				
				$("#memberviewdiv").html(output);
			},
			error: function(){
				alert("오타확인합시다");
			}
		});
	}
</script>

</head>
<body>
	<h2>MemberList.jsp</h2>
	<table border="1">
		<thead>
			<tr>
				<th>ID</th>
				<th>PASSWORD</th>
				<th>NAME</th>
				<th>PHONE</th>
				<th>EMAIL</th>
				<th>BIRTH</th>
				<th>상세조회</th>
				<th>상세조회(ajax)</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="member" items="${memberList}">
				<tr>
					<td>${member.mid}</td>
					<td>${member.mpassword}</td>
					<td>${member.mname}</td>
					<td>${member.mphone}</td>
					<td>${member.memail}</td>
					<td>${member.mbirth}</td>
					<td><a href="memberview?mid=${member.mid}">조회</a></td>
					<td><button onclick="memberviewAjax('${member.mid}')">ajax조회</button></td>
					<td><button onclick="location.href='memberdelete?mid=${member.mid}'">삭제</button></td>
				</tr>
				<br>
			</c:forEach>
		</tbody>
	</table>
	
	<div id="memberviewdiv"></div>
	
</body>
</html>











