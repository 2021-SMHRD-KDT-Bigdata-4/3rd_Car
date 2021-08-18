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
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="resources/assets/css/index.css" />
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    
    function aaa(dataa){
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);
      
      function drawChart() {

      var data = new google.visualization.DataTable();
      data.addColumn('string','경고');
      data.addColumn('number', '경고횟수');
      data.addRows([
    	  ["졸음경고 1회", dataa[0].sleep_1time],
          ["졸음경고 2회", dataa[0].sleep_2times],
          ["졸음경고 3회", dataa[0].sleep_3times],
          ["휴식알람", dataa[0].rest_alarm]
      ]);

      var options = {
        title: '알림별 울림횟수',
        sliceVisibilityThreshold: .2
      };

      var chart = new google.visualization.PieChart(document.getElementById('top_x_div'));
      chart.draw(data, options);
    }
 
      
      function choosedate() {
          $("#top_x_div").css("display", "block");
		$.ajax({
			url : "${cpath}/alarmtype_statistics_admin.do",
			type : "post",
			dataType : "JSON",
			success : function(dataa) {
				alert(dataa);
				aaa(dataa)
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});
      }
</script>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a href="index.html" class="logo"><strong>당신의 안전을 책임지는
							co-car</strong> <c:if test="${MembersVO!=null}">${MembersVO.member_name}님 방문을 환영합니다.</c:if></a>
					<ul class="icons">
						<li><a href="${cpath}/logoutAjax.do"> Logout</a></li>
					</ul>
				</header>




				<br /> <br /> <br />

				<!-- Section -->

				<header class="major">
					<h2>졸음운전 관리</h2>
				</header>

				<!-- Search -->
				<section id="search" class="alt">
					<form method="post" action="#">
						<input type="text" name="query" id="query" placeholder="Search" />
					</form>
				</section>
				<div class="table-responsive">
					<h2>회원 운전현황</h2>
					<table class="table table-striped table-bordered table-hover"
						id="dataTables-example">
						<thead>
							<tr>
								<th>번호</th>
								<th>운전시작</th>
								<th>운전종료</th>
								<th>회원아이디</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="vo" items="${list}">
								<tr>
									<td>${vo.driving_id}</td>
									<td>${vo.driving_starttime}</td>
									<td>${vo.driving_endtime}</td>
									<td>${vo.member_id}</td>
									<td></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<!-- 표 -->





		 <div id="top_x_div" style="width: 800px; height: 600px; display: none"></div>

			
			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->
				<section id="search1" class="alt">
					<form></form>
				</section>


				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>메뉴</h2>
					</header>
					<ul>
						<li><a href="${cpath}/admin.do">메인</a></li>
						<li><a href="${cpath}/user_mn.do">회원관리</a></li>
						<li><a href="${cpath}/sleep_mn.do">졸음운전 관리</a></li>
						<li><a href="${cpath}/rest_mn.do">휴식시간 관리</a></li>
						<li><a href="${cpath}/notice.do">공지사항</a></li>


					</ul>
				</nav>

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