<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta  charset="EUC-KR">
<title>Insert title here</title>
  <link rel="stylesheet" href="../login/css/loginstyle.css"> 
   <script type="text/javascript">
 
  
 function login() {
	
	 var f = document.loginForm;
	 var str = f.userId.value;
      if(!str) {
         alert("\n아이디를 입력하세요. ");
         f.userId.focus();
         return;
     }

     str = f.password.value;
     if(!str) {
         alert("\n패스워드를 입력하세요. ");
         f.password.focus();
         return;
     }
     
       
     f.action = "login_ok.do";
	 f.submit();
}
 
  </script> 
  <style type="text/css">
  .login-form{
  
  }</style>
</head>
<body style="background-color:white">
	<hr style="border: solid 0.3px #4296c4">
   <div class="login" style="width: 600px; height:700px;">
   <br><br><br><br><br><br>
   <form name="loginForm"  method="post">
     	
		<div class="login-screen" style="background-color:#f4f7fc">
			<div class="app-title">
				<h1>Login</h1>
			</div> 
			<div class="login-form">
				<div class="control-group">
				<input type="text" class="login-field" value="" placeholder="username" name="userId" id="userId">
				<label class="login-field-icon fui-user" for="login-name" ></label>
				 
				</div>

				<div class="control-group">
				<input type="password" class="login-field" value="" placeholder="password" name="password" id="password" >
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				 <div id="pass_text" style="text-algin:center" class="danger">${message}</div>
				</div>

				<a class="btn btn-primary btn-large btn-block" onclick="login();" type=button>login</a><br>
				<a class="login-link" href="../member/join.do" style="font-size:13pt; font-weight:bold">회원가입</a>
				
				
		    
			</div>
			    
		</div>
		</form> 
	</div>
	
</body>
</html>