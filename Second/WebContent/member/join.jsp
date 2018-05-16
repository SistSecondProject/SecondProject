<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<section>
				<h1 class="text-center">
					<span>회원가입</span>
				</h1>
				<hr>
				<form class="form-horizontal" method="post" name="signup"
					id="signup" enctype="multipart/form-data">

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">아이디<span
							class="text-danger">*</span></label>
						<div class="col-md-4">
							<input type="password" class="form-control" name="password"
								id="password" placeholder="" value="">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">비밀번호
							<span class="text-danger">*</span>
						</label>
						<div class="col-md-4">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input type="password"
									class="form-control" name="password" id="password"
									placeholder="" value="">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">비밀번호
							확인<span class="text-danger">*</span>
						</label>
						<div class="col-md-4">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input type="password"
									class="form-control" name="cpassword" id="cpassword"
									placeholder="" value="">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">이름 <span
							class="text-danger">*</span></label>
						<div class="col-md-4">
							<input type="text" class="form-control" name="mem_name"
								id="user_name" placeholder="" value="">
						</div>
					</div>
			
					
		<div class="form-group">
			<label class="col-md-4 control-label col-xs-12"
				for="Permanent Address">우편번호<span
							class="text-danger">*</span></label>
			<div class="col-md-2  col-xs-4">
				<input id="Permanent Address" name="Permanent Address" type="text"
					placeholder="" class="form-control input-md ">
			</div>
			<div class="col-md-2 col-xs-4">
				<input id="Permanent Address" name="Permanent Address" type="text"
					placeholder="" class="form-control input-md ">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-4 control-label" for="Permanent Address"></label>
			<div class="col-md-4">
				<input id="" name="Permanent Address" type="text"
					placeholder="" class="form-control input-md ">
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">관심직종</label>
			<div class="col-md-4">
				<div class="card" style="margin: 10px">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">서비스업 <input type="checkbox">
						</li>
						<li class="list-group-item">제조/화학 <input type="checkbox">
						</li>
						<li class="list-group-item">의료/제약/복지 <input type="checkbox">
						</li>
						<li class="list-group-item">유통/무역/운송 <input type="checkbox">
						</li>
						<li class="list-group-item">교육업 <input type="checkbox">
						</li>
						<li class="list-group-item">건설업 <input type="checkbox">
						</li>
						<li class="list-group-item">IT/웹/통신 <input type="checkbox">
						</li>
						<li class="list-group-item">미디어/디자인 <input type="checkbox">
						</li>
						<li class="list-group-item">은행/금융업 <input type="checkbox">
						</li>
						<li class="list-group-item">기관/협회 <input type="checkbox">
						</li>
					</ul>
				</div>
			</div>

		</div>
		<div class="form-group">
			<label class="col-md-4 control-label" for="singlebutton"></label>
			<div class="col-md-4">
				<input name="Submit" type="submit" value="회원가입"
					class="btn btn-primary">
				<button class="btn btn-danger btn-cancel-action">취소</button>
			</div>
		</div>
		</form>
	</div>
	</div>
</body>
</html>