<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
 <head>
  <title>약관동의</title>
  
  <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
 </head>
 <body>

   

  <form method="POST" action="/joinStep3">
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
		<input type="text" name="korname">  
    </td>
  </tr>
  
  <tr>
    <th scope="row">아이디</th>
    <td>
		<input type="text" name="userid">  
    </td>
  </tr>
  
  <tr>
    <th scope="row">비밀번호</th>
    <td>
		<input type="text" name="passwd">  
    </td>
  </tr>
  
  <tr>
    <th scope="row">비밀번호 확인</th>
    <td>
		<input type="text" name="passwdConfirm">  
    </td>
  </tr>  
  <tr>
    <th scope="row"></th>
    <td><input type="submit" value="회원가입" /></td>
  </tr>
  
  </tbody>
  </form>
</table>
 </body>
</html>