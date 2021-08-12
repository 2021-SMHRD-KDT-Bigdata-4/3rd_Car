<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
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
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
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
									<a href="index.html" class="logo"><strong>당신의 안전을 책임지는  co-car</strong>
									<c:if test="${MembersVO!=null}">${MembersVO.member_name}님 방문을 환영합니다.</c:if></a>
									<ul class="icons">
										<li><a href="${cpath}/logoutAjax.do"> Logout</a></li>
									</ul>
								</header>

							<!-- Banner -->
							
							    <br/>
							    <div class="content">
							    	<a href="mypage.jsp" class="button big">일자별 졸음 알람(주간)</a>&nbsp&nbsp&nbsp
							    	<a href="mypage.jsp" class="button big">시간별 졸음 알람(주간)</a>
							    </div>
							    
							    <br />
							    
							    <div>
							    	<a href="mypage.jsp" class="button big">일자별 졸음 알람(월간)</a>&nbsp&nbsp&nbsp
							    	<a href="mypage.jsp" class="button big">시간별 졸음 알람(월간)</a>
							    </div>
							   
								<br/>
								<br/>
								<br/>

							<!-- Section -->
								  
									<header class="major">
										<h2>일자별 졸음 알람(주간)</h2>
									</header>
									
									<br/>
									<br/>
									<br/>
									<br/>
									<p> 여기에 차트나 그래프! </p>
									<br/>
									<br/>
									<br/>
									<br/>
									
									<p>총 알람 횟수 : sum</p>
									<p>평균알람 횟수 : sum/7</p>

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
										
										<li><a href="mypage.jsp">마이페이지
										<!-- 여기는 오늘 하루 알람 보여주는 페이지 -->
										</a></li>
										<li>
											<span class="opener">알람</span>
											<ul>
												<li><a href="useralarm1">일자별 졸음 알람(주간)</a></li>
												<li><a href="useralarm2">시간별 졸음 알람(주간)</a></li>
												<li><a href="useralarm3">일자별 졸음 알람(월간)</a></li>
												<li><a href="useralarm4">시간별 졸음 알람(월간)</a></li>
											</ul>
										</li>
										<li><a href="informagion.jsp">정보</a></li>
										
									</ul>
								</nav>


							<!-- Section -->
								<section>
									<header class="major">
										<h2>Get in touch</h2>
									</header>
									<p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
									<ul class="contact">
										<li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
										<li class="icon solid fa-phone">(000) 000-0000</li>
										<li class="icon solid fa-home">1234 Somewhere Road #8254<br />
										Nashville, TN 00000-0000</li>
									</ul>
									<ul class="actions">
										<li><a href="#" class="button">More</a></li>
									</ul>
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; 제작자 : 빈솬조 <a href="https://unsplash.com">/이미지 참조</a> <a href="https://html5up.net">/디자인 참조</a>.</p>
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