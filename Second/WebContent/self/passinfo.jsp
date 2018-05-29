<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
        

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Ready&Start</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link href="css/size.css" rel="stylesheet" />
<!-- css -->
<!--ajax : 검색하기 -->
<script type="text/javascript">
$(function(){
	
	 $('#title').keyup(function(){
		  var k=$(this).val();
		  $('#user-table>tbody>tr').hide(); // 처음에는 닫는다.
		 var temp=$("#user-table>tbody>tr>td:nth-child(3n+1):contains('"+k+"')");
	     $(temp).parent().show();
	 });

	 $(".tm").on("click", function(){
			var no = $(this).attr("value");
			//syso 같은것 consol
			//alert("no="+no);
			$.ajax({
				type:"POST",
				url:"pass_result.do",
				data:{
					"no" : no
					},
				success: function(data){
					$("#passdetail").html(data)
					
				},
				error: function(data){
					console.log("실패")
				}
			});
			
		});
	 

	
});

function save()
{
	 var f = document.insert-form;
	 var str = f.title.value;
	 var str = f.content.value;
	 
    
     f.action = "selftest_ok.do";
	 f.submit();
}




</script>



<style>
.pagination{
 
 margin: 5px auto;
 margin-left: 80px;

}

body
{
  font-family:arial;
}
*
{
  margin:0;
  padding:0;
}

#side
{
  padding:5px;
  border:1px solid #8F9F7B;
  background:#001C54;
  color: #F7F7F9;
  font-size: 20px;
  width:700px;
  font:arial;
  height:50px;
  margin:10px 0 0 10px;
  cursor:pointer
  
}
.p
{
  
  width:700px;
  height:300px;
  background:#DE5863;
  padding:5px;
  border:1px solid #CCC;
  color:#4E514E;
  line-height:1.5;
  margin:0 0 10px 10px;
  display:none;
} 
div#p
{
 padding-bottom:5px; 
}

</style>
<!-- 내용쓰기 관련 -->

<style type="text/css">

#testModal{
   max-height: 900px;
   max-width: 1200px;  

}
#favorites{
	border:1px solid #2F5030;
	background-color :#ffffff;
	
   
}

#stars{
  border:1px solid #2F5030;
  background-color :#4799F6;
}

.well{
 
 background-color: #E6E6E7; 
}

#search{
   background-color: #DD646A;
}
.clearfix:after {
  visibility: hidden;
  display: block;
  font-size: 0;
  content: " ";
  clear: both;
  height: 0;
}

#title2{
padding:8px;


}


</style>
</head>
<body>
	<!-- headline -->
	<section id="inner-headline">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a><i
							class="icon-angle-right"></i></li>
						<li class="active">합격자소서</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!--end headline -->
    
     <div class="container">
	<div class="row">
		<div class="col-lg-5">
               <!-- tabs 첨부 -->
            <%-- <jsp:include page="tabs.jsp"></jsp:include>  --%> 
          <%--   <jsp:include page="${passinfo_jsp }"></jsp:include> --%>
          <div class="col-lg-6 col-sm6"> 
    </div>
    <br>
    <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
        <div class="btn-group" role="group">
            <button type="button" id="stars" class="btn" href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-star" ></span>
                <div>합격자기소개서</div>
            </button>
        </div>
        <div class="btn-group" role="group">
          <c:choose>
			<c:when test="${empty sessionScope.name}">
		       <button type="button"  class="btn" data-toggle="tab"><span class="glyphicon glyphicon-heart" ></span>
                <div>로그인이 필요한 서비스입니다.</div>
			</c:when>
			<c:otherwise>
			<button type="button" id="favorites" class="btn" href="#tab2" data-toggle="tab"><span class="glyphicon glyphicon-heart" ></span>
                <div>내 자소서 보관함</div>
            </button>
            </c:otherwise>
			</c:choose>
            
           
        </div>
    </div>
    

   
        

      <div class="well">
      <div class="tab-content">
              	<!-- 검색 창 -->
	         <td>
		     <form class="form-horizontal">
		  <div class="form-group">
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="title" placeholder="회사명을 입력하세요.">
		    </div>
		    <input type="button" id="findBtn" value="검색" class="btn btn-sm btn-primary">
		  </div>
		  </form>
		  </td>
		
       
        <div class="tab-pane fade in active" id="tab1" hight="450">
    	<table class="table table-hover" id="user-table">
    	<thead>     
        <tr class="success">
        <!-- 합자리스트 --> 
         <th width=30% class="text-center" align="center">회사명</th>
         <th width=30% class="text-center" align="center">지원분야</th>
         <th width=40% class="text-center" align="center">제목</th>
         
        </tr>
        </thead>
        <tbody>
        <c:forEach var="vo" items="${plist }">
         <tr>
          <td class="text-center" align="center">
		 <a href="#" class="tm" data-toggle="modal" data-target="#testModal" value=${vo.no }>${vo.companyName }</a>
         </td>
 
          <td class="text-center" align="center">
           ${vo.position }
          </td>
          
          <td class="text-center" align="center">
           ${vo.recruitmentTitle } 
          </td>
         </tr>
        </c:forEach>  
     </tbody>
     </table>
           <tr class="text-center">
         ${curpage } page / ${totalpage} pages
         </tr>
      
        </div>
    
        <div class="tab-pane fade in" id="tab2">
             
    	     <table class="table table-hover2">
        <tr class="success">
        <!--  자기소개서 보관함 -->
       
         <th width=10% class="text-center"  align="center">번호</th>
         <th width=40% class="text-center" align="center">제목</th>
         <th width=20% class="text-center" align="center">작성일</th>
         
        </tr>
        <form id=insert>
        <c:forEach var="vo" items="${list }">
         <tr id="print">
          <td class="text-center" align="center">
          ${vo.no }
          </td>
          <td class="text-center" align="center">
            <a href="../main/selfinto_content.do?no=${vo.no }">${vo.title }</a>
          </td>
          
          <td class="text-center" align="center">
           <fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/> 
          </td>
         </tr>
        </c:forEach> 
        </form> 
               
      </table>
        </div>
      </div>
      
       <td class="text-center">
          
           
             <ul class="pagination">
              
   				    <li><a href="passinfo.do?page=${curpage-1 }">◀</a></li>
   				
   				    <li><a href="passinfo.do?page=${curpage}">1</a></li>
				    <li><a href="passinfo.do?page=${curpage+1 }">2</a></li>
				    <li><a href="passinfo.do?page=${curpage+2 }">3</a></li>
				    <li><a href="passinfo.do?page=${curpage+3 }">4</a></li>
				    <li><a href="passinfo.do?page=${curpage+4 }">5</a></li>
				   
				    <li> <a href="passinfo.do?page=${curpage+1 }">▶</a></li>
  			</ul>
         </td> 
    </div>
          
		 </div>
		 					
	 <div class="col-lg-5">
			  <!-- 자소서 작성부분 첨부 -->           
    
    <form name="insert-form" method=post action="selftest_ok.do">
    <br>
    <div id="title2"><textarea rows="2" cols="97" placeholder="자기소개서 제목을 입력하세요"  name="title"></textarea></div>
    
    <div id="side" class="ct" style="font-family:arial;">항목 1<span style="float:right">+</span></div>
         <div class="p">
         <div id="p"><textarea rows="2" cols="95" placeholder="항목 또는 제목을 입력하세요" name="content" ></textarea></div>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;" name="content"></textarea>
         </div>
         
      
      <div id="side" class="ct">항목 2<span style="float:right">+</span></div>
          <div class="p">
         <div id="p"><textarea rows="2" cols="95" placeholder="항목 또는 제목을 입력하세요" name="content" ></textarea></div>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;" name="content"></textarea>
         </div>
         
       <div id="side" class="ct">항목 3<span style="float:right">+</span></div>
          <div class="p">
         <div id="p"><textarea rows="2" cols="95" placeholder="항목 또는 제목을 입력하세요" name="content" ></textarea></div>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;" name="content"></textarea>
         </div>
       
         <br>
         <tr>
        <td colspan="4" class="text-center" id="save">
         <input type="submit" class="btn btn-sm btn-primary" onclick="save()"
          value="저장" id="writeBtn">
        </td>
       </tr>
        </form>
        <!-- 합격 자소서 내용 보기 -->
<div class="modal" id="testModal" tabindex="-1" role="dialog">

	<div class="modal-dialog modal-lg">

		<div class="modal-content">
			<div class="modal-body">
				<h1>합격 자소서 내용</h1>
			</div>
			<div>
			<span id=passdetail></span>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn" data-dismiss="modal">닫기</button>
			</div>
		</div>

	</div>

</div>



         
    
       
  
          
	
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
 	  
				</div>
 			
 					
 			
				</div>
				</div>
      
<script  src="../self/js/index.js"></script>


</body>       
</html>
