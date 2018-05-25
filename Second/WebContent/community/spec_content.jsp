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
         <td class="text-center success" colspan="2">${vo.no }</td>
        
        </tr>
        
        <tr>
         <td class="text-center success">${vo.content }</td>
        </tr>
        
        
      </table>
      <table class="table">
        <tr>
         <td class="text-right">
          <a href="" class="btn btn-sm btn-warning">답변</a>
          <a href="" class="btn btn-sm btn-primary">수정</a>
          <a href="#" class="btn btn-sm btn-success">삭제</a>
          <a href="" class="btn btn-sm btn-info">목록</a>
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




 


