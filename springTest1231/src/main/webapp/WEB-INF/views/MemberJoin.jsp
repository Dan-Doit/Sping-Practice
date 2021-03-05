<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	/* ajax(Asynchronous javascript and xml) 비동기통신 */
	/* 아이디 중복확인 과정 
		아이디 입력창에 있는 값을 스크립트 함수에 가져옴 
		입력 값을 ajax를 이용해 서버(백엔드(컨트롤러))로 보내고 결과값을 가져옴 
		결과값에 따라 사용가능 여부 메시지를 아이디 입력칸 옆에 출력 */
	function idOverlap(){
		var inputId = $("#mid").val();
		//var checkResult = $("#checkresult");
		var checkResult = document.getElementById("checkresult");
		console.log(inputId);
		/* JSON(JavaScript Object Notation) */
		$.ajax({
			type: "post", // 전송방법 
			url: "idoverlap", // 요청주소
			data: {"mid": inputId}, // 전송데이터
			dataType: "text", // 리턴데이터 형식
			success: function(result){
				if(result=="ok"){
					checkResult.style.color = "green";
					checkResult.innerHTML = "사용가능한 ID 입니다";
				} else {
					checkResult.style.color = "red";
					checkResult.innerHTML = "이미 사용중인 ID 입니다";
				}
			},
			error: function(){
				alert("오타가 있지는 않나요?");
			}
		});
	}
</script>

</head>
<body>
	<h2>MemberJoin.jsp</h2>
	<form action="memberjoin" method="post">
		아이디 : <input type="text" name="mid" id="mid" onkeyup="idOverlap()">
				<span id="checkresult"></span> <br>
		비밀번호 : <input type="text" name="mpassword"> <br>
		이름 : <input type="text" name="mname"> <br>
		전화번호 : <input type="text" name="mphone"> <br>
		이메일 : <input type="text" name="memail"> <br>
		생년월일 : <input type="date" name="mbirth"> <br>
		<input type="submit" value="회원가입">
	</form>
</body>
</html>





