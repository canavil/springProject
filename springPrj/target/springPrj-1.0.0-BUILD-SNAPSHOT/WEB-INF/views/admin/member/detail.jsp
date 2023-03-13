<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    
<!DOCTYPE html>
<html>
<%@include file="/WEB-INF/views/include/meta.jsp" %>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
  <%@include file="/WEB-INF/views/include/navbar.jsp" %>
  <!-- Main Sidebar Container -->
  <%@include file="/WEB-INF/views/include/sidebar.jsp" %>
  
  
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>회원View</h1>
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
                <h3 class="card-title">회원정보</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <c:forEach var="row" items="${data}" >  
              <form>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">UserId</label>
                    <input type="userid" class="form-control" id="userid" value="${row.userid}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">UserName</label>
                    <input type="korname" class="form-control" id="korname"  value="${row.korname}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">PassWord</label>
                    <input type="passwd" class="form-control" id="passwd"  value="${row.passwd}">
                  </div>                 
                  <div class="form-group">
                    <label for="exampleInputPassword1">UserYN</label>
                    <input type="useyn" class="form-control" id="useyn"  value="${row.useYN}">
                  </div>                  
                  <div class="form-group">
                    <label for="exampleInputPassword1">Regi Date</label>
                    ${row.rdate}
                  </div>                       
              
                </div>
                <!-- /.card-body -->
				</c:forEach>   
				
				                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-info  float-right">Save</button>
                  <button type="button" class="btn btn-default float-left" onclick="location.href='memberAdmList';">List</button>
                </div>
           
              </form>
            </div>
            <!-- /.card -->
            
            </div>
      </div>


 
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