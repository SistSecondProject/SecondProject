<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    --%>

<!DOCTYPE html>
<!-- 기본페이지면서 insert페이지 -->
<head>
  <meta charset="EUC-KR">
  <title>수정하기</title>  
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
   <form method=post action="update_ok.do">  
        <tr>
        <td width="85%" class="text-left">
         <input type="hidden" name="no" value="${vo.no }">
        </td>
       </tr>
    <c:forEach var="no" items="${vo }"> 
    <div id="side" class="ct" style="font-family:arial;">항목 1<span style="float:right">+</span></div>
         <div class="p">
         <div id="p"><textarea rows="2" cols="95">${vo.content }</textarea></div>
         <textarea rows="11" cols="95" style="margin: 0px;" height="236px;" width="283px;">${vo.content }</textarea>
         </div>
         
      
      <div id="side" class="ct">항목 2<span style="float:right">+</span></div>
          <div class="p">
         <div id="p"><textarea rows="2" cols="95">${vo.content }</textarea></div>
         <textarea rows="11" cols="95" style="margin: 0px;" height="236px;" width="283px;">${vo.content }</textarea>
         </div>
         
       <div id="side" class="ct">항목 3<span style="float:right">+</span></div>
          <div class="p">
         <div id="p"><textarea rows="2" cols="95" >${vo.content }</textarea></div>
         <textarea rows="11" cols="95" style="margin: 0px;" height="236px;" width="283px;">${vo.content }</textarea>
         </div>
     </c:forEach>
    <tr>
        <td width="15%" class="success text-right">비밀번호</td>
        <td width="85%" class="text-left">
         <input type="password" name=pwd size=10 required>
        </td>
       </tr>
       
       <tr>
        <td colspan="2" class="text-center">
         <input type="submit" class="btn btn-sm btn-primary"
          value="수정" id="writeBtn">
         <input type="button" class="btn btn-sm btn-primary"
          value="취소" onclick="javascript:history.back(1)">
        </td>
       </tr> 
        </form>
       
         
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
 	
</body>

</html>
    