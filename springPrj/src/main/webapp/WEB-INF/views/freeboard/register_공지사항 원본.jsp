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
    
	if(!$('#subject').val()) {
    	alert("제목을 입력하세요.")	
    	$('#subject').focus();
		return false;
    }
  			
    return true;
}


</script>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
  <%@include file="/WEB-INF/views/include/navbar.jsp" %>
  <!-- Main Sidebar Container -->
  <%@include file="/WEB-INF/views/include/sidebar.jsp" %>
  
  
  <form id="frm" method="POST" action="/freeboardSave"  onsubmit="return formChk();">
  <input type="hidden" name="admYn" value="Y">
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
     
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
                <h3 class="card-title">공지사항 등록</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start --> 
              <form>
                <div class="card-body">
                 
                  <div class="form-group">
                    <label for="exampleInputPassword1">공지 제목</label>
                    <input type="text" class="form-control" name="subject"  id="subject" placeholder="Enter subject">
                  </div>  
                
		            <div class="form-group">
		              <textarea name="content" rows="5" cols="105"></textarea>
		            </div>					
                </div>
                <!-- /.card-body -->

                <div class="card-footer">

                  <button type="button" class="btn btn-default float-left" onclick="location.href='freeboard';">List</button>
                  <button type="submit" class="btn btn-info  float-right">Save</button>                  
                </div>
           
              </form>
            </div>
            <!-- /.card -->
            
            </div>
      	</div>
	</div>
	
	   
        <!-- /.col-->
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