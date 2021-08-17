<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

Kakao.init('f443e2d9393210251931ef496d06569c'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized());

function logoutFn(){
   $.ajax({
      url:"ajaxlogout.do",
      type:"get",
      success:function(){
          location.href="ajax04.jsp";
      },
       error:function(){ alert("error"); }
      
   });
}

function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
             console.log(response)
             location.href="${cpath}/admin.do";
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
  

function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: 'http://localhost:8081/web/login.do',
        success: function (response) {
           console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
  
</script>
<!------ Include the above in your HEAD tag ---------->



   <title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
   <!--Bootstrap 4 CDN-->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

   <!--Custom styles-->
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/login.css">
</head>
<body>

<div class="container">
   <div class="d-flex justify-content-center h-100">
      <div class="card">
         <div class="card-header">
            <h2>LOGIN</h2>         
            <!-- 아이콘 삭제
             <div class="d-flex justify-content-end social_icon">
               <span><i class="fab fa-facebook-square"></i></span>
               <span><i class="fab fa-google-plus-square"></i></span>
               <span><i class="fab fa-twitter-square"></i></span>
            </div> 
            -->   
         </div>
         <div class="card-body">
         
            <form action="${cpath}/loginAjax.do" method="post">
               <div class="input-group form-group">
                  <div class="input-group-prepend">
                     <span class="input-group-text"><i class="fas fa-user"></i></span>
                  </div>
                  <input type="text" class="form-control" placeholder="아이디" id=member_id name=member_id>                  
               </div>
               
               <div class="input-group form-group">
                  <div class="input-group-prepend">
                     <span class="input-group-text"><i class="fas fa-key"></i></span>
                  </div>
                  <input type="password" class="form-control" placeholder="비밀번호" id=password name=password>
               </div>
               <div class="form-group">
                  <input type="submit" value="로그인" class="btn btn-sm float-right login_btn" >
               </div>
               <br>
            </form>
            <form>
             <ul class="kakao actions">  
   <!--  <li onclick="kakaoLogin();">-->
       <li style="list-style-type:none; padding-inline-start:0;" class = "kakao" onclick="kakaoLogin();">
         <a href="javascript:void(0)">
         
        <img src="https://developers.kakao.com/tool/resource/static/img/button/kakaosync/complete/ko/kakao_login_large_wide.png" width="300" alt="kakao" />
       
         </a>
          </li>
   </ul> 
     </form>    
         </div>
         <div class="card-footer">
            <div class="d-flex justify-content-center links">
               새 계정을 생성하시겠습니까?<a href="#">회원가입</a>
            </div>

         </div>
      </div>
   </div>
</div>
</body>
</html>