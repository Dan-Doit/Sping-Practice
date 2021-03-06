<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel='stylesheet' type='text/css'>

<style>
.dropbtn {
	background-color: rgb(52, 58, 64);
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}

.cta-100 {
	margin-top: 100px;
	padding-left: 8%;
	padding-top: 7%;
}

.col-md-4 {
	padding-bottom: 20px;
}

.white {
	color: #fff !important;
}

.mt {
	float: left;
	margin-top: -20px;
	padding-top: 20px;
}

.bg-blue-ui {
	background-color: #708198 !important;
}

figure img {
	width: 300px;
}

#blogCarousel {
	padding-bottom: 100px;
}

.blog .carousel-indicators {
	left: 0;
	top: -50px;
	height: 50%;
}

/* The colour of the indicators */
.blog .carousel-indicators li {
	background: #708198;
	border-radius: 50%;
	width: 8px;
	height: 8px;
}

.blog .carousel-indicators .active {
	background: #0fc9af;
}

.item-carousel-blog-block {
	outline: medium none;
	padding: 15px;
}

.item-box-blog {
	border: 1px solid #dadada;
	text-align: center;
	z-index: 4;
	padding: 20px;
}

.item-box-blog-image {
	position: relative;
}

.item-box-blog-image figure img {
	width: 100%;
	height: auto;
}

.item-box-blog-date {
	position: absolute;
	z-index: 5;
	padding: 4px 20px;
	top: -20px;
	right: 8px;
	background-color: #41cb52;
}

.item-box-blog-date span {
	color: #fff;
	display: block;
	text-align: center;
	line-height: 1.2;
}

.item-box-blog-date span.mon {
	font-size: 18px;
}

.item-box-blog-date span.day {
	font-size: 16px;
}

.item-box-blog-body {
	padding: 10px;
}

.item-heading-blog a h5 {
	margin: 0;
	line-height: 1;
	text-decoration: none;
	transition: color 0.3s;
}

.item-box-blog-heading a {
	text-decoration: none;
}

.item-box-blog-data p {
	font-size: 13px;
}

.item-box-blog-data p i {
	font-size: 12px;
}

.item-box-blog-text {
	max-height: 100px;
	overflow: hidden;
}

.mt-10 {
	float: left;
	margin-top: -10px;
	padding-top: 10px;
}

.btn.bg-blue-ui.white.read {
	cursor: pointer;
	padding: 4px 20px;
	float: left;
	margin-top: 10px;
}

.btn.bg-blue-ui.white.read:hover {
	box-shadow: 0px 5px 15px inset #4d5f77;
}

/*테이블 css*/
.panel-table .panel-body {
	padding: 0;
}

.panel-table .panel-body .table-bordered {
	border-style: none;
	margin: 0;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type {
	text-align: center;
	width: 100px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:last-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:last-of-type {
	border-right: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:first-of-type {
	border-left: 0px;
}

.panel-table .panel-body .table-bordered>tbody>tr:first-of-type>td {
	border-bottom: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr:first-of-type>th {
	border-top: 0px;
}

.panel-table .panel-footer .pagination {
	margin: 0;
}

/*
used to vertically center elements, may need modification if you're not using default sizes.
*/
.panel-table .panel-footer .col {
	line-height: 34px;
	height: 34px;
}

.panel-table .panel-heading .col h3 {
	line-height: 30px;
	height: 30px;
}

.panel-table .panel-body .table-bordered>tbody>tr>td {
	line-height: 34px;
}

.comment-box {
	margin-top: 30px !important;
}
/* CSS Test end */
.comment-box img {
	width: 50px;
	height: 50px;
}

.comment-box .media-left {
	padding-right: 10px;
	width: 65px;
}

.comment-box .media-body p {
	border: 1px solid #ddd;
	padding: 10px;
}

.comment-box .media-body .media p {
	margin-bottom: 0;
}

.comment-box .media-heading {
	background-color: #f5f5f5;
	border: 1px solid #ddd;
	padding: 7px 10px;
	position: relative;
	margin-bottom: -1px;
}

.comment-box .media-heading:before {
	content: "";
	width: 12px;
	height: 12px;
	background-color: #f5f5f5;
	border: 1px solid #ddd;
	border-width: 1px 0 0 1px;
	-webkit-transform: rotate(-45deg);
	transform: rotate(-45deg);
	position: absolute;
	top: 10px;
	left: -6px;
}
</style>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel='stylesheet' type='text/css'>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"> <!-- <img class="logo"
			src="http://bootstrap-ecommerce.com/main/images/logo-white.png"
			height="40">  -->Soyun Jung
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar1" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbar1">
			<div class="navbar-nav ml-auto">
				<div class="nav-item active">
					<a class="nav-link" href="getIndex">Home <span class="sr-only">(current)</span></a>
				</div>
				<div class="nav-item">
					<a class="nav-link" href="boardlistpaging"> Board </a>
				</div>
				<div class="nav-item dropdown">
					<a class="nav-link  dropdown-toggle dropbtn" href="#"
						data-toggle="dropdown"> ${mname}님 </a>
					<div class="dropdown-content">
						<a class="dropdown-item" href="MyPage"> 마이페이지</a> <a
							class="dropdown-item" href="memberlogout"> 로그아웃 </a>
					</div>
				</div>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<p></p>
			<h1>
				Board <Br>Detail
			</h1>
			<p> </p>
			<p> </p>
			<div class="col-md-10 col-md-offset-1">

				<div class="panel panel-default panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<h3 class="panel-title">${board.btitle}</h3>
							</div>
							<div class="col col-xs-6 text-right">

								<ul class="pagination hidden-xs pull-right">
									<c:if test="${board.bwriter eq mid || mid eq '1001'}">
										<li><a
											href="getBUF?bnumber=${board.bnumber}&&btitle=${board.btitle}&&bdate=${board.bdate}&&bhits=${board.bhits}&&bcontents=${board.bcontents}&&bfilename=${board.bfilename}&&page=${page}">
												edit</a></li>

										<li><a onclick="Realdelete(${board.bnumber})">delete</a></li>

									</c:if>
									<button type="button" class="btn btn-sm btn-primary btn-create" onclick="location.href='getBWF'">Create New</button>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<table class="table table-striped table-bordered table-list">
							<tr>
								<th>글넘버</th>
								<td>${board.bnumber}</td>
								<input type="hidden" name="bnumber" value="${board.bnumber}">
								<th>작성날짜</th>
								<td>${board.bdate}</td>
								<input type="hidden" name="bdate" value="${board.bdate}">
							</tr>
							<tr>
								<th>작성자</th>
								<td>${board.bwriter}</td>
								<input type="hidden" name="bwriter" value="${board.bwriter}">
								<th>조회수</th>
								<td>${board.bhits}</td>
								<input type="hidden" name="bhits" value="${board.bhits}">
							</tr>
							<tr>
								<th>내용</th>
								<td colspan="3">${board.bcontents}</td>
								<input type="hidden" name="bcontents" value="${board.bcontents}">
							</tr>

							<tr>
								<td>첨부파일</td>
								<td colspan="3"><img
									src="resources/uploadFile/${board.bfilename}" width="600"></td>
							</tr>
							<input type="hidden" name="bfilename" value="${board.bfilename}">

						</table>

					</div>

					<div class="col col-xs-6 text-right">
						<br>
						<br>

						<!-- comment -->

						<div id="commentArea"></div>
	
						<div id="commentwrite">
							<div class="media comment-box">
								<div class="media-left">
									<a href="#"> <img class="img-responsive user-photo"
										src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
									</a>
								</div>
								
								<div class="media-body">
									<h4 class="media-heading">${mname}</h4>
									<input type="hidden" id="cwriter" value="${mname}">
									내용 : <p><input type="text" id="ccontents"></p>
								</div>
								<button id="commentWriteBtn">댓글작성</button>
							</div>
						</div>
						<button onclick="location.href='boardlistpaging?page=${page}'">LIST</button>
					</div>


				</div>
			</div>
		</div>
	</div>

</body>

<script>

function Realdelete(bnumber) {
	var realD = confirm("정말 삭제하시겠습니까?");
	if(realD == true){
		location.href="BoardDelete?bnumber="+bnumber;
	}
	else if(realD == false){
	  	history.go(-1);
	}	
}

$(document).ready(function(){
	var cbnumber='${board.bnumber}';
	$.ajax({
		type:"post",
		url:"comment/getComments",
		data:{"cbnumber":cbnumber},
		dataType:"json",
		success:function(result){
			console.log(result);
               var output = '<div class="media comment-box">';
              
               for(var i in result) {
				  output += '<div class="media-left">';
                  output += '<a href="#"> <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png"></a>';
                  output += "</div>";
				  output += '<div class="media-body">';
				  output += '<h4 class="media-heading">'+ result[i].cwriter+"</h4>";
				  output += "<p>" + result[i].ccontents+"</p>";
                  output += "</div>";
               }
               output += "</div>"; 
               output += "<br>";
               $("#commentArea").html(output);
		},
			error:function(){
				console.log("댓글불러오기실패");
			}
		})
	})
	
	$("#commentWriteBtn").click(function(){
		var cwriter = "${mname}";
		var ccontents=$("#ccontents").val();
		var cbnumber='${board.bnumber}';
		$.ajax({
			type:"post",
			url:"comment/commentwrite",
			data:{
				"cwriter":cwriter,
				"ccontents":ccontents,
				"cbnumber":cbnumber
				},
			dataType:"json",
			success:function(result){
				console.log(result);
	               var output = '<div class="media comment-box">';
	               
	               for(var i in result) {
					  output += '<div class="media-left">';
	                  output += '<a href="#"> <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png"></a>';
	                  output += "</div>";
					  output += '<div class="media-body">';
					  output += '<h4 class="media-heading">'+ result[i].cwriter+"</h4>";
					  output += "<p>" + result[i].ccontents+"</p>";
	                  output += "</div>";
	               }
	               output += "</div>";
	               output += "<br>";
	               $("#commentArea").html(output);
	               $("#cwriter").val("");
	               $("#ccontents").val("");
			},
			error:function(){
				console.log("댓글등록실패");
			}
		})
	});
	
	
</script>
</html>