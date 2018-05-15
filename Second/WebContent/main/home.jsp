<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.sist.calender.*,java.util.*,com.sist.news.dao.*"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="newsdao" class="com.sist.news.dao.NewsManager"/>
<jsp:useBean id="cm" class="com.sist.calender.CalenderManager"/>
	 <%
	  ArrayList<NewsVO> newsList=newsdao.newsFindData();
	 ArrayList<NewsVO> dt_List=newsdao.newsDetailData();
    ArrayList<CalenderVO> list=cm.calenderFindData();
    ArrayList<CalenderVO> list2=cm.calenderinfoData();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>테스트2311</title>
<script type="text/javascript">

</script>
<style type="text/css">
.viewWrap img {
    display: block;
    max-width: 100%;
    margin: 0 auto;
}
</style>
</head>
<body>
	<section id="intro">
	<div class="intro-content">
		<h2>Welcome to Ready&Start!</h2>
		<div>
			<a href="#content" class="btn-get-started scrollto">Get Started</a>
		</div>
	</div>
	</section>
	<!-- about -->

	<section id="content">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4>Recruitment calendar</h4>
								<div class="icon">
									<i class="fa fa-pagelines fa-3x"></i>
								</div>

							</div>
							<div class="box-bottom">
								<a href="#section-about">Learn more</a>
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
								<a href="#section-heading animated">Learn more</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4>Recruitment News</h4>
								<div class="icon">
									<i class="fa fa-edit fa-3x"></i>
								</div>

							</div>
							<div class="box-bottom">
								<a href="#section-news">Learn more</a>
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
								<a href="#section-notice">Learn more</a>
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
								<a href="#" class="btn btn-theme">Learn More</a>
							</div></li>
						<li><img src="../img/slides/2.jpg" alt="" />
							<div class="flex-caption" style="text-align: left">
								<h3>Corporate comparison</h3>
								<p>Ready&Start의 기업 재무평가, 재직자평판 비교서비스입니다.</p>
								<a href="#" class="btn btn-theme">Learn More</a>
							</div></li>
						<li><img src="../img/slides/3.jpg" alt="" />
							<div class="flex-caption" style="text-align: left">
								<h3>합격자소서</h3>
								<p>인사담당자가 선택한 진짜 합격자소서를 확인해보세요.</p>
								<a href="#" class="btn btn-theme">Learn More</a>
							</div></li>
					</ul>
				</div>
				<!-- end slider -->
			</div>
		</div>
	</div>
	</section>
	
	<section id="section-about" class="section appear clearfix">
	<div class="container" style="width: 80%">

		<div class="row mar-bot40">
			<div>
				<div class="section-header">
				<center>
					<h2 class="section-heading animated" data-animation="bounceInUp">RECRUITMENT CALENDAR</h2>
					<table class="table table-striped">
					 <tr>
   <% 
      for(CalenderVO vo:list){
    	  %>
    	  <th width="250px" style="text-align: center;"><%=vo.getDay() %></th>
    	  <%
      }
    	  %> 
    	  </tr>
    	  <tr>
    	  <% 
    	  int no=0;
    	  for(int i=0;i<7;i++){
    		  %>
    	  <td>
    	  <dl>
    	   <% 
      for(int j=0;j<7;j++){
    	  %>
    	  <dd><%=list2.get(no).getData() %></dd>
    	  <%
    	  no++;
      }
    	  %> 
    	    </dl>
    	  </td>
    	  <%
    	  }
    	  %>
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
		<h2 id="section-heading animated" data-animation="bounceInUp">SCORES & RATINGS</h2>
	</center>
	<section id="parallax1" class="section" data-stellar-background-ratio="0.5">
	<div class="container">
		<div class="row appear stats">
			<div class="col-lg-1"></div>
			<div class="col-lg-2">
				<div class="align-center color-white txt-shadow">
					<div class="icon">
						<i class="fa fa-coffee fa-5x"></i>
					</div>
					<strong id="counter-coffee1" class="number">5</strong><font size=15>.</font><strong
						id="counter-coffee2" class="number">8</strong><br> <span
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
			<div class="col-lg-1"></div>

		</div>
	</div>
	</section>
	
	<!-- 채용 뉴스 -->
		<section id="section-news" class="section appear clearfix">
	<div class="container">

		<div class="row mar-bot40">
				<div class="col-md-offset-3 col-md-6">
					<div class="section-header">
					<center>
						<h2 class="section-heading animated" data-animation="bounceInUp">Recruitment
							News</h2>
							</center>
						<p></p>
					</div>
				</div>
			</div>
			</div>
				<div class="imgs col-md-12">
						<div class="row">
						<div class="col-md-2">
						</div>
						<%
						for(int i=0;i<4;i++){
								
							
						%>
						<a data-toggle="modal" data-target="#myModal<%=i%>">
								<div class="col-md-2">
								<div class="box">
									<div class="box-gray aligncenter" style="height: 235px">
										<div class="icon">
											<img src="<%=newsList.get(i).getNewsImg() %>" width="100%"/>
										</div>
										<p>
										<center>
										<strong><%=newsList.get(i).getSubject() %></strong>
										</center>
										</p>
									</div>
								</div>
							</div>
							</a>
							
							<%
							
						}
							%>
							<div class="col-md-2">
						</div>
							</div>
						<div class="row">
						<div class="col-md-2">
						</div>
						<%
						for(int i=4;i<8;i++){
						%>
						<a data-toggle="modal" data-target="#myModal<%=i%>">
							<div class="col-md-2">
								<div class="box">
									<div class="box-gray aligncenter" style="height: 235px">
										<div class="icon">
											<img src="<%=newsList.get(i).getNewsImg() %>" width="100%"/>
										</div>
										<p>
										<center>
											<strong><%=newsList.get(i).getSubject() %></strong>
											</center>
										</p>
									</div>
								</div>
							</div>
							</a>
							<%
						}
							%>
							<div class="col-md-2">
						</div>
					</div>
	</div>
	</section>
	
	<!-- 공지사항 -->
		<section id="section-notice" class="section appear clearfix">
	<div class="container">

		<div class="row mar-bot40">
			<div>
				<div class="section-header">
				<center>
					<h2 class="section-heading animated" data-animation="bounceInUp">NOTICE</h2>
					<table class="table table-striped">
					</table>
					</center>
				</div>
			</div>
		</div>
	</div>
	</section>
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
	
	 <%
	for(int i=0;i<8;i++){
	%>
	  <div class="modal fade" id="myModal<%=i %>" role="dialog">
    <div class="modal-dialog" style="width: 800px">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><%=dt_List.get(i).getDt_title() %></h4>
        </div>
        <div class="modal-body" style="width: 100%">
        <div class="viewWrap" id="view_text">
          <p><%=dt_List.get(i).getDt_info() %></p>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    
    </div>
  </div>

    <%
      }
      %> 



</body>
</html>