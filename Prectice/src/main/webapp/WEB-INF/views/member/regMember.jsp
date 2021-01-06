<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	
	<form action="member/regMember" method="post" enctype="multipart/form-data" id="regForm">
		아이디 : <input type="text" name="uid" id="uid"><span id="result"></span><br>
		비밀번호 : <input type="password" name="upwd"><br>
		이름 : <input type="text" name="uname"><br>
		생년월일 : <input type="date" name="ubirth"><br>
		이메일 : <input type="email" name="uemail"><br>
		주소 : <input type="email" name="uadd"><br>
		전화번호 : <input type="text" name="uphone" maxlength="11"><br>
		프로필사진 : <input type="file" name="uprofile"><br>
		남자 <input type="radio" value="남자" name="ugender">
		여자 <input type="radio" value="여자" name="ugender"><br>
		
		<input type="submit" id="btnSubmit" onclick="init()" value="제출하기!">
	
	</form>
	
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>

	$("#uid").change(()=>{
	
		let uid = $("#uid").val();
		let result = document.querySelector('#result');
		$.ajax({
			data : {"uid":uid},
			url : 'checkid',
			type : 'post',
			dataType:'text',
			success:(data)=>{
				console.log(data);
				if(data==0||data==""){
					result.style.color = "skyblue";
					result.innerHTML = "사용가능한 아이디입니다.";
				}else{
					result.style.color = "red";
					result.innerHTML = "사용할수 없는 아이디입니다.";
				}
				
			},
			erorr:(data)=>{
				alert("데이터 오류");
			},
		});
	});
	
	function init() {
		// do not evented submit 
		event.preventDefault();
		// get form data  
		var form = $('#regForm')[0];
		console.log(form);
		// create an form object
		var data = new FormData(form);
		// disabled the submit button
        $("#btnSubmit").prop("disabled", true);	
		
			$.ajax({
				data : data,
				url : 'regMember',
				type : 'post',
				dataType:'text',
	            processData: false,
	            contentType: false,
	            cache: false,
	            timeout: 600000,
				success:(result)=>{
					console.log(result);
					if(result==1){
						alert("complete");
		                $("#btnSubmit").prop("disabled", false);
		                
					}else{
						alert("fail");
		                $("#btnSubmit").prop("disabled", false);
					}
				},
				erorr:(data)=>{
	                console.log("ERROR : ", data);
	                $("#btnSubmit").prop("disabled", false);
	                alert("fail");
				},
			});
	}
	
</script>

</html>