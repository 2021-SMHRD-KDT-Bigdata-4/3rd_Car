<%@page import="kr.car.domain.MembersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>  


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
<%MembersVO vo = (MembersVO) session.getAttribute("MembersVO");
String id = vo.getMember_id();%>

function aaa(dataa){

    google.charts.load('current', {packages : [ 'corechart' , 'bar' ]});
    google.charts.setOnLoadCallback(alarmcount);
   
   function alarmcount() {
        var data = new google.visualization.DataTable();
        data.addColumn('string','경고');
        data.addColumn('number', '경고횟수');
        data.addRows([
          ["졸음경고 1회", dataa[0].sleep_1time],
          ["졸음경고 2회", dataa[0].sleep_2times],
          ["졸음경고 3회", dataa[0].sleep_3times],
          ["휴식알람", dataa[0].rest_alarm]
        ]);

        var options = {'title':'알림별 울림횟수',
                hAxis:{
                   title : '경고',
                   viewWindow:{
                      min : [7,30,0],
                      max : [17,30,0]
                   }
                },
                vAxis:{
                   title : '경고횟수'
                },
                colors: ['#a52714', '#097138']
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('top_x_div'));
        chart.draw(data, options);
      }
}

     function choosedate() {
        $("#top_x_div").css("display", "block");
        var member_id = '<%=id%>';
      $.ajax({ 
         url : "${cpath}/alarmtype_statistics.do", 
         type : "post", 
         data : {'member_id' : member_id},
         dataType : "JSON",
         success : function(dataa) {
            alert(dataa);
            aaa(dataa)
         }, 
         error : function(request,status,error) {
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
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

            <!-- Banner -->

            <br />
            <div class="content">
               <a href="useralarm.do?member_id=${MembersVO.member_id}" class="button big">알림별 통계</a>&nbsp&nbsp&nbsp
               <a href="#" class="button big">시간대별 알람 통계</a>
            </div>

            
            <div>
               <a href="#" class="button big">일자별 졸음 알람(월간)</a>&nbsp&nbsp&nbsp
               <a href="#" class="button big">시간별 졸음 알람(월간)</a>
            </div>

            <br /> <br /> <br />

            <!-- Section -->
            <section>
               <header class="major">
                  <h2>일간 운전 정보</h2>
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
                                 <th>사용자 ID</th>
                              </tr>
                           </thead>

                           <tbody>
                              <c:forEach var="vo" items="${list3}">
                                 <tr>
                                    <td>${vo.driving_id}</td>
                                    <td>${vo.driving_starttime}</td>
                                    <td>${vo.driving_endtime}</td>
                                    <th>${vo.member_id}</th>
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
			
			 <header class="major">
                  <h2>졸음 운전 정보</h2>
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
                                 <th>알람 번호</th>
                                 <th>알람 시간</th>
                                 <th>알람 정보</th>
                                 <th>사용자 ID</th>
                              </tr>
                           </thead>

                           <tbody>
                              <c:forEach var="vo" items="${list5}">
                                 <tr>
                                    <td>${vo.alarm_id}</td>
                                    <td>${vo.alarm_time}</td>
                                    <td>${vo.alarmtype_id}</td>
                                    <th>${vo.member_id}</th>
                                 </tr>
                              </c:forEach>
                           </tbody>

                        </table>
                     </div>
                 
                  </div>
               </div>
			

            
               <form id="frm" method="post" onsubmit="return false;">
               <button type="submit" class="btn btn-default btn-lg" onclick="choosedate()">차트보기</button>
               </form>
             <div id="top_x_div" style="width: 800px; height: 600px; display: none"></div>
            
            <!-- section3 -->
            <!-- 세 번째 표 구역 -->
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
                                 <th>사용자 ID</th>
                                 <th>비 고</th>
                              </tr>
                           </thead>
                           <tbody>
                              <c:forEach var="vo" items="${list4}">
                                 <tr>
                                    <td>${vo.rest_id}</td>
                                    <td>${vo.rest_starttime}</a></td>
                                    <td>${vo.rest_endtime}</td>
                                    <th>${vo.member_id}</th>
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
                        <li><a href="useralarm.do">일자별 졸음 알람(주간)</a></li>
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