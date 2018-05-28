<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
		<div class="container" style="width:50%">
	<div class="row">
  
  <div class="row" style="height: 60px">
   </div>
      <table class="table table-hover">
        <tr>
        <td width="15%"><img src="../img/qa.png" width="100%"></td>
         <td width="85%" class="text-left" style="padding-left: 70px">	
<h3>${vo.subject }</h3></td>
         
        </tr>
        <tr>
         <td class="text-center info" colspan="2">작성자 :${vo.userId} &nbsp;&nbsp;|&nbsp;&nbsp; 개시일 :<fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/> &nbsp;&nbsp;|&nbsp;&nbsp; 조회수 : ${vo. hit }</td>
        
        </tr>
        
        <tr>
         <td class="text-left" colspan="2" height="180px"><font size="6px">${vo.content }</font><br></td>
        </tr>
        <tr>
        <td class="text-center" colspan="2" style="border: 0; padding-right: 50px"><a href="#" class="btn btn-sm btn-warning" style="background-color: #4374D9; border: 0" >${vo.likePoint }<br>좋아요</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#" class="btn btn-sm btn-warning" style="background-color: #FFE08C; border: 0">${vo.dislikePoint }<br>싫어요</a>
        <a href="#" class="btn btn- btn-warning" style="background-color: #4374D9; border: 0;float: right;width: 100px ;height:40px;"><font size="4px">답변하기</font></a>
        </td>
        <td></td>
        </tr>
      </table>
      <hr>
      <!-- <table class="table">
        <tr>
         <td class="text-right">
          <a href="" class="btn btn-sm btn-warning">답변</a>
          <a href="" class="btn btn-sm btn-primary">수정</a>
          <a href="#" class="btn btn-sm btn-success">삭제</a>
          <a href="spec.do" class="btn btn-sm btn-info">목록</a>
         </td>
        </tr>
      </table> -->
  
  </div>
</div>
</section>

	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
	

</body>

</html>




 


