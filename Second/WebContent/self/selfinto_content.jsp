<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%--     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  --%>
<!DOCTYPE html>

<head>
  <meta charset="EUC-KR">
  <title>내용보기</title>  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
  display:block;
} 
div#p
{
 padding-bottom:5px; 
}



</style>
</head>
<!-- 
.do => DispatcherServlet => infoModel-->

<body>
    <br>
    <form>
     <c:forEach var="no" items="${vo }">
     <tr>
        <td class="text-left">
         <a href="../main/selfinto_update.do?no=${vo.no }" class="btn btn-sm btn-primary">수정</a>
         <a href="../main/delete.do?no=${vo.no }" class="btn btn-sm btn-warning">삭제</a>
         <a href="../main/passinfo.do" class="btn btn-sm btn-info">목록</a>
        </td>
       </tr>  
    <div id="side" class="ct" style="font-family:arial;">항목 1<span style="float:right">+</span></div>
         <div class="p">
         <div id="p"><textarea rows="2" cols="95" readonly="readonly">${vo.content }</textarea></div>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;" readonly="readonly">${vo.content }</textarea>
         </div>
         
      
      <div id="side" class="ct">항목 2<span style="float:right">+</span></div>
          <div class="p">
         <div id="p"><textarea rows="2" cols="95" readonly="readonly">${vo.content }</textarea></div>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;" readonly="readonly">${vo.content }</textarea>
         </div>
         
       <div id="side" class="ct">항목 3<span style="float:right">+</span></div>
          <div class="p">
         <div id="p"><textarea rows="2" cols="95" readonly="readonly">${vo.content }</textarea></div>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;" readonly="readonly">${vo.content }</textarea>
         </div>
     </c:forEach>
     
        
        </form>
       
         
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
 	
</body>

</html>
    