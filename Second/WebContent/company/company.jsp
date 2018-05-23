<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<body>
	<div id="wrapper">
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">기업검색</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<c:choose>
							<c:when test="${vo ne null}">
								<jsp:include page="../company/companyDetail.jsp"></jsp:include>
							</c:when>
							<c:when test="${recruitment ne null}">
								<jsp:include page="../company/recruitment.jsp"></jsp:include>
							</c:when>
							<c:otherwise>
								<jsp:include page="../company/companyList.jsp"></jsp:include>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="col-lg-4">
						<aside class="right-sidebar">
							<div class="widget">
								<form class="form-search" method="get">
									<input class="form-control" type="text" name="search"
										placeholder="Search.."> <input type="hidden"
										name="category" value="${category}">
								</form>
							</div>
							<div class="widget">
								<h5 class="widgetheading">카테고리</h5>
								<ul class="cat">
									<c:forEach var="str" items="${catename}" varStatus="status">
										<li><i class="icon-angle-right"></i> <a
											href="company.do?category=${str}">${str}</a><span>
												(${catecount[status.index]})</span></li>

									</c:forEach>
								</ul>
							</div>
							<div class="widget">
								<h5 class="widgetheading">최근 평가</h5>
								<ul class="recent">
									<li><img src="img/dummies/blog/65x65/thumb1.jpg"
										class="pull-left" alt="" />
										<h6>
											<a href="#">Lorem ipsum dolor sit</a>
										</h6>
										<p>Mazim alienum appellantur eu cu ullum officiis pro pri
										</p></li>
									<li><a href="#"><img
											src="img/dummies/blog/65x65/thumb2.jpg" class="pull-left"
											alt="" /></a>
										<h6>
											<a href="#">Maiorum ponderum eum</a>
										</h6>
										<p>Mazim alienum appellantur eu cu ullum officiis pro pri
										</p></li>
									<li><a href="#"><img
											src="img/dummies/blog/65x65/thumb3.jpg" class="pull-left"
											alt="" /></a>
										<h6>
											<a href="#">Et mei iusto dolorum</a>
										</h6>
										<p>Mazim alienum appellantur eu cu ullum officiis pro pri
										</p></li>
								</ul>
							</div>
							<div class="widget">
								<h5 class="widgetheading">고평점 기업</h5>
								<ul class="tags">
									<li><a href="#">Web design</a></li>
									<li><a href="#">Trends</a></li>
									<li><a href="#">Technology</a></li>
									<li><a href="#">Internet</a></li>
									<li><a href="#">Tutorial</a></li>
									<li><a href="#">Development</a></li>
								</ul>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</section>

	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
	<!-- javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- 	<script src="js/jquery.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/jquery.fancybox-media.js"></script>
	<script src="js/google-code-prettify/prettify.js"></script>
	<script src="js/portfolio/jquery.quicksand.js"></script>
	<script src="js/portfolio/setting.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/custom.js"></script> -->

</body>

</html>