<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<head>
  <meta charset="EUC-KR">
  <title>Drop Down The Text with jQuery :D </title>
  
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
  display:none;
} 
div#p
{
 padding-bottom:5px; 
}

</style>
<script type="text/javascript">
	
</script>       

  
</head>

<body>
     
    <div id="side" class="ct" style="font-family:arial;">항목 1<span style="float:right">+</span></div>
         <div class="p">
         <div id="p"><textarea rows="2" cols="95" placeholder="항목 또는 제목을 입력하세요" ></textarea></div>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;"></textarea>
         </div>
      
      <div id="side" class="ct">항목 2<span style="float:right">+</span></div>
          <div class="p">
         <div id="p"><textarea rows="2" cols="95" placeholder="항목 또는 제목을 입력하세요" ></textarea></div>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;"></textarea>
         </div>
         
       <div id="side" class="ct">항목 3<span style="float:right">+</span></div>
          <div class="p">
         <div id="p"><textarea rows="2" cols="95" placeholder="항목 또는 제목을 입력하세요" ></textarea></div>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;"></textarea>
         </div>
         
      <!--  <div id="button"><button>Save</button></div> -->
       
      
          
	
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
 	
</body>

</html>
    