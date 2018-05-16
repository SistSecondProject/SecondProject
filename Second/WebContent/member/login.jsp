<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>
<body>
	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
	<div class="container">
		<!-- 버튼 -->
		<button type="button" class="btn btn-primary btn-sm"
			data-toggle="modal" data-target="#myModal">로그인</button>
		<!-- 모달 팝업 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">

			<div class="modal-dialog modal-sm">

				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span style="font-size:1.5em" aria-hidden="true">×</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">로그인</h4>
					</div>
				<!-- 모달header부분 끝  -->
				
					<div class="well login-box">
						<form class="login-form">
							<div class="form-group">
								<label for="exampleInputEmail1" class="text-uppercase">아이디</label>
								<input type="text" name="id" class="form-control" placeholder="">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="text-uppercase">비밀번호</label>
								<input type="password" name="pwd" class="form-control" placeholder="">
							</div>
							<div class="form-group text-center">
								<input type="submit" class="btn btn-success btn-login-submit"
									value="login" />
								<button class="btn btn-danger btn-cancel-action">Cancel</button>
							</div>
							<!-- form-group// -->
							<p class="text-center">
								<a href="#" class="btn">아이디/비밀번호 찾기</a>
							</p>

							<div class="modal-footer">
								<p>
									<a href="../member/join.jsp" class="btn btn-block btn-outline-primary"> <i
										class="fab fa-facebook-f"></i>  회원가입
									</a><a href="" class="btn btn-block btn-outline-primary"> <i
										class="fab fa-google"></i>   Goolge
									</a><a href="" class="btn btn-block btn-outline-info"> <i
										class="fab fa-twitter"></i>  Twitter
									</a>
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script
			src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<!-- holder.js -->
</body>
</html>