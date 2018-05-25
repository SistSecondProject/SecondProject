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
							<li class="active">���� ��</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
		<div class="container">
	<div class="row">
  <h2>���� ��</h2>
  <p>������ �����Ӱ� �ڽ��� ������ �򰡹޴� �����Դϴ�</p>
  <div class="row" style="height: 60px">
  <a href="spec_insert.do">
  <button type="button" class="btn btn-primary" style="float: right;background-color: #4374D9" >�۾���</button>
  </a>
   </div>
  <table class="table table-hover">
    <thead>
      <tr>
        <th width=10% class="text-center">��ȣ</th>
        <th width=5%></th>
        <th width=40% class="text-center">����</th>
        <th width=20% class="text-center">�ۼ���</th>
        <th width=10% class="text-center">�ۼ���</th>
        <th width=10% class="text-center">��ȸ��</th>
        <th width=5% class="text-center">���ƿ�</th>
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
                  <option>�ۼ���</option>
                  <option>����</option>
                 </select>&nbsp;
                 <input type=text name=ss class="input" size=12>
                 <input type=submit class="btn btn-sm btn-info" value=�˻�>
         </td>
         <td class="text-right" style="padding-right: 100px">
         <button type="button" class="btn btn-xs btn-default">��</button>
           <a href="#">1</a>&nbsp;&nbsp;
           <a href="#">2</a>&nbsp;&nbsp;
           <a href="#">3</a>&nbsp;&nbsp;
           <a href="#">4</a>&nbsp;&nbsp;
           <a href="#">5</a>
           <button type="button" class="btn btn-xs btn-default">��</button>
           
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




 


