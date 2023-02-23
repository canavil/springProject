<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
 <head>
  <title>약관동의</title>
	  
	<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
  
	<script>
	
			function formChk() {
			    
				if(!$('#korname').val()) {
			    	alert("이름을 입력하세요.")	
			    	$('#korname').focus();
					return false;
			    }
			    
				if(!$('#userid').val()) {			    	
			    	alert("아이디를 입력하세요.")
			    	$('#userid').focus();			    	
			        return false;
			    }
			
				if(!$('#idCheck').val() || $('#idCheck').val() != 'Y') {			    	
			    	alert("아이디 중복확인해주세요.")		    	
			        return false;
			    }				
				
				
				if(!$('#passwd').val()) {			    	
			    	alert("비밀번호를 입력하세요.")	
			    	$('#passwd').focus();				    	
			        return false;
			    }				
				
				if(!$('#passwdConfirm').val()) {			    	
			    	alert("비밀번호를 입력하세요.")		    	
			        return false;
			    }								
			    return true;
			}
	
			
			//ID 중복확인
			$(document).ready(function(){

				$('#btnCheck').click(function () {
	   			
				//alert($('#userid').val());
			    if ($('#userid').val() != '') {
			       // 아이디를 서버로 전송 > DB 유효성 검사 > 결과 반환받기
				        $.ajax({
				   					
				            type: 'GET',
				            url: '/memberIdCheck', 
				            data: 'userid=' + $('#userid').val(),
				            dataType: 'json',
				            success: function(result) {
				            	
				                if (result == '0') {
				                    $('#result').text('사용 가능한 아이디입니다.');
				                	$('#idCheck').val('Y');				                    
				                } else {
				                    $('#result').text('이미 사용중인 아이디입니다.');
				                    $('#idCheck').val('N');
				                }
				            },
				            error:function(request,status,error){
				        		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				                console.log(a, b, c);
				            }
				   					
				        });
				   				
				    } else {
				        alert('아이디를 입력하세요.');
				        $('#txtid').focus();
				    }
				})	
			});
	</script>
  
</head>
<body>

   

  <form id="frm" method="POST" action="/memberAdd"  onsubmit="return formChk();">
  <table class="type09" align="center">
  <thead>
  <tr>
    <th scope="cols">회원가입</th>
    <th scope="cols">
    
    </th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <th scope="row">이름</th>
    <td>
		<input type="text" name="korname" id="korname" value="">  
    </td>
  </tr>
  
  <tr>
    <th scope="row">아이디</th>
    <td>
		<input type="text" name="userid"  id="userid" value="">  <input type="button" id="btnCheck"  value="중복검사"/>
		<input type="hidden" name="idCheck"  id="idCheck" value="">
		<span id="result"></span>
    </td>
  </tr>
  
  <tr>
    <th scope="row">비밀번호</th>
    <td>
		<input type="text" name="passwd" id="passwd"    value="">  
    </td>
  </tr>
  
  <tr>
    <th scope="row">비밀번호 확인</th>
    <td>
		<input type="text" name="passwdConfirm"  id="passwdConfirm" value="">  
    </td>
  </tr>  
  <tr>
    <th scope="row"></th>
    <td><input type="submit" id="btn" value="회원가입" /></td>
  </tr>
  
  </tbody>
  </form>
</table>
 </body>
</html>