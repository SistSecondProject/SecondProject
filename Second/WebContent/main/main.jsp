<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.sist.change.*"%>

<%-- <%
	// 화면 변경  main.jsp?mode=1
	/*
	     ~main.jsp
	     => mode=null
	        if(mode==null)
	     ~main.jsp?mode=
	     => mode=""
	        if(mode=="")(X)
	        if(mode.equals(""))(O)
	*/

	String mode = request.getParameter("mode");
	if (mode == null)
		mode = "0";
	int no = Integer.parseInt(mode);
	String jsp = JspChange.change(no);
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Ready&Start</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<!-- css -->
<link href="../css/bootstrap.min.css" rel="stylesheet" />
<link href="../css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="../css/jcarousel.css" rel="stylesheet" />
<link href="../css/flexslider.css" rel="stylesheet" />
<link href="../css/style.css" rel="stylesheet" />
<link href="../css/size.css" rel="stylesheet" />
<!-- Theme skin -->
<link href="../skins/default.css" rel="stylesheet" />
</head>
<body>
	<div id="wrapper">
		<!-- start header -->
		<header>
			<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="main.do"><span>T</span>EST</a>
					</div>
					<div class="navbar-collapse collapse ">
						<ul class="nav navbar-nav">
							<li class="active"><a href="main.do">Home</a></li>
							<li><a href="company.do">기업검색</a></li>
							<li><a href="compare.do">기업비교</a></li>
							<li><a href="passinfo.do">합격자소서</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle "
								data-toggle="dropdown" data-hover="dropdown" data-delay="0"
								data-close-others="false">커뮤니티 <b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
									<li><a href="main.jsp?mode=4">스펙평가</a></li>
									<li><a href="main.jsp?mode=5">자유게시판</a></li>
									<!-- 	<li><a href="pricingbox.html">Pricing box</a></li> -->
								</ul></li>
						<li><a data-target="#myModal" data-toggle="modal" href="#myModal">로그인</a> 
						<!-- 모달 팝업 -->
							<div style="z-index:9999" class="modal fade" id="myModal" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">

								<div class="modal-dialog modal-sm">

									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span style="font-size: 1.5em" aria-hidden="true">×</span>
											</button>
											<h3 id="myModalLabel">Login</h3>
										</div>
										<!-- 모달header부분 끝  -->

										<div class="well login-box">
											<form class="login-form">
												<div class="form-group">
													<label for="exampleInputEmail1">&nbsp;ID</label> <input
														type="text" name="id" class="form-control" placeholder="">

												</div>
												<div class="form-group">
													<label for="exampleInputPassword1">&nbsp;Password</label> <input
														type="password" name="pwd" class="form-control"
														placeholder="">
												</div>
												<div class="form-group text-center">
													<input type="submit"
														class="btn btn-warning btn-login-submit" value="login"
														style="width: 100%;" />
												</div>
												<!-- form-group// -->
												<p class="text-center">
													<a href="../member/join.jsp"> <span
														class="glyphicon glyphicon-ok"></span>&nbsp;회원가입
													</a>
												</p>
												<hr>
												<p class="text-left" style="color: gray">
													&copy; Ready & Start All rights reserved. <br>
													&nbsp;&nbsp;&nbsp;&nbsp;Hosting by ready & start
												</p>
											</form>
										</div>
									</div>
								</div>
							</div>
							</li>
							</ul>
				</div>
			</div>

		</div>
	</div>

		<!-- end header -->

		<!-- content -->
		<jsp:include page="${home_jsp }"></jsp:include>
		<!-- content end -->

		<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">Get in touch with us</h5>
					<address>
						<strong>쌍용강북교육센터</strong><br> 강북 서울특별시 마포구 월드컵북로21<br>
						풍성빌딩 2,3,4층
					</address>
					<p>
						<i class="icon-phone"></i> Tel 02)336-8546~8 <br> <i
							class="icon-envelope-alt"></i> Fax 02)334-5405
					</p>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">Pages</h5>
					<ul class="link-list">
						<li><a href="#">Press release</a></li>
						<li><a href="#">Terms and conditions</a></li>
						<li><a href="#">Privacy policy</a></li>
						<li><a href="#">Career center</a></li>
						<li><a href="#">Contact us</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">Latest posts</h5>
					<ul class="link-list">
						<li><a href="#">Lorem ipsum dolor sit amet, consectetur
								adipiscing elit.</a></li>
						<li><a href="#">Pellentesque et pulvinar enim. Quisque at
								tempor ligula</a></li>
						<li><a href="#">Natus error sit voluptatem accusantium
								doloremque</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">Ready & Start photostream</h5>
					<div class="flickr_badge">
						<script type="text/javascript"
							src="https://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
	<div id="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>&copy; Ready & Start. All rights reserved.</p>
						<div class="credits"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<script src="../js/jquery.js"></script>
	<script src="../js/jquery.easing.1.3.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.fancybox.pack.js"></script>
	<script src="../js/jquery.fancybox-media.js"></script>
	<script src="../js/google-code-prettify/prettify.js"></script>
	<script src="../js/jquery.flexslider.js"></script>
	<script src="../js/animate.js"></script>
	<script src="../js/custom.js"></script>
</body>
</html>