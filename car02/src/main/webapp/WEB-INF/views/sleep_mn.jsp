<%@page import="kr.car.domain.MembersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>


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

<%MembersVO vo = (MembersVO) session.getAttribute("MembersVO");
String id = vo.getMember_id();%>
    
    function aaa(dataa){
    google.charts.load('current', {packages:['corechart']});
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
            		  width: 500,
            		  height: 500,
            		  title: '회원 알림 횟수 확인',
            		  colors: ['#e0440e', '#e6693e', '#ec8f6e', '#f3b49f', '#f6c7b6']
            		};

            	
        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
      }
    
    
    }
   
 
      
      function choosedate() {
          $("#piechart").css("display", "block");
          var member_id = '<%=id%>';
		$.ajax({
			url : "${cpath}/alarmtype_statistics_admin.do",
			type : "post",
	        dataType : "JSON",
			success : function(dataa) {
				alert("회원 알림 횟수 확인");
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

				<header class="major">
					<h2>졸음운전 관리</h2>
				</header>

				<!-- 표 -->
				<div class="card">
					<div class="card-content">
						<!-- 여기서부터 우리가 원하는 표 -->
						<div style="width:100%; height:500px; overflow:auto">

						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover"
								id="dataTables-example">
								<thead>
									<tr>
										<th>졸음운전 알람 번호</th>
										<th>졸음운전 알람 시간</th>
										<th>알람 종류</th>
										<th>사용자 ID</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="vo" items="${list1}">
										<tr>
											<td>${vo.alarm_id}</td>
											<td>${vo.alarm_time}</a></td>
											<td>${vo.alarmtype_id}</td>
											<th>${vo.member_id}</th>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					</div>
				</div>

				<!-- 표 끝 -->
				<form id="frm" method="post" onsubmit="return false;">
               <button type="submit" class="btn btn-default btn-lg" onclick="choosedate()">차트보기</button>
               </form>
				 <div id="piechart" style="width: 900px; height: 500px;"></div>

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