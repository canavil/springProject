<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<p>로그인 ID : <input type="text" name="userid"/> PASSWORD  : <input type="text" name="passwd"/> <input type="submit" value="로그인" /></p>
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