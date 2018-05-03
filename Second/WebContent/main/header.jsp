<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>TEST</title>
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
						<a class="navbar-brand" href="main.jsp"><span>T</span>EST</a>
					</div>
					<div class="navbar-collapse collapse ">
						<ul class="nav navbar-nav">
							<li class="active"><a href="main.jsp">Home</a></li>
							<li><a href="main.jsp?mode=1">기업검색</a></li>
							<li><a href="main.jsp?mode=2">기업비교</a></li>
							<li><a href="main.jsp?mode=3">합격자소서</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle "
								data-toggle="dropdown" data-hover="dropdown" data-delay="0"
								data-close-others="false">커뮤니티 <b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
									<li><a href="main.jsp?mode=4">스펙평가</a></li>
									<li><a href="main.jsp?mode=5">자유게시판</a></li>
									<!-- 	<li><a href="pricingbox.html">Pricing box</a></li> -->
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- end header -->
