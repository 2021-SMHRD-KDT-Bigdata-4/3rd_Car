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
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(alarm_count);

      function alarm_count(dataaa) {
        var data = new google.visualization.arrayToDataTable([
          ['확인필요', 'Percentage'],
          ["졸음경고 1회", 54],
          ["졸음경고 2회", 24],
          ["졸음경고 3회", 11],
          ["휴식알람", 12]
        ]);

        var options = {
          width: 800,
          legend: { position: 'none' },
          chart: {
            title: '알림별 울림횟수',
            subtitle: '졸지맙시다~~!' },
          axes: {
            x: {
              0: { side: 'top', label: '알림'} // Top x-axis.
            }
          },
          bar: { groupWidth: "80%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        // Convert the Classic options to Material options.
        chart.draw(data, google.charts.Bar.convertOptions(options));
      };



   
   
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

            <!-- Banner -->

            <br />
            <div class="content">
               <a href="#" class="button big">알림별 통계</a>&nbsp&nbsp&nbsp
               <a href="mypage.jsp" class="button big">시간대별 알람 통계</a>
            </div>

            <br />

            <div>
               <a href="mypage.jsp" class="button big">일자별 졸음 알람(월간)</a>&nbsp&nbsp&nbsp
               <a href="mypage.jsp" class="button big">시간별 졸음 알람(월간)</a>
            </div>

            <br /> <br /> <br />

            <!-- Section -->
            <section>
               <header class="major">
                  <h2>일자별 졸음 알람(주간)</h2>
               </header>

               <!-- Advanced Tables -->
               <!-- 여기서부터 우리가 원하는 표 -->
               <div class="card">
                  <div class="card-content">
                     <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover"
                           id="dataTables-example">

                           <thead>
                              <tr>
                                 <th>운전 번호</th>
                                 <th>운전 시작시간</th>
                                 <th>운전 종료 시간</th>
                                 <th>운전시간</th>
                                 <th>졸음 운전 알람 횟수</th>
                              </tr>
                           </thead>

                           <tbody>
                              <c:forEach var="vo" items="${list1}">
                                 <tr>
                                    <td>${vo.driving_id}</td>
                                    <td>${vo.driving_starttime}</td>
                                    <td>${vo.driving_endtime}</td>
                                    <td>${vo.member_id}</td>
                                    <td>비고</td>
                                 </tr>
                              </c:forEach>
                           </tbody>

                        </table>
                     </div>
                  </div>
               </div>
               <!--End Advanced Tables -->
               <br />
            </section>


            <br /> <br /> <br /> <br />
            	<p>제목</p>
            	<form action="choosedate.do">
            	<input type="date" name="startdate"> ~ <input type="date" name="enddate">
            	<button onclick="alarm_count()">조회하기</button>
            	</form>
             <div id="top_x_div" style="width: 800px; height: 600px;"></div>
            <br /> <br /> <br /> <br />
			
            <p>총 알람 횟수 : sum</p>
            <p>평균알람 횟수 : sum/7</p>

            <!-- section2 -->
            <!-- 두 번째 표 구역 -->
            <section>
               <header class="major">
                  <h2>휴식 현황</h2>
               </header>

               <!-- Advanced Tables -->
               <div class="card">

                  <div class="card-content">
                     <!-- 여기서부터 우리가 원하는 표 -->
                     <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover"
                           id="dataTables-example">
                           <thead>
                              <tr>
                                 <th>휴식 번호</th>
                                 <th>휴식 시작시간</th>
                                 <th>휴식 종료시간</th>
                                 <th>휴식시간</th>
                                 <th>비 고</th>
                              </tr>
                           </thead>
                           <tbody>
                              <c:forEach var="vo" items="${list2}">
                                 <tr>
                                    <td>${vo.rest_id}</td>
                                    <td>${vo.rest_starttime}</a></td>
                                    <td>${vo.rest_endtime}</td>
                                    <td>비고</td>
                                    <td>비고</td>
                                 </tr>
                              </c:forEach>
                           </tbody>



                        </table>

                        <br /> <br /> <br /> <br />
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
                  <li><a href="usermain.do">메인</a></li>

                  <li><a href="mypage.jsp">마이페이지 <!-- 여기는 오늘 하루 알람 보여주는 페이지 -->
                  </a></li>
                  <li><span class="opener">알람</span>
                     <ul>
                        <li><a href="useralarm1">일자별 졸음 알람(주간)</a></li>
                        <li><a href="useralarm2">시간별 졸음 알람(주간)</a></li>
                        <li><a href="useralarm3">일자별 졸음 알람(월간)</a></li>
                        <li><a href="useralarm4">시간별 졸음 알람(월간)</a></li>
                     </ul></li>
                  <li><a href="informagion.jsp">정보</a></li>

               </ul>
            </nav>


            <!-- Section -->
            <section>
               <header class="major">
                  <h2>Get in touch</h2>
               </header>
               <p>Sed varius enim lorem ullamcorper dolore aliquam aenean
                  ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin
                  sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat
                  tempus aliquam.</p>
               <ul class="contact">
                  <li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
                  <li class="icon solid fa-phone">(000) 000-0000</li>
                  <li class="icon solid fa-home">1234 Somewhere Road #8254<br />
                     Nashville, TN 00000-0000
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