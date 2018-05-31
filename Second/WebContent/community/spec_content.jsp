<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.insert').click(function(){
		var no=$(this).attr("value");
		var data=$(this).text();
		if(data=='���')
	    {
		  $('#m'+no).fadeIn(2000);
		  $(this).focus();
		  $(this).text('���');
	    }
		else
		{
			
			$('#m'+no).fadeOut(2000);
			$(this).text('���');
		}
		
	});
	$('#delete').click(function(){
		if(confirm("���� �Ͻðڽ��ϱ�?")){
			location.href="spec_content_delete.do?no=${vo.no }";
		}else{
			return;
		}
	});
	
});
</script>

<style type="text/css">
a.btn{border: 0px}
</style>
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
		<div class="container" style="width:50%">
	<div class="row">
  
  <div class="row" style="height: 60px">
   </div>
      <table class="table table-hover">
      <c:if test="${loginid==vo.userId }">
      <tr>
      <td class="text-right" colspan="2" style="border: 0px">
      <a href="spec_content_change.do?no=${vo.no }" class="btn btn-sm btn-primary">����</a>
      
      <a href="#" class="btn btn-sm btn-success" id="delete">����</a>
         <%--  <a href="spec_content_delete.do?no=${vo.no }" class="btn btn-sm btn-success">����</a> --%>
          </td>
      </tr>
      </c:if>
        <tr>
        <td width="15%"><img src="../img/qa.png" width="100%"></td>
         <td width="85%" class="text-left" style="padding-left: 70px">	
<h3>${vo.subject }</h3></td>
         
        </tr>
        <tr>
         <td class="text-center info" colspan="2">�ۼ��� :${vo.userId} &nbsp;&nbsp;|&nbsp;&nbsp; ������ :<fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/> &nbsp;&nbsp;|&nbsp;&nbsp; ��ȸ�� : ${vo. hit }</td>
        
        </tr>
        
        <tr>
         <td class="text-left" colspan="2" height="180px"><font size="6px">${vo.content }</font><br></td>
        </tr>
        <tr>
        <td class="text-center" colspan="2" style="border: 0; padding-right: 50px"><a href="spec_content_like.do?no=${vo.no }" class="btn btn-sm btn-warning" style="background-color: #4374D9; border: 0" >${vo.likePoint }<br>���ƿ�</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="spec_content_dislike.do?no=${vo.no }" class="btn btn-sm btn-warning" style="background-color: #FFE08C; border: 0">${vo.dislikePoint }<br>�Ⱦ��</a>
        </td>
        <td></td>
        </tr>
      </table>
      <hr>
      <form method="post" class="form-horizontal" action="reply_reply.do" >
      <div class="form-group">
            <div class="col-sm-10">
             <textarea rows="2" cols="60" name="msg" class="form-control"></textarea>
             <input type=hidden name="no" value="${vo.no }">
            </div>
            <div class="col-sm-2">
             <input type="submit" class="btn btn- btn-warning" value="�亯�ϱ�" style="height:50px;border: 0;background-color: #4374D9;width: 100px ;height:40px;">
            </div>
           </div>
           </form>
           
           
               <c:forEach var="list" items="${rlist }">
               
           <table class="table table-hover">
       
           <tr style="border: 1px">
           <td class="text-left" style="float:left;" width="100%"><strong>${list.userId }</strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2px"><fmt:formatDate value="${list.regdate }" pattern="yyyy-MM-dd"/></font><br>${list.content }</td>
           <td class="text-right">
            <a href="#" class="btn btn-xs btn-warning insert" value="${list.boardNo }">���</a>
          <!-- <a href="" class="btn btn-sm btn-warning" id="reply">���</a> -->
          <a href="" class="btn btn-sm btn-primary">����</a>
          <a href="#" class="btn btn-sm btn-success">����</a>
         </td>
           </tr>
           
           <tr id="m${list.boardNo }" style="display:none" class="mm">
           <td colspan="2">
             <form class="form-horizontal" action="reply_reply.jsp">
            <div class="form-group">
             
            <div class="col-sm-10">
             <textarea rows="2" cols="60" name="msg" class="form-control"></textarea>
            </div>
            <div class="col-sm-2">
             <input type="submit" class="btn btn-sm btn-success" value="��۴ޱ�" style="height:50px">
            </div>
           </div>
          </form>
           </td>
          </tr>
          
          
           <%-- <tr>
           <td colspan="2">
           <form method="post"  class="form-horizontal" action="reply_reply.do" id="replyform">
      <div class="form-group">
            <div class="col-sm-10">
             <textarea rows="2" cols="60" name="msg" class="form-control"></textarea>
             <input type=hidden name="no" value="${vo.no }">
            </div>
            <div class="col-sm-2">
             <input type="submit" class="btn btn-sm" value="��۴ޱ�" style="height:50px;background-color: #5CD1E5;">
            </div>
           </div>
           </form>
           </td>
           </tr> --%>
           </table>
          
             </c:forEach>
             
      <!-- <table class="table">
        <tr>
         <td class="text-right">
          <a href="" class="btn btn-sm btn-warning">�亯</a>
          <a href="" class="btn btn-sm btn-primary">����</a>
          <a href="#" class="btn btn-sm btn-success">����</a>
          <a href="spec.do" class="btn btn-sm btn-info">���</a>
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




 


