<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>

	<div id="wrapper">
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a> <i
								class="icon-angle-right"></i></li>
							<li class="active">공지사항</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<h2>공지사항</h2>
					<p>회원님에게 신속히 알려드릴 필요성이 있는 자료를 제공해 드립니다</p>
					<br> <br>
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
							<c:forEach var="vo" items="${list }">
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
					<table class="table table-hover">
						<tr>
						<c:choose>
							<c:when test="${sessionScope.name=='admin' }">
							<td class="text-left"><a href="noticeInsert.do">
									<button type="button" class="btn btn-theme"
										style="float: left;">글쓰기</button>
							</a></td>
							</c:when>
							<c:otherwise>
							
							</c:otherwise>
						</c:choose>
							<td class="text-right"><a
								href="noticeList.do?page=${curpage-1 }"
								class="btn btn-sm btn-warning">◀</a> <a
								href="noticeList.do?page=${curpage+1 }"
								class="btn btn-sm btn-warning">▶</a> &nbsp;&nbsp;&nbsp;${curpage }
								page / ${totalpage } pages</td>
						</tr>
					</table>
				</div>
			</div>
		</section>
	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
</body>
</html>







