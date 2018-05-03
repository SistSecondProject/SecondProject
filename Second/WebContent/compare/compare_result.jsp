<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<link href="css/jcarousel.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />
<link href="css/size.css" rel="stylesheet" />
<link href="css/test.css" rel="stylesheet" />
<link href="css/test2.css" rel="stylesheet" />
<link href="Nwagon/style.css" rel="stylesheet" />
<link href="css/button.css" rel="stylesheet" />
<link href="css/chartsize.css" rel="stylesheet" />
<link href="css/button2.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Oswald'
	rel='stylesheet' type='text/css'>
<link rel='stylesheet' href='Nwagon.css' type='text/css'>
<script src='Nwagon.js'></script>
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
		<div class="com">
			<!-- 	<div
					style="border: 1px solid; float: left; width: 500px; height:130px; padding: 10px;">
					첫번째 영역</div>
				<div
					style="border: 1px solid; float: left; width: 500px; height:130px; padding: 10px;">
					두번째 영역</div>
 -->
			<div class="com_common">
			<button id="com_button" class="btn btn-default pull-right" type="button">기업정보</button>
			</div>
			<div class="com_common">
				<button id="com_button" class="btn btn-default pull-right" type="button">기업정보</button>
			</div>

		</div>
		<div>
			<span class="rad">기업평점</span>
		</div>

		&emsp;&emsp;&emsp;

		<!-- chart -->
		<div style="border-style: ridge; width: 1000px;" class="container">
			<div class="example col-lg" id="chart11">
				<script>
					var options = {
						'legend' : {
							names : [ '승진 기회 및 가능성', '복지 및 급여', '업무와 삶의 균형',
									'사내문화', '경영진 평점', '매출액', '사원수', '평균연봉' ],
							hrefs : []
						},
						'dataset' : {
							title : 'Web accessibility status',
							values : [ [ 33, 53, 67, 23, 78, 45, 69, 89 ],
									[ 53, 67, 23, 78, 45, 69, 89, 33 ] ],
							bgColor : '#f9f9f9',
							fgColor : '#cc79a7'
						},
						'chartDiv' : 'chart11',
						'chartType' : 'radar',
						'chartSize' : {
							width : 800,
							height : 400
						}
					};
					Nwagon.chart(options);
				</script>
			</div>
		</div>
		<br>
		<div>
			<span class="rad">매출액</span>
		</div>
		<br>
		<div>
			<span class="rad">사원수</span>
		</div>
		<br>
		<div>
			<span class="rad">평균연봉</span><br>
		</div>
		<br>
	</section>
</body>
</html>
