<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="cpath" value="${pageContext.request.contextPath}"/>    
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
									<a  class="logo"><strong>당신의 안전을 책임지는  co-car</strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp " ${vo.username}"님 환영합니다.</a>
									<ul class="icons">
										<li><a href="${cpath}/logoutAjax.do"> Logout</a></li>
									</ul>
								</header>

							<!-- Banner -->
								<br/>
							    <div class="content">
							    	<input  type="submit" class="button big" style="font-size: 12px" value="운전시작" >&nbsp&nbsp&nbsp
							    	<input  type=button class="button big" style="font-size: 12px"  value="운전종료">&nbsp&nbsp&nbsp
							    
							    	<a href="mypage.jsp" class="button big" style="font-size: 12px">휴식 시작</a>&nbsp&nbsp&nbsp
							    	<a href="mypage.jsp" class="button big" style="font-size: 12px">휴식 종료</a>
							    </div>
				   
								<br/>
								<br/>
								<br/>
								

							<!-- Section -->
								  
									<header class="major">
										<h2>졸음 운전 알람</h2>
									</header>
									
									<!-- Advanced Tables -->
                    <div class="card">
                       
                        <div class="card-content">
<!-- 여기서부터 우리가 원하는 표 -->
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>날짜</th>
                                            <th>운전 시작시간</th>
                                            <th>운전 종료 시간</th>
                                            <th>졸음 운전 알람 횟수</th>
                                            <th>비   고</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>Trident</td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">4</td>
                                            <td class="center">X</td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>Trident</td>
                                            <td>Internet Explorer 5.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">5</td>
                                            <td class="center">C</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
 <!-- 여기까지가 표다!! -->
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
				
				
				<!-- 버튼 2 css에 이거 넣기!
				float : right;
 				margin-right : 50px;
				 -->
									
								
								
								
<!-- 두 번째 표 구역 -->
								<section>
									<header class="major">
										<h2>휴식 시간 알람</h2>
									</header>
									
									<!-- Advanced Tables -->
                    <div class="card">
                       
                        <div class="card-content">
<!-- 여기서부터 우리가 원하는 표 -->
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>날짜</th>
                                            <th>휴식 시작시간</th>
                                            <th>휴식 종료시간</th>
                                            <th>휴식 총 알람 횟수</th>
                                            <th>비   고</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>Trident</td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">4</td>
                                            <td class="center">X</td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>Trident</td>
                                            <td>Internet Explorer 5.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">5</td>
                                            <td class="center">C</td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>Trident</td>
                                            <td>Internet Explorer 5.5</td>
                                            <td>Win 95+</td>
                                            <td class="center">5.5</td>
                                            <td class="center">A</td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>Trident</td>
                                            <td>Internet Explorer 6</td>
                                            <td>Win 98+</td>
                                            <td class="center">6</td>
                                            <td class="center">A</td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>Trident</td>
                                            <td>Internet Explorer 7</td>
                                            <td>Win XP SP2+</td>
                                            <td class="center">7</td>
                                            <td class="center">A</td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>Trident</td>
                                            <td>AOL browser (AOL desktop)</td>
                                            <td>Win XP</td>
                                            <td class="center">6</td>
                                            <td class="center">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>Gecko</td>
                                            <td>Firefox 1.0</td>
                                            <td>Win 98+ / OSX.2+</td>
                                            <td class="center">1.7</td>
                                            <td class="center">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>Gecko</td>
                                            <td>Firefox 1.5</td>
                                            <td>Win 98+ / OSX.2+</td>
                                            <td class="center">1.8</td>
                                            <td class="center">A</td>
                                        </tr>
                                        
                                    
                                    </tbody>
                                </table>
                                                
                                    <br/>
                                    <br/>
                                    <br/>
                                    <br/> 
                            </div>
 <!-- 여기까지가 표다!! -->
 					
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                    
								
									
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
											</ul>
										</li>
										<li><a href="informagion.jsp">정보</a></li>
										<li><a href="setting.jsp">설정</a></li>
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