<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">

		<!-- 버튼 -->

		<button type="button" class="btn btn-primary btn-sm"
			data-toggle="modal" data-target="#compareModal">비교하기</button>

		<!-- 모달 팝업 -->
		<div class="modal fade" id="compareModal" tabindex="-1" role="dialog"
			aria-labelledby="compareModalLabel" aria-hidden="true">

			<div class="modal-dialog modal-md">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
						<h4 class="modal-title" id="compareModalLabel">비교기업 추가</h4>
						<hr style="border: solid 1px black;" width="100%">
						<!-- 기업 검색 부분 -->
									<div class="input-group stylish-input-group input-append">
										<input type="text" class="form-control" placeholder="기업명 검색">
										<span class="input-group-addon">
											<button type="submit">
												<span class="glyphicon glyphicon-search"></span>
											</button>
										</span>
									</div>
							<br>
					<!-- 검색결과 부분 -->
					<div class="search_result">
						<h5 style="text-align:left;">검색결과</h5>
							<hr style="border: solid 1px black;" width="100%"><br>
						</div>	
					</div>
				</div>
			</div>
			<br>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>