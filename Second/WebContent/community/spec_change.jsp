<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

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
  <div class="container">
    <div class="row align-center">
      <h1>글 수정</h1>
      <form method=post action="spec_content_change_ok.do?no=${vo.no }">
      <table class="table table-hover align-center" style="margin: 0px auto">
       
       <tr>
        <td width="15%" class="info text-right">제목</td>
        <td width="85%" class="text-left">
         <input type=text name=subject size=45 value="${vo.subject }" required>
         <input name=no value="${vo.no }" hidden="">
        </td>
       </tr>
       
       <tr>
        <td width="15%" class="info text-right">내용</td>
        <td width="85%" class="text-left">
         <textarea rows="10" cols="50" name=content required>${vo.content }</textarea>
        </td>
       </tr>
       
       <tr>
        <td width="15%" class="info text-right">비밀번호</td>
        <td width="85%" class="text-left">
         <input type="password" name=pwd size=10 required>
        </td>
       </tr>
       
       <tr>
        <td colspan="2" class="text-center">
         <input type="submit" class="btn btn-sm btn-primary" value="확인" id="writeBtn" style="background-color: #6799FF">
         <input type="button" class="btn btn-sm" value="취소" onclick="javascript:history.back()" style="background-color: #FFA7A7">
        </td>
       </tr>
       
      </table>
      </form>
    </div>
  </div>
</body>
</html>