<%@page import="kr.car.domain.MembersVO"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script type="text/javascript">   

<%MembersVO vo = (MembersVO) session.getAttribute("MembersVO");
String id = vo.getMember_id();%>

	

   //================================
   var audio1 = new Audio("${pageContext.request.contextPath}/resources/Music/alarm01.mp3");
   var audio2 = new Audio("${pageContext.request.contextPath}/resources/Music/alarm02.mp3");
   var audio3 = new Audio("${pageContext.request.contextPath}/resources/Music/alarm03.mp3");
   var audio4 = new Audio("${pageContext.request.contextPath}/resources/Music/alarm04.mp3");
   /* audio1은 그냥 재생됨. 졸음알람1*/
  
   /* audio2는 그냥 재생됨. 졸음알람2*/   
     
   /* audio3은 무한재생. 졸음알람3
   추가된 부분: 종료되면 처음부터 다시 재생*/
   audio3.addEventListener('ended', function() { 
       this.currentTime = 0;
       this.play();
   }, false);  
   
   /* 끄고 싶다면 3초간 웃어라!!*/
   /* audio4는 그냥 재생됨. 휴식알람4*/
   
   
   //===================================
       
   var timer;

   function driveS() {
      setTimeout(function() {
         audio4.play();
      }, 60000);
        var member_id = '<%=id%>';
        
        $.ajax({
               type : "get",
               url: "${cpath}/dstart.do",
                data : {"member_id" : member_id},
                error:function(){
                  alert("drivins_starttime실패");
               }
             });
        $("#realtime-video").show();
        
        timer = setInterval(function(){
            var member_id = '<%=id%>';
            var memberdata = {"member_id" : member_id};
              $.ajax({
               url : 'http://59.0.129.202:5000/cnt',
               type : 'post',
               data : JSON.stringify(memberdata),
               dataType : 'JSON',
               contentType: "application/json",
               success : postdata,
               error : function(){alert("ajax 통신 실패")}
              })
                 }, 1000)
           
         	
           function postdata(data){
            var member_id = data['member_id'];
            var alarmtype_id = data['alarmtype_id'];
            
            
            
            if(alarmtype_id == '1'){
            	audio1.play();
         }else if(alarmtype_id == '2'){
        	 audio1.pause();
        	 audio2.play();
         }else if(alarmtype_id == '3'){
        	 audio2.pause();
        	 audio3.play();	 
         }else {
        	audio3.pause();
         } 
            
            $.ajax({
                type : "get",
                url: "${cpath}/alarmdata.do",
                 data : {"member_id" : member_id, "alarmtype_id" : alarmtype_id}
                 /* success : function(){
                     alert("칭찬해칭찬해");
                 },                 error:function(){
                   alert("알람 insert 실패");
                   //초반에 alarmtype_id=0일때 실패로 떠서 여기도 주석해야한다.
                }
             */

              }); //alarms 데이터 insert 끝
            
   }   //setInterval 끝
   } //DRIVES 끝
      
      
   
   
   
   function driveEnd() {
        var member_id = '<%=id%>';
        $.ajax({
               type : "get",
               url: "${cpath}/dend.do",
               data : {"member_id" : member_id},
               error:function(request,status,error){
                      alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                   }
                  });
           $("#realtime-video").hide();
           clearinterval(timer);
          } 
   
   function restStart() {
        var member_id = '<%=id%>';
        $.ajax({
               type : "get",
               url: "${cpath}/rstart.do",
               data : {"member_id" : member_id},
               error:function(){
                  alert("휴식시작실패");
               }
             });
       } 
   function restEnd() {
        var member_id = '<%=id%>';
      $.ajax({
         type : "get",
         url : "${cpath}/rend.do",
         data : {
            "member_id" : member_id
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
               <a class="logo"><strong>당신의 안전을 책임지는 co-car</strong> <c:if
                     test="${MembersVO!=null}">${MembersVO.member_name}님 방문을 환영합니다.</c:if></a>
               <ul class="icons">
                  <li><a href="${cpath}/logoutAjax.do"> Logout</a></li>
               </ul>
            </header>

            <!-- Banner -->
            <br />

            <div class="content">
               <button class="button big" style="font-size: 12px;" id="driveStart"
                  name="driveStart" onclick="driveS()">운전시작</button>
               <button class="button big" style="font-size: 12px;" id="driveStop"
                  name="driveStop" onclick="driveEnd()">운전종료</button>

               <button class="button big" style="font-size: 12px;" id="RestStart"
                  name="RestStart" onclick="restStart()">휴식시작</button>
               <button class="button big" style="font-size: 12px;" id="RestStop"
                  name="RestStop" onclick="restEnd()">휴식종료</button>


               <!-- <div>
               <input type="button" onclick="audio1.play();" value="PLAY1"> 졸음 알람재생
                <input type="button" onclick="audio2.play();" value="PLAY2"> 졸음 무한 알람 재생
                <input type="button" onclick="audio3.play();" value="PLAY3"> 졸음 알람 재생
                <input type="button" onclick="audio4.play();" value="PLAY4"> 휴식 알람 재생
                <input type="button" onclick="audio2.pause();" value="PAUSE"> 일시정지
               </div> -->

            </div>

            <section id="realtime-video" style="display: none">
               <header class="major">
                  <h2>실시간 화면</h2>
               </header>

               <div class="card">
                  <img src="http://59.0.129.202:5000/" width="50%">

               </div>
            </section>

         </div>
      </div>

      <!-- Sidebar -->
      <div id="sidebar">
         <div class="inner">

            <!-- Search -->
            <section id="search1" class="alt">
               <form >
                 
               </form>
            </section>

            <!-- Menu -->
            <nav id="menu">
               <header class="major">
                  <h2>Menu</h2>
               </header>
               <ul>
                  <li><a href="usermain.do">메인</a></li>

                  
                  
                   <li><a href="useralarm.do?member_id=${MembersVO.member_id}">알람</a></li>
  

                  <li><a href="information.do">정보</a></li>
                  <li><a href="user_notice.do">공지사항</a></li>
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