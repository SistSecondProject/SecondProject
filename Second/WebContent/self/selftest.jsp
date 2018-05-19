<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- 기본페이지면서 insert페이지 -->
<head>
  <meta charset="EUC-KR">
  <title>Drop Down The Text with jQuery :D </title>
<script type="text/javascript">
$(function(){
	 $.ajax({
		 type:'post',
		 url:'passinfo.do',
		 success:function(res)
		 {
			 $('#print').html(res); 
		 }
	   });
	   $('#save').click(function(){
		   $.ajax({
			   type:'post',
		       url:'passinfo.do',
		       data:{"content":content},
		       success:function(res)
		       {
		    	   $('#print').html(res);
		       }
		   }); 
	   })
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
  display:none;
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
        
         <br>
         <tr>
         <br>
        <td colspan="4" class="text-center" id="save">
         <input type="submit" class="btn btn-sm btn-primary"
          value="저장" id="writeBtn">
        </td>
       </tr>
         
    
       
      
          
	
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
 	
</body>

</html>
    