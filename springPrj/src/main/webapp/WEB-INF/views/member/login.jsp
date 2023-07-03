<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Log in</title>

	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="/resources/plugins/fontawesome-free/css/all.min.css">
	<!-- icheck bootstrap -->
	<link rel="stylesheet" href="/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">
  
	<!-- jQuery -->
	<script src="/resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/resources/dist/js/adminlte.min.js"></script>
	
	<!--  kakao Login -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script>
	//ID 중복확인
			function f_loginCheck() {

				var userid = $('input[name=userid]').val();
			    var passwd = $('input[name=passwd]').val();
			    
			    if (userid == '') {
			    	alert("아이디를 입력하세요.");
			    	return false;
			    }
			    
			    if (passwd == '') {
			    	alert("비밀번호를 입력하세요.");
			    	return false;
			    }
			
			    var loginData = {"userid":userid, "passwd":passwd};
		
			    $.ajax({
				        type: "POST",
				        url : "/memberLogin",
			            data: loginData,
			            dataType: 'json',
				        success : function(result){
				            if(result == 0){
				                alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
				                return false;
				            } else if(result == 9){
				                alert("통신 오류");
				                return false;  
				            } else {
				                // 로그인 성공 시
				                window.location.href = "/memberMain";
				            }
				        },
			            error:function(request,status,error){
			        		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			                console.log(a, b, c);
				        }
		
			
			});
		}
	
		//카카오 로그인
		function kakaoLogin() {
			Kakao.Auth.login({
				success: function (response) {
				Kakao.API.request({
					url: '/v2/user/me',
					success: function (response) {
						kakaoLoginPro(response)
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
	
</script>			  
  
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>Member Login</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form id="frm" method="POST" action="/memberLogin"  onsubmit="return formChk();">
        <div class="input-group mb-3">
          <input type="text" name="userid" id="userid" class="form-control" placeholder="Userid">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" name="passwd" id="passwd"  class="form-control" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="button" class="btn btn-primary btn-block" onclick="f_loginCheck();">LOGIN</button>
          </div>
          <!-- /.col -->
        </div>
      

      <div class="social-auth-links text-center mb-3">
        <p>- OR -</p>
        <a href="#" onclick="javascript:kakaoLogin();" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i> Kakao Login
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i> Sign in using Google+
        </a>
      </div>
      <!-- /.social-auth-links -->

      <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p>
      <p class="mb-0">
        <a href="register.html" class="text-center">Register a new membership</a>
      </p>
    </div>
    </form>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->


</body>
</html>
