<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    
<!DOCTYPE html>
<html>
<%@include file="/WEB-INF/views/include/meta.jsp" %>


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
	
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
  <%@include file="/WEB-INF/views/include/navbar.jsp" %>
  <!-- Main Sidebar Container -->
  <%@include file="/WEB-INF/views/include/sidebar.jsp" %>
  
  
  <form id="frm" method="POST" action="/memberAdd"  onsubmit="return formChk();">
  <input type="hidden" name="admYn" value="Y">
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>회원등록</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Blank Page</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
 
    <!-- Main content -->
    <section class="content">
 

 
  <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-6">
            <!-- general form elements -->
            <div class="card card-secondary">
              <div class="card-header">
                <h3 class="card-title">회원 등록</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start --> 
              <form>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputPassword1">UserName</label>
                    <input type="text" class="form-control" name="korname"  id="korname"  placeholder="Enter name">
                  </div>
                                  
                  <div class="form-group">
                    <label for="exampleInputEmail1">UserId</label>
                    <input type="text" class="form-control" name="userid"  id="userid" placeholder="Enter userid">
                    
					<input type="button" id="btnCheck"  value="중복검사"/>
					<input type="hidden" name="idCheck"  id="idCheck" value="">
					<span id="result"></span>                    
                    
                  </div>

                  <div class="form-group">
                    <label for="exampleInputPassword1">PassWord</label>
                    <input type="text" class="form-control" name="passwd"  id="passwd"  placeholder="Enter Password">
                  </div>         
                  <div class="form-group">
                    <label for="exampleInputPassword1">Confirm PassWord</label>
                    <input type="text" class="form-control" name="passwdConfirm" id="passwdConfirm"  placeholder="Enter Confirm Password">
                  </div>                                
                  
              
                </div>
                <!-- /.card-body -->

				
				                <!-- /.card-body -->
                <div class="card-footer">

                  <button type="button" class="btn btn-default float-left" onclick="location.href='memberAdmList';">List</button>
                  <button type="submit" class="btn btn-info  float-right">Save</button>                  
                </div>
           
              </form>
            </div>
            <!-- /.card -->
            
            </div>
      </div>

	</div>
	</form>
 
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 
  
</div>
<!-- ./wrapper -->
<%@include file="/WEB-INF/views/include/footer.jsp" %>
<!-- jQuery -->
<%@include file="/WEB-INF/views/include/script.jsp" %>
</body>
</html>