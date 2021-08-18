<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<c:set var="cpath" value="${pageContext.request.contextPath}" />
    
    
<!DOCTYPE html>
<html lang="en">
<!--
   Editorial by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

   <head>
      <title>Car</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="resources/assets/css/index.css" />
      <script type = "text/javascript">
      
         function resultHtml(data){ 
           var html="<table>";
           html+="<tr>";
           html+="<th>번호</th>";
         html+="<th>제목</th>";
         html+="<th>작성자</th>";
         html+="<th>작성일</th>";
         html+="</tr>";
           // 반복문 ($.each())
           $.each(data, (index,obj)=>{ 
           html+="<tr>";
          html+="<td id='idx"+index+"'>"+obj.idx+"</td>";
           html+="<td>"+obj.title+"</td>";
           html+="<td>"+obj.writer+"</td>";
           html+="<td>"+obj.indate+"</td>";
           
           html+="</tr>";
           });
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
                           <a href="index.html" class="logo"><strong>당신의 안전을 책임지는</strong> co-car</a>
                           <ul class="icons">
                              <li><a href="${cpath}/logoutAjax.do"> Logout</a></li>
                           </ul>
                        </header>

                  
               <!-- Section -->
                        <br>
                        <br>
                        <br>  
               <header class="major">
                     <h2>공지사항</h2>
               </header>
                  


                 <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                      
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
 
                                        </tr>
                                    </thead>
                                    <tbody>
                                  <c:forEach var="vo" items="${list}">
                              <tr>
                                <td>${vo.idx}</td>
                                <!-- <td><a href="${cpath}/boardContent.do?idx=${vo.idx}">${vo.title}</a></td>-->
                                <td><a href="${cpath}/user_boardContent.do?idx=${vo.idx}">${vo.title}</a></td>
                            
                                <td>${vo.writer}</td>
                                <td>${vo.indate}</td>
                             </tr>
                           </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            
                            <!-- 표 -->

                     <ul class="brd actions">
                        
                       
   
                     </ul>

               </div>
               </div>

            <!-- Sidebar -->
               <div id="sidebar">
                  <div class="inner">
                     
                     <!-- Search -->
                        <section id="search1" class="alt">
                           <form>
                              
                           </form>
                        </section>

      
                     <!-- Menu -->
                        <nav id="menu">
                           <header class="major">
                              <h2>메뉴</h2>
                           </header>
                           <ul>
                              <li><a href="${cpath}/usermain.do">메인</a></li>
                              <li><a href="${cpath}/useralarm.do">알람</a></li>
                              <li><a href="${cpath}/information.do">정보</a></li>
                              
                              <li><a href="${cpath}/user_notice.do">공지사항</a></li>
                                    
                              
                           </ul>
                        </nav>

                     

                     <!-- Section -->
                        <section>
                           <header class="major">
                              <h2>스마트인재개발원</h2>
                           </header>
                           <p>김은혜, 고희경, 남수환, 박윤빈, 신근아</p>
                           <ul class="contact">
                              <li class="icon solid fa-envelope"><a href="#">E-Mail : smhrd@smhrd.or.kr</a></li>
                              <li class="icon solid fa-phone">TEL. 062-655-3509  </li>
                              <li class="icon solid fa-home">스마트인재 개발원<br />
                              광주광역시 남구 송암로60 광주CGI센터 2층 <br />FAX. 062-655-3510</li>
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