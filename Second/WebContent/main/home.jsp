<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.sist.calender.*,java.util.*"%>
	 <jsp:useBean id="cmModel" class="com.sist.calender.MovieModel"/>
	 
	 <%
	 cmModel.movieListData(request);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>혜지닝웨우에</title>
</head>
<body>
	<section id="intro">
		<div class="intro-content">
			<h2>Welcome to Ready&Start!</h2>
			<div>
				<a href="#section-services" class="btn-get-started scrollto">Get
					Started</a>
			</div>
		</div>
	</section>
	<section id="section-services" class="section pad-bot30 bg-white">
		<div class="container">

			<div class="row mar-bot40">
				<div class="col-lg-1"></div>

				<div class="col-lg-5">
					<div
						class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a mar-top20">
						<div class="float-left mar-right20">
							<a href="#" class="hi-icon hi-icon-screen">screen</a>
						</div>
					</div>
					<h3 class="text-bold">Scores & Ratings</h3>
					<p>기업평점 순위 Top5</p>

					<div class="clear"></div>
				</div>

				<div class="col-lg-1"></div>

				<div class="col-lg-5">
					<div
						class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a mar-top20">
						<div class="float-left mar-right20">
							<a href="#" class="hi-icon hi-icon-images">images</a>
						</div>
					</div>
					<h3 class="text-bold">Recruitment calendar</h3>
					<p>주간별 공채일정</p>

					<div class="clear"></div>
				</div>

			</div>
			<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-5">
					<div
						class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a mar-top20">
						<div class="float-left mar-right20">
							<a href="#" class="hi-icon hi-icon-archive">archive</a>
						</div>
					</div>
					<h3 class="text-bold">Recruitment News</h3>
					<p>채용 관련 뉴스</p>

					<div class="clear"></div>
				</div>

				<div class="col-lg-1"></div>

				<div class="col-lg-5">
					<div
						class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a mar-top20">
						<div class="float-left mar-right20">
							<a href="#" class="hi-icon hi-icon-contract">Mobile</a>
						</div>
					</div>
					<h3 class="text-bold">Notice</h3>
					<p>공지사항</p>

					<div class="clear"></div>
				</div>


			</div>
		</div>
	</section>
	<!-- about -->
	<section id="section-about" class="section appear clearfix">
		<div class="container">

			<div class="row mar-bot40">
				<div>
					<div class="section-header">
						<h2 class="section-heading animated" data-animation="bounceInUp">Recruitment
							calendar</h2>
						<table class="table table-striped">
							<tr>
								<th width=14% class="text-center">${vo. }</th>
								<th width=14% class="text-center">4월 26일</th>
								<th width=14% class="text-center">4월 27일</th>
								<th width=14% class="text-center">4월 28일</th>
								<th width=14% class="text-center">4월 28일</th>
								<th width=14% class="text-center">4월 28일</th>
								<th width=14% class="text-center">4월 29일</th>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /about -->
	<section id="parallax1" class="section"
		data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row appear stats">
			<div class="col-lg-1">
			</div>
				<div class="col-lg-2">
					<div class="align-center color-white txt-shadow">
						<div class="icon">
							<i class="fa fa-coffee fa-5x"></i>
						</div>
						<strong id="counter-coffee1" class="number">5</strong><font size=15>.</font><strong id="counter-coffee2" class="number">8</strong><br> <span
							class="text">Black Coffee Cups</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="align-center color-white txt-shadow">
						<div class="icon">
							<i class="fa fa-music fa-5x"></i>
						</div>
						<strong id="counter-music" class="number">345</strong><br> <span
							class="text">MP3 Songs</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="align-center color-white txt-shadow">
						<div class="icon">
							<i class="fa fa-music fa-5x"></i>
						</div>
						<strong id="counter-music" class="number">345</strong><br> <span
							class="text">MP3 Songs</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="align-center color-white txt-shadow">
						<div class="icon">
							<i class="fa fa-clock-o fa-5x"></i>
						</div>
						<strong id="counter-clock" class="number">1235</strong><br> <span
							class="text">Hard Minutes</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="align-center color-white txt-shadow">
						<div class="icon">
							<i class="fa fa-heart fa-5x"></i>
						</div>
						<strong id="counter-heart" class="number">478</strong><br> <span
							class="text">Lovely Clients</span>
					</div>
				</div>
				<div class="col-lg-1">
			</div>
				
			</div>
		</div>
	</section>
		
</body>
</html>