<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     
<!DOCTYPE html>

<head>
  <meta charset="EUC-KR">
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
  background:#001C54;
  color: #F7F7F7;
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
  background:#DE5863;
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
  height:200px;
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

<body>
    <br>
    
    <form>
    
     <tr>
        <td class="text-left">
        <br>
         <a href="../main/selfinto_update.do?no=${no }" class="btn btn-sm btn-primary">수정</a>
         <a href="delete_ok.do?no=${vo.no}" class="btn btn-sm btn-warning">삭제</a>
             
         <a href="../main/passinfo.do" class="btn btn-sm btn-info">목록</a>
        </td>
       </tr>  
      
       
     
  <div id="side1" class="ct" style="font-family:arial;">자기소개서 제목을 입력하세요 :<textarea rows="1" cols="55" style="margin: 2px;" height="236px;" width="283px;" name="title" readonly="readonly" >${vo.title }</textarea></div>
       
    
     
    <div id="side" class="ct" style="font-family:arial;">항목 1<span style="float:right">+</span></div>
         <div class="p">
         <textarea rows="13" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;" name="content1" readonly="readonly" >${fn:substring(vo.content,0,fn:indexOf(vo.content,'|')) }</textarea>
         </div>
       
         
         
         
      
      <div id="side" class="ct">항목 2<span style="float:right">+</span></div>
          <div class="p">
         <textarea rows="13" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;" name="content2" readonly="readonly"  >${fn:substring(vo.content,fn:indexOf(vo.content,'|')+1,fn:indexOf(vo.content,'^')) }</textarea>
         </div>
         
       <div id="side" class="ct">항목 3<span style="float:right">+</span></div>
          <div class="p">
         <textarea rows="13" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;" name="content3" readonly="readonly" >${fn:substring(vo.content,fn:indexOf(vo.content,'^')+1,fn:length(vo.content)) }</textarea>
         </div>
    

    
        </form>
     
         
	
 	
</body>

</html>
    