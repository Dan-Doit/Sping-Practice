<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
	Aesthetic by gettemplates.co
	Twitter: http://twitter.com/gettemplateco
	URL: http://gettemplates.co
-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Savory &mdash; Free Website Template, Free HTML5 Template
	by GetTemplates.co</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by GetTemplates.co" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
<meta name="author" content="GetTemplates.co" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="./resources/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="./resources/css/icomoon.css">
<!-- Themify Icons-->
<link rel="stylesheet" href="./resources/css/themify-icons.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="./resources/css/bootstrap.css">

<!-- Magnific Popup -->
<link rel="stylesheet" href="./resources/css/magnific-popup.css">

<!-- Bootstrap DateTimePicker -->
<link rel="stylesheet" href="./resources/css/bootstrap-datetimepicker.min.css">

<!-- Owl Carousel  -->
<link rel="stylesheet" href="./resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="./resources/css/owl.theme.default.min.css">

<!-- Theme style  -->
<link rel="stylesheet" href="./resources/css/style.css">

<!-- Modernizr JS -->
<script src="./resources/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->


</head>
<body>

	<div class="gtco-loader"></div>

	<div id="page">


		<!-- <div class="page-inner"> -->
		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">

				<div class="row">
					<div class="col-sm-4 col-xs-12">
						<div id="gtco-logo">
							<a href="index">New Folder <em>.</em></a>
						</div>
					</div>
					<div class="col-xs-8 text-right menu-1">
						<ul>
							<li class="has-dropdown"><a href="GetFoodsInfo">Contents</a>
								<ul class="dropdown">
									<li><a href="GetFoodsInfo">VS Game</a></li>
									<li><a href="RandomRecommendControll">Recommend</a></li>
									<li><a href="getTopFoodsInfo">Top Ranks</a></li>
								</ul></li>
							<li class="has-dropdown"><a
								href="FoodsInfoControll?foodeCode=01">Foods</a>
								<ul class="dropdown">
									<li><a href="FoodsInfoControll?foodeCode=01">Korean
											Foods</a></li>
									<li><a href="FoodsInfoControll?foodeCode=02">Western
											Foods</a></li>
									<li><a href="FoodsInfoControll?foodeCode=03">Chinese
											Foods</a></li>
									<li><a href="FoodsInfoControll?foodeCode=04">Asian
											Foods</a></li>
									<li><a href="FoodsInfoControll?foodeCode=05">Fast
											Foods</a></li>
									<li><a href="FoodsInfoControll?foodeCode=06">Coffee&Dessert</a></li>
								</ul></li>
							<!-- <li><a href="foods.html">Foods</a></li> -->
							<li><a href="GetCouponInfo">Event</a></li>
							<li><a href="community">Community</a></li>
							<li class="btn-cta"><a href="index"><span>Sign-up</span></a></li>

						</ul>
					</div>
				</div>

			</div>
		</nav>

		<header id="gtco-header" class="gtco-cover gtco-cover-md"
			role="banner" style="background-image: url(./resources/images/img_bg_1.jpg)"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-left">


						<div class="row row-mt-15em">
							<div class="col-md-7 mt-text animate-box"
								data-animate-effect="fadeInUp">
								<span class="intro-text-small">The greatest problem ever
									I thought...</span>
								<h1 class="cursive-font">What should we eat today?</h1>
							</div>
							<div class="col-md-4 col-md-push-1 animate-box"
								data-animate-effect="fadeInRight">
								<div class="form-wrap">
									<div class="tab">

										<div class="tab-content">
											<div class="tab-content-inner active" data-content="signup">
												<h3 class="cursive-font">Sign-in</h3>
												<form action="logInControll" method="post">
													<div class="row form-group">
														<div class="col-md-12">
															<label>ID</label> <input type="text" id="ID"
																class="form-control" required autofocus
																placeholder="type your ID" name="id">
														</div>
													</div>
													<div class="row form-group">
														<div class="col-md-12">
															<label>Password</label> <input type="Password"
																id="Password" class="form-control" required
																placeholder="type your PW" name="pwd">
														</div>
													</div>
													<div class="Loginbtn">

														<input type="submit" class="btn btn-primary btn-block"
															value="Sign-in">

													</div>
												</form>
											</div>


										</div>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		</header>

		<div id="gtco-counter" class="gtco-section">
			<div class="gtco-container">

				<div class="row">
					<div
						class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
						<h2 class="cursive-font primary-color">Today</h2>
						<p>Thanks for use :)</p>
					</div>
				</div>

				<div class="row">

					<div class="col-md-3 col-sm-6 animate-box"
						data-animate-effect="fadeInUp">
						<div class="feature-center">
							<span class="counter js-counter" data-from="0" data-speed="5000"
								data-refresh-interval="50" id="todaylogin">1</span> <span
								class="counter-label">Log-in</span>

						</div>
					</div>
					<div class="col-md-3 col-sm-6 animate-box"
						data-animate-effect="fadeInUp">
						<div class="feature-center">
							<span class="counter js-counter" data-from="0" data-speed="5000"
								data-refresh-interval="50" id="todaygame">1</span> <span
								class="counter-label">VS Game</span>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 animate-box"
						data-animate-effect="fadeInUp">
						<div class="feature-center">
							<span class="counter js-counter" data-from="0" data-speed="5000"
								data-refresh-interval="50" id="totalstore">1</span> <span
								class="counter-label">Stores</span>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 animate-box"
						data-animate-effect="fadeInUp">
						<div class="feature-center">
							<span class="counter js-counter" data-from="0" data-speed="5000"
								data-refresh-interval="50" id="totalreview">1</span> <span
								class="counter-label">Reviews</span>

						</div>
					</div>

				</div>
			</div>
		</div>

		<div id="contentsVS" class="gtco-section">
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
						<h2 class="cursive-font primary-color">Contents</h2>
						<p>You can do eat</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-6">
						<a href="./resources/images/vs4.png" class="fh5co-card-item image-popup">
							<figure>
								<div class="overlay">
								</div>
								<img src="./resources/images/vs4.png" alt="Image" class="img-responsive">
							</figure>
							<div class="fh5co-text">
								<h2 class="cursive-font primary-color" style="font-size: 3rem;">VS
									Game</h2>
								<p>I will help your choice !</p>
								<!-- <p><span class="price cursive-font">$19.15</span></p> -->
							</div>
						</a>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6">
						<a href="./resources/images/gps.jpg" class="fh5co-card-item image-popup">
							<figure>
								<div class="overlay">
								</div>
								<img src="./resources/images/gps.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="fh5co-text">
								<h2 class="cursive-font primary-color" style="font-size: 3rem;">Recommend</h2>
								<p>If you are looking for interesting food, Click!</p>
								<!-- <p> Press here !</p> -->
								<!-- <p><span class="price cursive-font">$20.99</span></p> -->
							</div>
						</a>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6"
						style="padding-bottom: 10vw;">
						<a href="./resources/images/best2.jpg" class="fh5co-card-item image-popup">
							<figure>
								<div class="overlay">
								</div>
								<img src="./resources/images/best2.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="fh5co-text">
								<h2 class="cursive-font primary-color" style="font-size: 3rem;">Ranking</h2>
								<p>If you are looking for interesting food, Click!</p>
								<!-- <p> Press here !</p> -->
								<!-- <p><span class="price cursive-font">$20.99</span></p> -->
							</div>
						</a>
					</div>

					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
						<h2 class="cursive-font primary-color">Foods</h2>
						<p>What is your choice?</p>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-6">
						<a href="./resources/images/krfd11.jpeg" class="fh5co-card-item image-popup">
							<figure>
								<div class="overlay">
								</div>
								<img src="./resources/images/krfd11.jpeg" alt="Image" class="img-responsive">
							</figure>
							<div class="fh5co-text">
								<h2 class="cursive-font primary-color" style="font-size: 3rem;">Korean
									Food</h2>
								<p>Enjoy various Korean foods</p>
								<!-- <p><span class="price cursive-font">$8.99</span></p> -->

							</div>
						</a>
					</div>


					<div class="col-lg-4 col-md-4 col-sm-6">
						<a href="./resources/images/asfd11.jpg" class="fh5co-card-item image-popup">
							<figure>
								<div class="overlay">
								</div>
								<img src="./resources/images/asfd11.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="fh5co-text">
								<h2 class="cursive-font primary-color" style="font-size: 3rem;">Asian
									Food</h2>
								<p>Thai & Japanese</p>
								<!-- <p><span class="price cursive-font">$12.99</span></p> -->
							</div>
						</a>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-6">
						<a href="./resources/images/chfd.jpg" class="fh5co-card-item image-popup">
							<figure>
								<div class="overlay">
								</div>
								<img src="./resources/images/chfd.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="fh5co-text">
								<h2 class="cursive-font primary-color" style="font-size: 3rem;">Chinese
									Food</h2>
								<p>Enjoy various Chinese foods</p>
								<!-- <p><span class="price cursive-font">$23.10</span></p> -->
							</div>
						</a>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-6">
						<a href="./resources/images/wtfd.jpg" class="fh5co-card-item image-popup">
							<figure>
								<div class="overlay">
								</div>
								<img src="./resources/images/wtfd.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="fh5co-text">
								<h2 class="cursive-font primary-color" style="font-size: 3rem;">Western
									Food</h2>
								<p>Enjoy various Western foods</p>
								<!-- <p><span class="price cursive-font">$5.59</span></p> -->
							</div>
						</a>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6">
						<a href="./resources/images/ftfd5.jpg" class="fh5co-card-item image-popup">
							<figure>
								<div class="overlay">
								</div>
								<img src="./resources/images/ftfd5.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="fh5co-text">
								<h2 class="cursive-font primary-color" style="font-size: 3rem;">Fast
									Food</h2>
								<p>Enjoy various Korean foods</p>
								<!-- <p><span class="price cursive-font">$8.99</span></p> -->

							</div>
						</a>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6">
						<a href="./resources/images/cfdt2.jpg" class="fh5co-card-item image-popup">
							<figure>
								<div class="overlay">
								</div>
								<img src="./resources/images/cfdt2.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="fh5co-text">
								<h2 class="cursive-font primary-color" style="font-size: 3rem;">Coffee
									& Dessert</h2>
								<p>Enjoy various Korean foods</p>
								<!-- <p><span class="price cursive-font">$8.99</span></p> -->

							</div>
						</a>
					</div>

				</div>
			</div>
		</div>

		<div id="gtco-features">
			<div class="gtco-container">
				<div class="row">
					<div
						class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
						<h2 class="cursive-font">Our Services</h2>
						<p>
							We have been always worried What should we eat today?</br> But from
							now on, Don't worry about it anymore
						</p>
						<p>Just do eat !</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="feature-center animate-box"
							data-animate-effect="fadeIn">
							<span class="icon"> <a href="#contentsVS"><i
									class="ti-face-smile"></i></a>
							</span>
							<h3>Is eat fun? It is fun!</h3>
							<p>
								Try ”VS game” !</br> If choosing the menu make you stressed out!
							</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="feature-center animate-box"
							data-animate-effect="fadeIn">
							<span class="icon"> <a href="#contentsVS"><i
									class="ti-thought"></i></a>
							</span>
							<h3>Where are you?</h3>
							<p>
								Click the 'recommend' and then look around!</br> You'll find a good
								place that you didn't know.
							</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="feature-center animate-box"
							data-animate-effect="fadeIn">
							<span class="icon"> <a href="#gtco-subscribe"><i
									class="ti-truck"></i></a>
							</span>
							<h3>You are lucky !</h3>
							<p>
								As soon as press the ”APPLY”</br> You can get something lucky!
							</p>
						</div>
					</div>


				</div>
			</div>
		</div>


		<div class="gtco-cover gtco-cover-sm"
			style="background-image: url(./resources/images/img_bg_1.jpg)"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="gtco-container text-center">
				<div class="display-t">
					<div class="display-tc">
						<h1>&ldquo; Just do eat &rdquo;</h1>
						<p>&mdash; New Folder of ICIA.</p>
					</div>
				</div>
			</div>
		</div>

		<!-- <div id="gtco-counter" class="gtco-section">
		<div class="gtco-container">

			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2 class="cursive-font primary-color">Fun Facts</h2>
					<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
				</div>
			</div>

			<div class="row">
				
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter js-counter" data-from="0" data-to="5" data-speed="5000" data-refresh-interval="50">1</span>
						<span class="counter-label">Avg. Rating</span>

					</div>
				</div>
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter js-counter" data-from="0" data-to="43" data-speed="5000" data-refresh-interval="50">1</span>
						<span class="counter-label">Food Types</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter js-counter" data-from="0" data-to="32" data-speed="5000" data-refresh-interval="50">1</span>
						<span class="counter-label">Chef Cook</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter js-counter" data-from="0" data-to="1985" data-speed="5000" data-refresh-interval="50">1</span>
						<span class="counter-label">Year Started</span>

					</div>
				</div>
					
			</div>
		</div>
	</div> -->



		<div id="gtco-subscribe">
			<div class="gtco-container">
				<div class="row animate-box">
					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
						<h2 class="cursive-font">now on 10% off</h2>
						<p>
							Now on events</br> Get a specail price on here !
						</p>
					</div>
				</div>
				<div class="row animate-box">
					<div class="col-md-8 col-md-offset-4">
						<form class="form-inline" action="isCouponApply" method="post">
							
							<div class="col-md-6 col-sm-6">
								<button type="submit" class="btn btn-default btn-block">Apply</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<footer id="gtco-footer" role="contentinfo"
			style="background-image: url(./resources/images/img_bg_1.jpg)"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row row-pb-md">




					<div class="col-md-12 text-center">
						<div class="gtco-widget">
							<h3>Get In Touch</h3>
							<ul class="gtco-quick-contact">
								<li><a href="#"><i class="icon-phone"></i> 010 2190
										4168</a></li>
								<li><a href="#"><i class="icon-mail2"></i>kdh4168@naver.com</a></li>
								<li><a href="#"><i class="icon-chat"></i><span
										id="kakaoID1">Kakao</span></a></li>

							</ul>
							<ul class="gtco-quick-contact">
								<li><a href="#"><i class="icon-phone"></i> 010 3740
										6894</a></li>
								<li><a href="#"><i class="icon-mail2"></i>
										moonsj6894@naver.com</a></li>
								<li><a href="#"><i class="icon-chat"></i><span
										id="kakaoID2">Kakao</span></a></li>

							</ul>
							<ul class="gtco-quick-contact">
								<li><a href="#"><i class="icon-phone"></i>010 9525 1639 </a></li>
								<li><a href="#"><i class="icon-mail2"></i>
										gmlans9525@naver.com</a></li>
								<li><a href="#"><i class="icon-chat"></i><span
										id="kakaoID3">Kakao</span></a></li>

							</ul>
							<ul class="gtco-quick-contact">
								<li><a href="#"><i class="icon-phone"></i> 010 6615 0501</a></li>
								<li><a href="#"><i class="icon-mail2"></i>
										spqjeks@naver.com</a></li>
								<li><a href="#"><i class="icon-chat"></i><span
										id="kakaoID4">Kakao</span></a></li>
								<script>
								var kakaoid1 = document.getElementById("kakaoID1")
								kakaoid1.addEventListener("mouseover",()=>{kakaoid1.innerHTML="강동훈"});
								kakaoid1.addEventListener("mouseout",()=>{kakaoid1.innerHTML="Kakao"});
								
								var kakaoid2 = document.getElementById("kakaoID2")
								kakaoid2.addEventListener("mouseover",()=>{kakaoid2.innerHTML="문상진"});
								kakaoid2.addEventListener("mouseout",()=>{kakaoid2.innerHTML="Kakao"});
								
								var kakaoid3 = document.getElementById("kakaoID3")
								kakaoid3.addEventListener("mouseover",()=>{kakaoid3.innerHTML="유상민"});
								kakaoid3.addEventListener("mouseout",()=>{kakaoid3.innerHTML="Kakao"});
								
								var kakaoid4 = document.getElementById("kakaoID4")
								kakaoid4.addEventListener("mouseover",()=>{kakaoid4.innerHTML="조 단"});
								kakaoid4.addEventListener("mouseout",()=>{kakaoid4.innerHTML="Kakao"});
								</script>
							</ul>
						</div>
						<div class="gtco-widget">
							<h3>Get Social</h3>
							<ul class="gtco-social-icons">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-linkedin"></i></a></li>
								<li><a href="#"><i class="icon-dribbble"></i></a></li>

							</ul>
						</div>
					</div>

					<div class="col-md-12 text-center copyright">
						Made by <i class="fa fa-love"></i><a
							href="#">New Folder</a>
					</div>

				</div>



			</div>
		</footer>
		<!-- </div> -->

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="./resources/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="./resources/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="./resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="./resources/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="./resources/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="./resources/js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="./resources/js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="./resources/js/jquery.magnific-popup.min.js"></script>
	<script src="./resources/js/magnific-popup-options.js"></script>

	<script src="./resources/js/moment.min.js"></script>
	<script src="./resources/js/bootstrap-datetimepicker.min.js"></script>


	<!-- Main -->
	<script src="./resources/js/main.js"> </script>

	<script>
	   $(document).ready(function () {
		        $.ajax({ 
		            url : "LoadControll",
		            type: "post",
		            datatype : "json",
 		            success : function (data) {
		      			console.log(data)
		      			$("#todaylogin").attr('data-to',data.todayLogin);
		            	$("#todaygame").attr('data-to',data.todayGames);
		            	$("#totalstore").attr('data-to',data.totalStores);
		            	$("#totalreview").attr('data-to',data.totalReviews);
		            },
		            error : function (data) {
                         // 실패 할 경우 안내구문
		                alert("데이터를 불러올수없습니다.");
		            }
		        });
		});
	 </script>
</body>
</html>

