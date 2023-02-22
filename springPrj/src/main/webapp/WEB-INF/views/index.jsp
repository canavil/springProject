<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<meta content="text/html; charset=euc-kr">
<title>HTML5</title>
<style type="text/css">
	body {
		text-align: center;
		color: #FFF;
		width: 1200px;
	}
	div#wapper {
		width: 100%;
		text-align: left;
		min-height: 300px; 
		margin: 0 auto;
	}
	header, footer, nav, aside, section {
		border: 1px solid #999;
		margin: 5px;
		padding: 10px;
	}
	header {
		height: 50px;
		background-color: #0B6DB7;
	}
	nav, section, aside {
		float: left;
		height: 300px;
	}
	nav {
		background-color: #0B6DB7;
		width: 120px;
	}
	section {
		background-color: #FFFFFF;	
		width: 883px; 
	}
	aside {
		background-color: #0B6DB7;
		width: 100px; 
	}
	footer {
		height: 50px;
		background-color: #0B6DB7;
		position: relatiev;
		clear: both;
	}
	article {
		width: 90%;
		margin: 20px;
		background-color: #999;
	}
	

</style>

</head>
<body>
	<div id="wapper">
		<!--헤더시작-->
		<header>
			<p><%@ include file="topMenu.jsp" %></p>
		</header>
		<!--네비게이션-->
		<nav>
		
			<p><%@ include file="leftMenu.jsp" %></p>
			
		</nav>
		<!--콘텐츠부분-->
		<section>
			<p>section</p>
			<article>
				<p>article</p>
				
				
				<table class="type09">
  <thead>
  <tr>
    <th scope="cols">타이틀</th>
    <th scope="cols">내용</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <th scope="row">항목명</th>
    <td>내용이 들어갑니다.</td>
  </tr>
  <tr>
    <th scope="row">항목명</th>
    <td>내용이 들어갑니다.</td>
  </tr>
  <tr>
    <th scope="row">항목명</th>
    <td>내용이 들어갑니다.</td>
  </tr>
  </tbody>
</table>

			</article>
		</section>
		<!--사이드바-->
		<aside>
			<p>aside</p>
		</aside>
		<!--풋터-->
		<footer><%@ include file="bottom.jsp" %></footer>
	</div>
</body>
</html>

<!-- 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body>


<table width="100%" border="1">
<tr>
	<td>
		<%@ include file="topMenu.jsp" %>
		
	</td>
</tr>	
<tr> 
	<td>
	
		<form method="POST">
			<p>로그인 ID  : <input type="text" name="userid"/> PASSWORD  : <input type="text" name="passwd"/> <input type="submit" value="로그인" /></p>
		</form>
			
	</td>
</tr>
<tr>
	<td>
		<%@ include file="bottom.jsp" %>
		
	</td>
</tr>



</table>



<hr>


<hr>




<hr>



<hr>



<hr>
</body>
</html>
 -->