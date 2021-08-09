<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Car</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="resources/assets/css/index.css" />

</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a href="index.html" class="logo"><strong>당신의 안전을 책임지는</strong>
						co-car</a>
					<ul class="icons">
						<li><a href="login.jsp">Login / Logout</a></li>
					</ul>
				</header>


				<!-- Section -->
				
				
				
				
				<section>
					<header class="major">
						<h2>알람 설정</h2>
					</header>
					
					<div class="row">
						<div class="col-6 col-12-xsmall">
						<h3>&nbsp&nbsp&nbsp알람 종류  </h3>
						</div>
						
						<br />
						<br />
						<br />
						<br />
						
						<div class="col-6 col-12-xsmall">
						
						<!-- 알람 종류 -->
						<select name="demo-category" id="demo-category">
							<option value="">- 알람을 선택해주세요 -</option>
							<option value="1">알람1</option>
							<option value="2">알람2</option>
							<option value="3">알람3</option>
							<option value="4">알람4</option>
						</select>
						</div>
						
					</div>
					
					
					<div class="row">
						<div class="col-6 col-12-xsmall">
						<h3>&nbsp&nbsp&nbsp소리 조절 </h3>
					</div>
						
					<br />
					<br />
					<br />
					<br />
						
						
					<div class="col-6 col-12-xsmall">
						
						<!-- 음량 크기 -->
						<select name="demo-category" id="demo-category">
							<option value="">- 음량을 선택해주세요 -</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
						</div>
					</div>
					
					
					<!-- more 버튼
					
					<ul class="actions">
						<li><a href="basic1.jsp" class="button big">Learn More</a></li>
					</ul> 
						-->


				</section>

			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->
				<section id="search" class="alt">
					<form method="post" action="#">
						<input type="text" name="query" id="query" placeholder="Search" />
					</form>
				</section>

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Menu</h2>
					</header>
					<ul>
						<li><a href="usermain.jsp">메인</a></li>
						<li><span class="useralarm.jsp">알람</span>
							<ul>
								<li><a href="#">일자별 졸음 알람(주간)</a></li>
								<li><a href="#">시간별 졸음 알람(주간)</a></li>
								<li><a href="#">일자별 졸음 알람(월간)</a></li>
								<li><a href="#">시간별 졸음 알람(월간)</a></li>
							</ul></li>
						<li><a href="informagion.jsp">정보</a></li>
						<li><a href="setting.jsp">설정</a></li>
					</ul>
				</nav>

				<!-- Section -->
				<section>
					<header class="major">
						<h2>잘나가company</h2>
					</header>
					<div class="mini-posts">
						<article>
							<a href="#" class="image"><img
								src="resources/images/pic07.jpg" alt="" /></a>
							<p>Aenean ornare velit lacus, ac varius enim lorem
								ullamcorper dolore aliquam.</p>
						</article>
					</div>

				</section>

				<!-- Section -->
				<section>
					<header class="major">
						<h2>스마트인재개발원</h2>
					</header>
					<p>김은혜, 고희경, 남수환, 박윤빈, 신근아</p>
					<ul class="contact">
						<li class="icon solid fa-envelope"><a href="#">E-Mail :
								smhrd@smhrd.or.kr</a></li>
						<li class="icon solid fa-phone">TEL. 062-655-3509</li>
						<li class="icon solid fa-home">스마트인재 개발원<br /> 광주광역시 남구
							송암로60 광주CGI센터 2층 <br />FAX. 062-655-3510
						</li>
					</ul>
					<ul class="actions">
						<li><a href="#" class="button">More</a></li>
					</ul>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">
						&copy; 제작자 : 빈솬조 <a href="https://unsplash.com">/이미지 참조</a> <a
							href="https://html5up.net">/디자인 참조</a>.
					</p>
				</footer>

			</div>
		</div>

	</div>

	<!-- Scripts -->
	<script src="resources/assets/js/jquery.min.js"></script>
	<script src="resources/assets/js/browser.min.js"></script>
	<script src="resources/assets/js/breakpoints.min.js"></script>
	<script src="resources/assets/js/util.js"></script>
	<script src="resources/assets/js/main.js"></script>

</body>
</html>