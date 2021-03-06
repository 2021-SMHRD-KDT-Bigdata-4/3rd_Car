<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

    
    
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
   <title>Login Page</title>
   
   <!--Made with love by Mutiullah Samim -->
   
   <!--Bootsrap 4 CDN-->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

   <!--Custom styles-->
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/register.css">
</head>
<body>

<div class="container">
   <div class="d-flex justify-content-center h-100">
      <div class="card">
         <div class="card-header">
            <h2>회원가입</h2>
            
            <!-- 아이콘 삭제
             <div class="d-flex justify-content-end social_icon">
               <span><i class="fab fa-facebook-square"></i></span>
               <span><i class="fab fa-google-plus-square"></i></span>
               <span><i class="fab fa-twitter-square"></i></span>
            </div> 
            -->
            
         </div>
         <div class="card-body">
         <form id = "frm2" method = "post" action="${cpath}/memberInsert.do">
            
               <div class="input-group form-group">
                  <div class="input-group-prepend">
                     <span class="input-group-text"><i class="fas fa-user"></i></span>
                  </div>
                  <input type="text" class="form-control" id="member_id" name="member_id" placeholder="아이디">
                                    
               </div>
               
               <div class="input-group form-group">
                  <div class="input-group-prepend">
                     <span class="input-group-text"><i class="fas fa-key"></i></span>
                  </div>
                  <input type="text" class="form-control" id="password" name="password" placeholder="비밀번호">
               </div>
               
               <div class="input-group form-group">
                  <div class="input-group-prepend">
                     <span class="input-group-text"><i class="fas fa-info-circle"></i></span>
                  </div>
                  <input type="text" class="form-control" id="member_name" name="member_name" placeholder="이름">                  
               </div>

               <div class="input-group form-group">
                  <div class="input-group-prepend">
                     <span class="input-group-text"><i class="fas fa-building"></i></span>
                  </div>
                  <input type="text" class="form-control" id="company" name="company" placeholder="회사">                  
               </div>
               
               <div class="input-group form-group">
                  <div class="input-group-prepend">
                     <span class="input-group-text"><i class="fas fa-info-circle"></i></span>
                  </div>
                  <input type="text" class="form-control" id="age" name="age" placeholder="나이">                  
               </div>
               
               <div class="input-group form-group">
                  <div class="input-group-prepend">
                     <span class="input-group-text"><i class="fas fa-info-circle"></i></span>
                  </div>
                  <input type="text" class="form-control" id="gender" name="gender" placeholder="성별">               
               </div>
               
              
               
               <div class="row align-items-center remember">
                  <input type="checkbox">계정 저장하기
               </div>
               <div class="form-group">
                  <input type="submit" value="로그인" class="btn float-right login_btn">
               </div>
               
            </form>
         </div>

         </div>
      </div>
   </div>

</body>
</html>