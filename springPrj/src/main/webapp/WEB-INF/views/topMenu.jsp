<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	function formChk() {
	    		    
		if(!$('#userid').val()) {			    	
	    	alert("아이디를 입력하세요.")
	    	$('#userid').focus();			    	
	        return false;
	    }
	
		
		if(!$('#passwd').val()) {			    	
	    	alert("비밀번호를 입력하세요.")	
	    	$('#passwd').focus();				    	
	        return false;
	    }				
							
	    return true;
	}
</script>			

<table width="100%" border="0">
<form id="frm" method="POST" action="/memberLogin"  onsubmit="return formChk();">
<tr>
	<td>
		[<a href="/index">HOME</a>]
	</td>
	<td align="right">
	
	로그인 ID  : <input type="text" name="userid"  id="userid" size="8"/> PASSWORD  : <input type="text" name="passwd" id="passwd" size="8"/> <input type="submit" value="로그인" />
	
	
 [<a href="/joinStep1"> 회원가입</a>]
	</td>
</tr>	
</form>
</table>		