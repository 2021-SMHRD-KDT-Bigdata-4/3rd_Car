<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>



<html lang="en">
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
                        <br/>
                        <br/>
                        <br/>

                     <!-- Section -->
                          
                           <header class="major">
                              <h2>회원 관리</h2>
                           </header>
                           
                     <!-- Search -->
                      <form action = "${cpath}/boardSearch.do" method="post"> 
                       
                   
                           <table class = "table">
                           
                            <tr>
                            <td>
                         <section id="search" class="alt">
                          <select name = "part" class = "form-control">
                                 <option value="member_id">회원아이디</option>
                           <option value="member_name">회원명</option>
                           <option value="company">소속회사</option>
                             </select>
                        </section>
                        </td>
                              <td><input type="text" name="keyword" class = "form-control" placeholder="Search" /></td>
                              <td><button type = "submit" class = "btn">검색</button></td>
                              </tr>
                            </table>
                     
                  
                           
                           <!-- 표 -->
                           
                             <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>회원아이디</th>
                                            <th>회원명</th>
                                            <th>소속회사</th>
                                            <th>나이</th>
                                            <th>성별</th>
                                        </tr>
                                    </thead>
                        
                                        <tbody>
                             
                              <c:forEach var="vo" items="${list}">
                                 <tr>
                                    <td>${vo.member_id}</td>
                                    <td>${vo.member_name}</td>
                                    <td>${vo.company}</td>
                                    <td>${vo.age}</td>
                                    <td>${vo.gender}</td>
                                 </tr>
                                
                              </c:forEach>
                               
                           </tbody>
                          
                                </table>
                            </div>
                            
               
                  
                             </form>
                 

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

                              <li><a href="admin.do">메인</a></li>
                              <li><a href="user_mn.do">회원관리</a></li>
                              <li><a href="sleep_mn.do">졸음운전 관리</a></li>
                              <li><a href="rest_mn.do">휴식시간 관리</a></li>
                              <li><a href="notice.do">공지사항</a></li>
                            
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