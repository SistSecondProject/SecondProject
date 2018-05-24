<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="EUC-KR">
</head>
<body>

	<c:forEach var="com" items="${companyList}">
		<article>
			
			<c:choose>
			<c:when test="${com.imageURL eq 'https://jpassets.jobplanet.co.kr/assets/default_logo_share-12e4cb8f87fe87d4c2316feb4cb33f42d7f7584f2548350d6a42e47688a00bd0.png'}">
			<img src="../img/default.jpg" class="pull-left" alt="" />
			</c:when>
			<c:otherwise>
			<img src="${com.imageURL}" class="pull-left" alt="" />
			</c:otherwise>
			</c:choose>
			<div class="post-image">
				<div class="post-heading">
					<h3>
						<a href="company.do?companycode=${com.companyCode}">${com.companyName}</a>
					</h3>
				</div>
			</div>
			<%-- <p>${com.companyDetail}</p> --%>
			<div class="bottom-article">
				<ul class="meta-post">
					<li><i class="icon-user"></i><a href="#">대표 : ${com.ceo}</a></li>
					<li><i class="icon-calendar"></i><a href="#">설립일:
							${com.foundationDay}</a></li>
					<li><i class="icon-folder-open"></i><a href="${com.webURL}">${com.webURL}</a></li>
					<li><i class="icon-comments"></i><a href="#">${com.formOfCompany}</a></li>
					
				</ul>
			</div>
		</article>
	</c:forEach>
	<div id="pagination">
		<span class="all">Page ${curPage} of ${totalPage}</span>
		<c:forEach var="i" begin="${start}" end="${end}">
			<c:choose>
				<c:when test="${curPage eq i}">
					<span class="current">${i}</span>
				</c:when>
				<c:otherwise>
					<a href="company.do?page=${i}&category=${category}&search=${search}" class="inactive">${i}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</div>
</body>
</html>