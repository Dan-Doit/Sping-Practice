<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>


</head>
<body>
	
	<form action="registration" method="post">
		아이디 : <input type="text" name="mid" id="mid"><span id="result"></span>
		비밀번호 : <input type="text" name="mpwd">
		이름 : <input type="text" name="mname">
		전화번호 : <input type="text" name="mphone">
		이메일 : <input type="text" name="memail">
		생년월일 : <input type="text" name="mbirth">
		
		<input type="submit" value="제출하기!">
	
	</form>
	
</body>

<script>

	$("#mid").change(()=>{
		let mid = $("#mid").val();
		let result = document.querySelector('#result');
			
		$.ajax({
			data : {"mid":mid},
			url : 'checkid',
			type : 'post',
			dataType:'text',
			success:(data)=>{
				console.log(data);
				if(data=='into'){
					result.style.color = "skyblue";
					result.innerHTML = "사용가능한 아이디입니다.";
				}else{
					result.style.color = "red";
					result.innerHTML = "사용할수 없는 아이디입니다.";
				}
				
			},
			erorr:(data)=>{
				console.log(data);
			},
		});
	});
</script>

</html>