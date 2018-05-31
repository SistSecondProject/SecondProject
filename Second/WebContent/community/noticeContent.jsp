<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript">

</script>
<head>
</head>
<body>

	<div id="wrapper">
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="a()"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">공지사항</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container" style="width: 50%">
				<div class="row">

					<div class="row" style="height: 60px"></div>
					<table class="table table-hover">
						<tr>
							<td width="15%"><img src="../img/qa.png" width="100%"></td>
							<td width="85%" class="text-left" style="padding-left: 70px">
								<h3>${vo.subject }</h3>
							</td>

						</tr>
						<tr>
							<td class="warning text-center" colspan="2">작성자 :&nbsp;${vo.userId}
								&nbsp;&nbsp;|&nbsp;&nbsp; 작성일&nbsp; <fmt:formatDate
									value="${vo.regdate }" pattern="yyyy-MM-dd" />
								&nbsp;&nbsp;|&nbsp;&nbsp; 조회수 :&nbsp;${vo.hit }
							</td>

						</tr>

						<tr>
							<td class="text-left" colspan="2" height="180px"><font
								size="3px">${vo.content }</font><br></td>
						</tr>

					</table>

					<table class="table">
						<tr>
							<td class="text-right">
								<!-- <a href="" class="btn btn-sm btn-warning">답변</a> -->
								<c:choose>
								<c:when test="${sessionScope.name=='admin'}">
								<a href="noticeUpdate.do?no=${vo.no }" class="btn btn-warning btn-sm ">수정</a>
								<a href="noticeDelete.do?no=${vo.no }" class="btn btn-theme btn-sm ">삭제</a>
								</c:when>
								<c:otherwise>
								
								</c:otherwise>
								</c:choose>
								<a href="noticeList.do" class="btn btn-sm btn-default">목록</a></td>
						</tr>
					</table>

				</div>
			</div>
		</section>

	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>


</body>

</html>







