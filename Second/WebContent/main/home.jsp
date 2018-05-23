<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"
	import="com.sist.calender.*,java.util.*,com.sist.news.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�׽�Ʈ2311</title>
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
									�Ի��ϰ� ���� ����� ���ɱ������<br>����ϰ� ���ɱ���� ������Ʈ �ҽ��� �޾ƺ�����.
								</p>
								<a href="company.do" class="btn btn-theme">Learn More</a>
							</div></li>
						<li><img src="../img/slides/2.jpg" alt="" />
							<div class="flex-caption" style="text-align: left">
								<h3>Corporate comparison</h3>
								<p>Ready&Start�� ��� �繫��, ���������� �񱳼����Դϴ�.</p>
								<a href="compare.do" class="btn btn-theme">Learn More</a>
							</div></li>
						<li><img src="../img/slides/3.jpg" alt="" />
							<div class="flex-caption" style="text-align: left">
								<h3>�հ��ڼҼ�</h3>
								<p>�λ����ڰ� ������ ��¥ �հ��ڼҼ��� Ȯ���غ�����.</p>
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
												<dd><a href="javascript:void(window.open('calender_dt.do?link=${ciList[(i*7)+j].url }','����','width=1050px,height=450px','top=500px,left=500px'))">${ciList[(i*7)+j].data }</a></dd>
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
		<h2 id="section-heading animated" data-animation="bounceInUp">SCORES
			& RATINGS</h2>
	</center>
	<section id="parallax1" class="section"
		data-stellar-background-ratio="0.5">
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
					  <span class="count">202</span><br> 
					<span class="text">MP3 Songs</span>
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

	<!-- ä�� ���� -->
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

	<!-- �������� -->
	<section id="section-notice" class="section appear clearfix">
	<div class="container scroll">

		<div class="row mar-bot40">
			<div>
				<div class="section-header">
					<center>
						<h2 class="section-heading animated" data-animation="bounceInUp">NOTICE</h2>
						<table class="table table-hover">
							<tr class="warning">
								<th width=10% class="text-center">��ȣ</th>
								<th width=45% class="text-center">����</th>
								<th width=15% class="text-center">�̸�</th>
								<th width=20% class="text-center">�ۼ���</th>
								<th width=10% class="text-center">��ȸ��</th>
							</tr>
							<c:forEach var="vo" items="${list }">
								<tr>
									<td width=10% class="text-center">${vo.no }</td>
									<td width=45% class="text-left"><a
										href="content.do?no=${vo.no }">${vo.subject }</a></td>
									<td width=15% class="text-center">${vo.name }</td>
									<td width=20% class="text-center"><fmt:formatDate
											value="${vo.regdate }" pattern="yyyy-MM-dd" /></td>
									<td width=10% class="text-center">${vo.hit }</td>
								</tr>
							</c:forEach>
						</table>
						<table class="table table-hover">
							<tr>
								<td class="text-left"><select class="input">
										<option>�̸�</option>
										<option>����</option>
										<option>����</option>
								</select>&nbsp; <input type=text name=ss class="input" size=12> <input
									type=submit class="btn btn-rounded btn-sm btn-warning" value=ã��>
								</td>
								<td class="text-right"><a href="#"
									class="btn btn-sm btn-rounded btn-theme">��</a> <a href="#"
									class="btn btn-sm btn-rounded btn-theme">��</a>
									&nbsp;&nbsp;&nbsp;${curpage } page / ${totalpage } pages</td>
							</tr>
						</table>
					</center>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- ���� ���� -->
	<section id="clients">
	<div class="container">
		<div class="row" style="font-size: 13px;">
			<div class="col-sm-2 align-center">
				<img src="../img/clients/aaa.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>2014 ���ڸ�â��<br>�����Ѹ��� ����
				</font><br>���뵿��
			</div>

			<div class="col-sm-2 align-center">
				<img src="../img/clients/bbb.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>2017 �۽�Ʈ�귣����<br>6�� ���� ����
				</font> <br>�ѱ��Һ�������
			</div>

			<div class="col-sm-2 align-center">
				<img src="../img/clients/ccc.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>2018 �����귣����<br>7�� ���� ����
				</font> <br>���ڳ�̽�Ʈ
			</div>

			<div class="col-sm-2 align-center">
				<img src="../img/clients/ddd.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>2017 ������ �귣��<br>��� ����
				</font> <br>�ѱ��Һ��ں귣������ȸ
			</div>

			<div class="col-sm-2 align-center">
				<img src="../img/clients/eee.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>����� ����� �ڸ���<br>2017 ��� ����
				</font><br>����Ʋ�����Ϻ�
			</div>
			<div class="col-sm-2 align-center">
				<img src="../img/clients/fff.jpg"
					style="max-width: 100%; height: auto;"><font color="black">
					<br>2017 �ѱ�����<br>ǰ������ 1��
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



</body>
</html>