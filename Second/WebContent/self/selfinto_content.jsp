<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
  <title>내용보기</title>  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
<!--   <link rel="stylesheet" href="./css/bootstrap.min.css"> -->
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<!-- css -->
<link href="css/size.css" rel="stylesheet" />
<script type="text/javascript">
$(document).ready(function(){
	  $('div#side').click(function(){
	  $(this).next().slideToggle();
	  $(this).next().siblings('p').slideUp();
	  return false;
	  });  
	});

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
  background:#BDBDBD;
  color: #151515;
  font-size: 20px;
  width:700px;
  font:arial;
  height:50px;
  margin:10px 0 0 10px;
  cursor:pointer
  
  
}


#side1
{
  padding:5px;
  border:1px solid #8F9F7B;
  background:#BDBDBD;
  color: #F7F7F9;
  color:black;
  font-size: 15px;
  width:700px;
  font:arial;
  height:50px;
  margin:10px 0 0 10px;
  cursor:pointer
  
}

.p
{
  
  width:700px;
  height:220px;
  background:#E6E6E6;
  padding:5px;
  border:1px solid #CCC;
  color:#4E514E;
  line-height:1.5;
  margin:0 0 10px 10px;
  display:block;
} 
div#p
{
 padding-bottom:5px; 
}

</style>
</head>

<body>
   
    
    
      <form method=post action="selfinto_update_ok.do">
    
     <tr>
        <td class="text-left">
        
        <br>
        <input type="hidden" name="no" value="${vo.no }">
    	<br>
   		 <tr>
        <td colspan="2" class="text-center">
         <input type="submit" class="btn btn-sm btn-info"
          value="수정하기" id="writeBtn">
        
         <%-- <a href="../main/selfinto_update.do?no=${no }" class="btn btn-sm btn-primary">수정</a> --%>
         <a href="delete.do?no=${no}" class="btn btn-sm btn-warning">삭제</a>
               
         <c:choose>
			<c:when test="${empty sessionScope.name}">
           		  로그인이 필요한 서비스입니다.
			</c:when>
			<c:otherwise>
               	  작성한 자소서를 선택하세요
            </c:otherwise>
			</c:choose> 
        </td>
       </tr>  
      
      
      <br>
  	    &emsp;<div class="input-group">
    <span class="input-group-addon">자기소개서 제목</span>
   <input id="msg" name=title type="text" class="form-control" name="msg" width="100%" value="${vo.title }">
  </div>
       
    
     
    <div id="side" class="ct" style="font-family:arial;">소제목 1<span style="float:right">+</span></div>
         <div class="p">
         <textarea rows="10" cols="95" placeholder="로그인 후 이용하세요" style="margin: 0px;" height="236px;" width="283px;" name="content1" >${fn:substring(vo.content,0,fn:indexOf(vo.content,'|')) }</textarea>
         </div>
       
         
         
         
      
      <div id="side" class="ct">소제목 2<span style="float:right">+</span></div>
          <div class="p">
         <textarea rows="10" cols="95" placeholder="로그인 후 이용하세요" style="margin: 0px;" height="236px;" width="283px;" name="content2" >${fn:substring(vo.content,fn:indexOf(vo.content,'|')+1,fn:indexOf(vo.content,'^')) }</textarea>
         </div>
         
       <div id="side" class="ct">소제목 3<span style="float:right">+</span></div>
          <div class="p">
         <textarea rows="10" cols="95" placeholder="로그인 후 이용하세요" style="margin: 0px;" height="236px;" width="283px;" name="content3" >${fn:substring(vo.content,fn:indexOf(vo.content,'^')+1,fn:length(vo.content)) }</textarea>
         </div>
    

    
        </form>
     
         
	
 	
</body>

</html>
    