<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<script src="https://code.jquery.com/jquery.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var message= $('#flag').attr('value');
	if(message=='denied')
		alert('비밀번호 불일치');
	else if(message=='admin')
		alert('admin 삭제 금지');
});
</script>
<body>
<c:if test="${denied ne null }">
<input type="hidden" id="flag" value ="${denied}">
</c:if>
	<div id="wrapper">
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="main.do"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">회원정보</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<aside class="left-sidebar">
							<div class="widget">
								<h4 class="widgetheading">회원정보</h4>
								<form class="form-infomation" method="post" action="userInfoChange.do">
									<input class="form-control" type="text" name="name"	placeholder="${membervo.name}"> 
									<input	class="form-control" type="email" name="emailAddress" placeholder="${membervo.emailAddress}">
									<select	name="favoriteCategory" style="width: 340px; height: 30px;">
										<c:forEach var="str" items="${catename}" varStatus="status">
											<c:choose>
												<c:when test="${membervo.favoriteCategory eq status.index }">
													<option value="${status.index}" selected="selected">${str}
												</c:when>
												<c:otherwise>
													<option value="${status.index}">${str}
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</select> <br><br> 
									<input type="submit" class="btn btn-info"	style="width: 320px; height: 40px; font-size: 15pt; font-weight: bold; border-radius: 24px;" value="수정"></a><br>

								</form>
							</div>
							<div class="widget">
								<h4 class="widgetheading">비밀번호 변경</h4>
								<form class="form-infomation" method="post" action="passwordChange.do">
								<input class="form-control" type="password" name="cpassword"	placeholder="CURRENT-password" required="required"> 
								<input class="form-control" type="password" name="npassword"	placeholder="NEXT-password" required="required"> <br>
								<input type="submit" class="btn btn-info" style="width: 320px; height: 40px; font-size: 15pt; font-weight: bold; border-radius: 24px;" value="변경"><br>
								</form>
								<h4 class="widgetheading"></h4>
							</div>
							<div class="widget"></div>
							<h4 class="widgetheading">회원 탈퇴</h4>
							<form class="form-infomation" method="post" action="withdrawal.do">
							<input class="form-control" type="password" name="password"
								placeholder="password" required="required"> <br>
							<input type="submit" class="btn btn-danger"	style="width: 320px; height: 40px; font-size: 15pt; font-weight: bold; border-radius: 24px;" value="탈퇴"><br>
							</form>
							<h4 class="widgetheading"></h4>


						</aside>
					</div>
					<div class="col-lg-8">

						<div class="widget">
							<h4 class="widgetheading" title="관심 직종 평점 상위 10개 기업">추천 기업</h4>
							<ul class="tags">
								<c:forEach var="cvo" items="${highList}">
									<li><a href="company.do?companycode=${cvo.companyCode}">${cvo.companyName }</a></li>
								</c:forEach>
							</ul>
						</div>
						<c:if test="${fn:length(favoritelist) ne 0}">
							<div class="widget">
								<h4 class="widgetheading">관심 기업</h4>
								<ul class="tags">
									<c:forEach var="companyvo" items="${favoritelist }"
										varStatus="x">

										<li><a
											href="company.do?companycode=${companyvo.companyCode}">${companyvo.companyName }</a></li>

									</c:forEach>

								</ul>
							</div>
						</c:if>
						<c:if test="${fn:length(recruitlist) ne 0}">
							<div class="widget">
								<h4 class="widgetheading">관심 채용</h4>
								<ul class="tags">
									<c:forEach var="rvo" items="${recruitlist}">
										<li><a
											href="company.do?recruitmentcode=${rvo.recruitmentCode}">${rvo.title }</a></li>
									</c:forEach>
								</ul>
							</div>
						</c:if>

						<c:if test="${fn:length(infolist) ne 0}">
							<div class="widget">
								<h4 class="widgetheading">작성 자소서</h4>
								<ul class="tags">
									<c:forEach var="ivo" items="${infolist}">
										<li><a href="selfinto_content.do?no=${ivo.Code}">${ivo.title }</a></li>
									</c:forEach>
								</ul>
							</div>
						</c:if>

					</div>
				</div>
			</div>
		</section>

	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>


</body>

</html>