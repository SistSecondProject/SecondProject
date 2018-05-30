<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">스펙 평가</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
		<div class="container">
	<div class="row">
  <h2>스펙 평가</h2>
  <p>누구나 자유롭게 자신의 스펙을 평가받는 공간입니다</p>
  <div class="row" style="height: 60px">
  <a href="spec_insert.do">
  <button type="button" class="btn btn-primary" style="float: right;background-color: #4374D9" >글쓰기</button>
  </a>
   </div>
  <table class="table table-hover">
    <thead>
      <tr>
        <th width=10% class="text-center">번호</th>
        <th width=5%></th>
        <th width=40% class="text-center">제목</th>
        <th width=20% class="text-center">작성자</th>
        <th width=10% class="text-center">작성일</th>
        <th width=10% class="text-center">조회수</th>
        <th width=5% class="text-center">좋아요</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="vo" items="${list }">
      <tr class="list" style="height: 50px">
        <td class="text-center">${vo.no }</td>
        <td></td>
        
        <td class="text-left"><a href="spec_content.do?no=${vo.no }">${vo.subject }</a></td>
        
        <td class="text-center">${vo.userId }</td>
          <td class="text-center"><fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/></td>
        <td class="text-center">${vo.hit }</td>
        <td class="text-center">${vo.likePoint }</td>
      </tr>
     </c:forEach>
    </tbody>
  </table>
  <table class="table table-hover">
        <tr>
         <td class="text-left">
          Search:&nbsp;  <select class="input">
                  <option>작성자</option>
                  <option>제목</option>
                 </select>&nbsp;
                 <input type=text name=ss class="input" size=12>
                 <input type=submit class="btn btn-sm btn-info" value=검색>
         </td>
         <td class="text-right" style="padding-right: 100px">
          ${curpage } page / ${totalpage} pages
         <a type="button" class="btn btn-xs btn-default" href="spec.do?page=${curpage==1?curpage:curpage-1}">◀</a>
         <%-- <c:forEach var="i" begin="1" end="${totalpage }">
           <a href="spec.do?page=${i}">${i }</a>&nbsp;&nbsp;
           <a href="spec.do?page=${curpage+1 }">2</a>&nbsp;&nbsp;
           <a href="spec.do?page=${curpage+2 }">3</a>&nbsp;&nbsp;
           <a href="spec.do?page=${curpage+3 }">4</a>&nbsp;&nbsp;
           <a href="spec.do?page=${curpage+4 }">5</a>
           </c:forEach> --%>
           <c:forEach var="list" begin="${startpage}" end="${endpage}" step="1">

<c:if test="${curpage eq list}">
		[${list}]
	</c:if>
	<c:if test="${curpage ne list}">
		<a href="spec.do?page=${list}">${list}</a>
	</c:if>
</c:forEach>

           <a type="button" class="btn btn-xs btn-default" href="spec.do?page=${curpage==totalpage?curpage:curpage+1}">▶</a>
           
         </td>
        </tr>
      </table>
  </div>
</div>
		</section>

	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
	

</body>

</html>




 


