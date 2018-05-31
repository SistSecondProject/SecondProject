<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"
	import="com.sist.calender.*,java.util.*,com.sist.news.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>테스트2311</title>
<script type="text/javascript">
    function tar(n){
        $('html, body').stop().animate({
            scrollTop : $('div.scroll').eq(n).offset().top
        },1500);
    }
</script>
<style type="text/css">
.modal{
overflow-y: auto;
}
.modal-open{
overflow:auto;
overflow-x:hidden;
}
div.viewWrap img{ width: 100%}
span.count{
font-size: 20px;
font-weight: bold;
}
</style>
</head>
<body>
	<section id="intro">
	<div class="intro-content">
		<h2>Welcome to Ready&Start!</h2>
		<div>
			<a href="#" onclick="tar(0)" class="btn-get-started scrollto">Get Started</a>
		</div>
	</div>
	</section>
	<!-- about -->

	<section id="content">
	<div class="container scroll">
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4>Recruit Calendar</h4>
								<div class="icon">
									<i class="fa fa-pagelines fa-3x"></i>
								</div>

							</div>
							<div class="box-bottom">
								<a href="#" onclick="tar(1)">Learn more</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4>Scores & Ratings</h4>
								<div class="icon">
									<i class="fa fa-desktop fa-3x"></i>
								</div>

							</div>
							<div class="box-bottom">
								<a href="#" onclick="tar(1)">Learn more</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4>Career News</h4>
								<div class="icon">
									<i class="fa fa-edit fa-3x"></i>
								</div>

							</div>
							<div class="box-bottom">
								<a href="#" onclick="tar(2)">Learn more</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4>Notice</h4>
								<div class="icon">
									<i class="fa fa-code fa-3x"></i>
								</div>
							</div>
							<div class="box-bottom">
								<a href="#" onclick="tar(3)">Learn more</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section id="featured"> <!-- start slider -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<!-- Slider -->
				<div id="main-slider" class="flexslider">
					<ul class="slides">
						<li><img src="../img/slides/1.jpg" alt="" />
							<div class="flex-caption" style="text-align: left">
								<h3>Corporate Search</h3>
								<p>
									입사하고 싶은 기업을 관심기업으로<br>등록하고 관심기업의 업데이트 소식을 받아보세요.
								</p>
								<a href="company.do" class="btn btn-theme">Learn More</a>
							</div></li>
						<li><img src="../img/slides/2.jpg" alt="" />
							<div class="flex-caption" style="text-align: left">
								<h3>Corporate comparison</h3>
								<p>Ready&Start의 기업 재무평가, 재직자평판 비교서비스입니다.</p>
								<a href="compare.do" class="btn btn-theme">Learn More</a>
							</div></li>
						<li><img src="../img/slides/3.jpg" alt="" />
							<div class="flex-caption" style="text-align: left">
								<h3>합격자소서</h3>
								<p>인사담당자가 선택한 진짜 합격자소서를 확인해보세요.</p>
								<a href="passinfo.do" class="btn btn-theme">Learn More</a>
							</div></li>
					</ul>
				</div>
				<!-- end slider -->
			</div>
		</div>
	</div>
	</section>

	<section id="section-about" class="section appear clearfix">
	<div class="container scroll" style="width: 80%">

		<div class="row mar-bot40">
			<div>
				<div class="section-header">
					<center>
						<h2 class="section-heading animated" data-animation="bounceInUp">RECRUIT
							CALENDAR</h2>
						<table class="table table-striped">
							<tr>
								<c:forEach var="i" begin="0" end="6">
									<th width="250px" style="text-align: center;">${cfList[i].day }</th>
								</c:forEach>
							</tr>
							<tr>
								<c:forEach var="i" begin="0" end="6">
									<td>
										<dl>
											<c:forEach var="j" begin="0" end="6">
											<c:if test="${j!=6 }">
												<dd><a style="color: black" href="javascript:void(window.open('calender_dt.do?link=${ciList[(i*7)+j].url }','정보','width=1050px,height=450px,top=200px,left=400px'))">${ciList[(i*7)+j].data }</a></dd>
												</c:if>
											</c:forEach>
										</dl>
									</td>
								</c:forEach>
							</tr>


						</table>
					</center>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- /about -->
	<center>
		<h2 id="section-heading animated" data-animation="bounceInUp">SALARY RANK</h2>(단위:만원)
	</center>
	<section id="parallax1" class="section"
		data-stellar-background-ratio="0.5">
	<div class="container">
		<div class="row appear stats">
			<div class="col-lg-1"></div>
			<div class="col-lg-2">
				<div class="align-center color-white txt-shadow">
					<div class="icon">
					<img src="https://jpassets.jobplanet.co.kr/production/uploads/company/logo/2943/thumb_376.jpg">
					</div>
					 <span class="count">9946</span><br> <span
						class="text">한국프랜지공업(주)</span>
				</div>
			</div>
			<div class="col-lg-2">
				<div class="align-center color-white txt-shadow">
					<div class="icon">
					<img src="https://jpassets.jobplanet.co.kr/production/uploads/company/logo/3419/thumb_________.png">
					</div>
					  <span class="count">9922</span><br> <span
						class="text">한국쓰리엠(주)</span>
				</div>
			</div>
			<div class="col-lg-2">
				<div class="align-center color-white txt-shadow">
					<div class="icon">
					<img src="https://jpassets.jobplanet.co.kr/production/uploads/company/logo/1289/thumb______.jpg	">
					</div>
					  <span class="count">9908</span><br> 
					<span class="text">현대자동차(주)</span>
				</div>
			</div>
			<div class="col-lg-2">
				<div class="align-center color-white txt-shadow">
					<div class="icon">
					<img src="https://jpassets.jobplanet.co.kr/production/uploads/company/logo/84811/thumb_84811.png">
					</div>
					 <span class="count">9888</span><br> <span
						class="text">(주)글락소스미스클라인</span>
				</div>
			</div>
			<div class="col-lg-2">
				<div class="align-center color-white txt-shadow">
					<div class="icon">
					<img src="https://jpassets.jobplanet.co.kr/production/uploads/company/logo/22475/thumb_22475.JPG">
					</div>
					 <span class="count">9885</span><br> <span
						class="text">아이비케이투자증권(주)</span>
				</div>
			</div>
			<div class="col-lg-1"></div>

		</div>
	</div>
	</section>

	<!-- 채용 뉴스 -->
	<section id="section-news" class="section appear clearfix">
	<div class="container scroll">

		<div class="row mar-bot40">
			<div class="col-md-offset-3 col-md-6">
				<div class="section-header">
					<center>
						<h2 class="section-heading animated" data-animation="bounceInUp">CAREER
							NEWS</h2>
					</center>
					<p></p>
				</div>
			</div>
		</div>
	</div>
	<div class="imgs col-md-12">
		<div class="row">
			<div class="col-md-2"></div>
			<c:forEach var="i" begin="0" end="3">
				<a data-toggle="modal" data-target="#myModal${i }">
					<div class="col-md-2">
						<div class="box">
							<div class="box-gray aligncenter" style="height: 235px">
								<div class="icon">
									<img src="${nfList[i].newsImg }" width="100%" />
								</div>
								<p>
								<center>
									<strong>${nfList[i].subject }</strong>
								</center>
								</p>
							</div>
						</div>
					</div>
				</a>
			</c:forEach>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<c:forEach var="i" begin="4" end="7">

				<a data-toggle="modal" data-target="#myModal${i }">
					<div class="col-md-2">
						<div class="box">
							<div class="box-gray aligncenter" style="height: 235px">
								<div class="icon">
									<img src="${nfList[i].newsImg }" width="100%" />
								</div>
								<p>
								<center>
									<strong>${nfList[i].subject }</strong>
								</center>
								</p>
							</div>
						</div>
					</div>
				</a>
			</c:forEach>
			<div class="col-md-2"></div>
		</div>
	</div>
	</section>

	<!-- 공지사항 -->
	<section id="section-notice" class="section appear clearfix">
	<div class="container scroll">

		<div class="row mar-bot40">
			<div>
				<div class="section-header">
					<center>
						<h2 class="section-heading animated" data-animation="bounceInUp">NOTICE</h2>
						<table class="table table-hover">
							<thead>
							<tr class="warning">
								<th width=10% class="text-center">번호</th>
								<th width=5%></th>
								<th width=40% class="text-center">제목</th>
								<th width=25% class="text-center">작성자</th>
								<th width=10% class="text-center">작성일</th>
								<th width=10% class="text-center">조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="vo" items="${list }" begin="0" end="9">
								<tr class="list">
									<td class="text-center">${vo.no }</td>
									<td></td>

									<td class="text-left"><a
										href="noticeContent.do?no=${vo.no }">${vo.subject }</a></td>

									<td class="text-center">${vo.userId }</td>
									<td class="text-center"><fmt:formatDate
											value="${vo.regdate }" pattern="yyyy-MM-dd" /></td>
									<td class="text-center">${vo.hit }</td>
								</tr>
							</c:forEach>
						</tbody>


						</table>
					</center>
				</div>
			</div>
		</div>
	</div>
	</section>
	<hr>
	<!-- 수상 내역 -->
	<section id="clients">
	<div class="container">
		<div class="row" style="font-size: 13px;">
			<div class="col-sm-2 align-center">
				<img src="../img/clients/aaa.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>2014 일자리창출<br>국무총리상 수상
				</font><br>고용노동부
			</div>

			<div class="col-sm-2 align-center">
				<img src="../img/clients/bbb.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>2017 퍼스트브랜드대상<br>6년 연속 수상
				</font> <br>한국소비자포럼
			</div>

			<div class="col-sm-2 align-center">
				<img src="../img/clients/ccc.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>2018 국가브랜드대상<br>7년 연속 수상
				</font> <br>이코노미스트
			</div>

			<div class="col-sm-2 align-center">
				<img src="../img/clients/ddd.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>2017 올해의 브랜드<br>대상 수상
				</font> <br>한국소비자브랜드위원회
			</div>

			<div class="col-sm-2 align-center">
				<img src="../img/clients/eee.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>모바일 어워드 코리아<br>2017 대상 수상
				</font><br>디지틀조선일보
			</div>
			<div class="col-sm-2 align-center">
				<img src="../img/clients/fff.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>2017 한국서비스<br>품질지수 1위
				</font> <br>KSSQJ
			</div>
		</div>
	</div>
	</section>

	<c:forEach var="i" begin="0" end="7">
		<div class="modal fade" id="myModal${i }" role="dialog">
			<div class="modal-dialog" style="width: 800px">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">${ndList[i].dt_title }</h4>
					</div>
					<div class="modal-body">
						<div class="viewWrap" id="view_text">
							<p>${ndList[i].dt_info }</p>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>
	</c:forEach>


 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>

  

    <script  src="../js/index.js"></script>

</body>
</html>