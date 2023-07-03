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
            <h1>수강신청</h1>
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
                <h3 class="card-title">2023-1학기 수강신청</h3>

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
                    <tr align="center">
                      <th>No</th>                    
                      <th>수강신청</th>
                      <th>교과목명</th>
                      <th>과목코드</th>
                      <th>이수구분</th>
                      <th>학점</th>
                      <th>담당교수</th>
                      <th>인원제한</th>
                      <th>수강인원</th>                      
                    </tr>
                  </thead>
                  <tbody>
                  
                  
                  <tr align="center">
                      <td>1</td>                  
                      <td><button type="button" class="btn btn-info float-center" onclick="alert('컴퓨터 보안 수강신청이 완료되었습니.')">신청</button></td> 					
                      <td>컴퓨터 보안</td>
                      <td>410005</td>
                      <td>전필</td>
                      <td>3</td>
                      <td>노흥식</td>
                      <td>40</td>
                      <td>34</td>
                    </tr>
                  
                  <tr align="center">
                      <td>2</td>                  
                      <td><button type="button" class="btn btn-info float-center" onclick="location.href='/freeboard/list';">신청</button></td> 					
                      <td>네트워크 개론</td>
                      <td>410015</td>
                      <td>전필</td>
                      <td>3</td>
                      <td>유제광</td>
                      <td>40</td>
                      <td>4</td>
                    </tr>       
                  <tr align="center">
                      <td>3</td>                  
                      <td><button type="button" class="btn btn-info float-center" onclick="location.href='/freeboard/list';">신청</button></td> 					
                      <td>클라우드</td>
                      <td>410215</td>
                      <td>전필</td>
                      <td>3</td>
                      <td>윤회진</td>
                      <td>40</td>
                      <td>14</td>
                    </tr>  
                     <tr align="center">
                      <td>3</td>                  
                      <td><button type="button" class="btn btn-info float-center" onclick="location.href='/freeboard/list';">신청</button></td> 					
                      <td>자바 프로그래밍</td>
                      <td>410245</td>
                      <td>전필</td>
                      <td>3</td>
                      <td>김전호</td>
                      <td>40</td>
                      <td>29</td>
                    </tr>  
                     <tr align="center">
                      <td>4</td>                  
                      <td><button type="button" class="btn btn-info float-center" onclick="location.href='/freeboard/list';">신청</button></td> 					
                      <td>node.js 프로그래밍</td>
                      <td>410345</td>
                      <td>전선</td>
                      <td>3</td>
                      <td>김필호</td>
                      <td>40</td>
                      <td>1</td>
                    </tr>    
                                                           <tr align="center">
                      <td>5</td>                  
                      <td><button type="button" class="btn btn-info float-center" onclick="location.href='/freeboard/list';">신청</button></td> 					
                      <td>정보시스템 감리</td>
                      <td>410349</td>
                      <td>전선</td>
                      <td>3</td>
                      <td>이택현</td>
                      <td>40</td>
                      <td>15</td>
                    </tr>
                               
<!-- 
          
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