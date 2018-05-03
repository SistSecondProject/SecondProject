<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Ready&Start</title>
<link href="css/size.css" rel="stylesheet" />
<link href="css/test.css" rel="stylesheet" />
</head>
<body>
	<!-- headline -->
	<section id="inner-headline">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a><i
							class="icon-angle-right"></i></li>
						<li class="active">기업비교</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!--end headline -->


	<section id="content">
		<div class="container">
			<h5 style="text-align: left;">인기 검색기업</h5>
			<hr style="border: solid 1px black;" width="100%">
			<br>
		</div>
		&emsp;&emsp;&emsp;

		<div class="container">
			<h5 style="text-align: left;">전체 기업비교</h5>
			<hr style="border: solid 1px black;" width="100%">
			<br>
			<div class="compare_vs">
				<p>
					<input type="button" class="btn btn-default btn-lg"
						style="width: 300px; height: 100px" data-toggle="modal"
						data-target="#compareModal" value=비교기업+>
						
						&emsp;&emsp;&emsp;&emsp;
						
					<span style="font-size:2.5em; font-weight:bold; color:darkblue">vs</span>
						&emsp;&emsp;&emsp;&emsp;
						
					<input type="button" class="btn btn-default btn-lg"
						style="width: 300px; height: 100px" data-toggle="modal"
						data-target="#compareModal" value=비교기업+>
						
				</p><br>
				<br> <input type="button" class="btn btn-info btn-lg"
					style="width: 450px; height: 40px" value=비교하기> <br>
				<br><br>
			</div>
		</div>

		<div class="container">
			<h5 style="text-align: left;">나의 기업비교</h5>
			<hr style="border: solid 1px black;" width="100%">
			<br>
			<div class="compare_vs">

				<p>
					<input type="button" class="btn btn-default btn-lg"
						style="width: 300px; height: 100px" data-toggle="modal"
						data-target="#compareModal" value=비교기업+>&emsp;&emsp;&emsp;&emsp;								
						<span style="font-size:2.5em; font-weight:bold; color:darkblue">vs</span>
						&emsp;&emsp;&emsp;&emsp;
					<input type="button" class="btn btn-default btn-lg"
						style="width: 300px; height: 100px" data-toggle="modal"
						data-target="#compareModal" value=비교기업+>
				</p><br>
				<br> <input type="button" class="btn btn-info btn-lg"
					style="width: 450px; height: 40px" value=비교하기> <br>
				<br>
			</div>
		</div>

	</section>

	<!-- 버튼 -->

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
						<h5 style="text-align: left;">검색결과</h5>
						<hr style="border: solid 1px black;" width="100%">
						<br>
					</div>
				</div>
			</div>
		</div>
		<br>
	</div>
</body>
</html>
