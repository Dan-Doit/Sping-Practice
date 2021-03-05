<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<c:if test="${!empty msg}"><script>alert('${msg}')</script></c:if>
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
			<h1>Board</h1>
			<p> </p>
			<p> </p>

			<div class="col-md-10 col-md-offset-1">

				<div class="panel panel-default panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<h3 class="panel-title">Panel Heading</h3>
							</div>
							<div class="col col-xs-6 text-right">
								<button type="button" class="btn btn-sm btn-primary btn-create"  onclick="location.href='getBWF'">Create
									New</button>
							</div>
						</div>
					</div>

					<div class="panel-body">
						<table class="table table-striped table-bordered table-list">
							<thead>
								<tr>
									
									<th class="hidden-xs" align="center">Number</th>
									<th class="hidden-xs" align="center">Title</th>
									<th class="hidden-xs" align="center">Name</th>
									<th class="hidden-xs" align="center">Date</th>
										<th class="hidden-xs" align="center"><em class="fa fa-cog"></em></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${boardlist}">
									<tr>
										
										<td>${list.bnumber}</td>
										<td><a
											href="BoardView?bnumber=${list.bnumber}&&page=${paging.page}">${list.btitle}</a></td>
										<td>${list.bwriter}</td>
										<td>${list.bdate}</td>
										<c:if test = "${mname eq 'ADMIN' or mname eq list.bwriter}">
										<td align="center">
										<a onclick="BnumUpdate(${list.bnumber},${paging.page})" class="btn btn-default"><em class="fa fa-pencil"></em></a>
										<a onclick="Realdelete(${list.bnumber})" class="btn btn-danger"><em class="fa fa-trash"></em></a></td>
										</c:if>
									</tr>
								</c:forEach>
							</tbody>
						</table>

					</div>
					<div class="panel-footer">
						<div class="row">
							<div class="col col-xs-4">Page ${paging.startPage} of
								${paging.endPage}</div>
							<div class="col col-xs-8">
							
								<ul class="pagination hidden-xs pull-right">
								
								<c:if test="${paging.page<=1}">	«&nbsp;	</c:if>

									<c:if test="${paging.page>1}">
										<li><a href="boardlistpaging?page=${paging.page-1}">«&nbsp;</a></li>
									</c:if>
									
									
									<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
										var="i" step="1">
																			
										<c:choose>
											<c:when test="${i eq paging.page}">
												<li>${i}</li>
											</c:when>
											<c:otherwise>
												<li><a href="boardlistpaging?page=${i}">${i}</a></li>
											</c:otherwise>
										</c:choose>
																			
									</c:forEach>
									<c:if test="${paging.page>=paging.maxPage}">
										»
									</c:if>

									<c:if test="${paging.page<paging.maxPage}">
										<li><a href="boardlistpaging?page=${paging.page+1}">»</a></li>
									</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<article class="bg-secondary mb-3">
		<div class="card-body text-center">
			<h4 class="text-white">
				HTML UI KIT <br> Ready to use Bootstrap 4 components and
				templates
			</h4>
			<p class="h5 text-white">for Ecommerce, marketplace, booking
				websites and product landing pages</p>
			<br>
			<p>
				<a class="btn btn-warning" target="_blank"
					href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com
					<i class="fa fa-window-restore "></i>
				</a>
			</p>
		</div>
		<br> <br>
	</article>
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

function BnumUpdate(bnumber,page) {
	location.href="BoardListUpdate?bnumber="+bnumber+"&&page="+page;
}
</script>
</html>