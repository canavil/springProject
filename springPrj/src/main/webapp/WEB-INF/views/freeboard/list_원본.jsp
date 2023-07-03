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
            <h1>과목공지</h1>
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
 
 
  <!-- /.row -->
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">과목공지</h3>

                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>No</th>                    
                      <th>제목</th>
                      <th>이름</th>
                      <th>아이디</th>
                      <th>파일첨부</th>
                      <th>등록일</th>
                    </tr>
                  </thead>
                  <tbody>
                  

          
					<c:forEach var="row" items="${data}" varStatus="i">  

 					<tr>
                      <td>${i.count } </td> 					
                      <td><a href="/freeboard/view?seqno=${row.seqno}">${row.subject}</a></td>
                      <td>${row.username}</td>
                      <td>${row.userid}</td>
                      <td>${row.filename}</td>
                      <td>${row.regdate}</td>
                    </tr>
                    
                    
                    </c:forEach>     
     
 
<!-- 

                  <tr>
                      <td>1</td> 					
                      <td>2</td>
                       <td>2</td>
                        <td>2</td>
                      <td>2</td>
                      <td>2</td>
                    </tr>
                  
                    <tr>
                      <td>219</td>
                      <td>Alexander Pierce</td>
                      <td>11-7-2014</td>
                      <td><span class="tag tag-warning">Pending</span></td>
                      <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                    </tr>
 -->
				              
                  
                   
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row --> 
        
        
        
		<!-- /.card-body -->
		<div class="card-footer">
		
            <button type="button" class="btn btn-info" onclick="location.href='/freeboard/register';">게시물 등록</button>		
			<button type="button" class="btn btn-default float-right" onclick="location.href='/freeboard/list';">목록</button>
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