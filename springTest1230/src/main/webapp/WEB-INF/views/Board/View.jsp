<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table, tr, td {
	text-align: center;
	margin: auto;
	border: 1px solid black;
	border-collapse: collapse;
	padding: 10px;
}

body {
	text-align: center;
}
</style>
<body>
	<form action="regBoard" method="post">
		<table>
			<tr>
				<td>글번호</td>
				<td>${board.bnum}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>${board.btitle}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${board.bwriter}</td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td><img src="resources/upload/${board.bfilename}" width="200px;"></td>
			</tr>
			<tr>
				<td>글조회수</td>
				<td>${board.bhits}</td>
			</tr>
			<tr>
				<td>작성날짜</td>
				<td>${board.bdate}</td>
			</tr>
			<tr>
				<td colspan="2" style="padding: 0"><textarea rows="15" cols="40" style="resize: none;" name="bcontents">${board.bcontents}</textarea></td>
			</tr>

		</table>
	</form>
	<a href="./">홈으로가기</a><br>
	<a href="Bpagelist?page=${page}">목록으로 가기</a><br>
	<div>
	<textarea rows="3" cols="40" style="resize: none;" name="breply" style="margin-top:20px;" id="breply"></textarea>
	<input type="button" onclick="insReply(${board.bnum})" value="댓글달기" style="height:40px;">
	</div>
	
	<div id="here"></div>
	
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>

	$(document).ready(()=>{
			$.ajax({
				data : {'bnum' : ${board.bnum}},
				type : 'post',
				dataType : 'JSON',
				url : 'getReply',
				success : (result)=>{
					$('#here').html(reply(result));
				},
				error : ()=>{
					console.log("데이터 없음");
					
				},
			});
	});
	
	function insReply(bnum){
		let breply = $('#breply').val();
		
		$.ajax({
			data : {'bnum' : bnum, 'breply':breply},
			type : 'post',
			dataType : 'JSON',
			url : 'insReply',
			success : (result)=>{
				$('#here').html(reply(result));
			},
			error : ()=>{
				console.log("데이터 없음");
				
			},
		});
	}
	
	function reply(data){
		let out = "";
		out += '<table>';

		for (var i = 0; i < data.length; i++) {
			out += '<tr>';	
			out += '<td>';
			out += data[i].breply;
			out += '</td>';
			out += '<tr>';
		}

		out += '</table>';
		return out;
	}
	
</script>
</html>













