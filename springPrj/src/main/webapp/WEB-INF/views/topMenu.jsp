<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

	
	
	
</script>			

<table width="100%" border="0">
<form id="frm" method="POST" action="/memberLogin"  onsubmit="return formChk();">
<tr>
	<td>
		[<a href="/index">HOME</a>]
	</td>
	<td align="right">
	
	로그인 ID  : <input type="text" name="userid"  id="userid" size="8"/> PASSWORD  : <input type="text" name="passwd" id="passwd" size="8"/> 
	<button type="button" class="btn" onclick="f_loginCheck();">LOGIN</button>
	
	
 [<a href="/joinStep1"> 회원가입</a>]
	</td>
</tr>	
</form>
</table>		