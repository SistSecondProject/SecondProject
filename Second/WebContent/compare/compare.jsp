<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
	
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Ready&Start</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />
<link href="css/size.css" rel="stylesheet" />
<link href="css/button.css" rel="stylesheet" /> 
<link href='http://fonts.googleapis.com/css?family=Oswald'
	rel='stylesheet' type='text/css'>
<!-- Theme skin -->
<link href="skins/default.css" rel="stylesheet" />

</head>
<body>
	<header>
		<div class="navbar navbar-default navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><span>T</span>EST</a>
				</div>
				<div class="navbar-collapse collapse ">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.html">Home</a></li>
						<li><a href="portfolio.html">기업검색</a></li>
						<li><a href="blog.html">합격자소서</a></li>
						<li><a href="contact.html">기업비교</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle "
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false">커뮤니티 <b class=" icon-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li><a href="typography.html">스펙평가</a></li>
								<li><a href="components.html">자유게시판</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<!-- end header -->

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
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<input type="button" class="btn btn-default btn-lg"
						style="width: 300px; height: 100px" data-toggle="modal"
						data-target="#compareModal" value=비교기업+>
				</p>
				<br> <input type="button" class="btn btn-info btn-lg"
					style="width: 450px; height: 40px" value=비교하기> <br>
				<br>
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
						data-target="#compareModal" value=비교기업+>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<input type="button" class="btn btn-default btn-lg"
						style="width: 300px; height: 100px" data-toggle="modal"
						data-target="#compareModal" value=비교기업+>
				</p>
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
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	
</body>
</html>
