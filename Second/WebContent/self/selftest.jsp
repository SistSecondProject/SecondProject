<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<head>
  <meta charset="UTF-8">
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
  background:#415D42;
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
  background:#CED6B7;
  padding:5px;
  border:1px solid #CCC;
  color:#4E514E;
  line-height:1.5;
  margin:0 0 10px 10px;
  display:none;
} 
</style>
<script type="text/javascript">
$(document).ready(function(){
	  $('.ct').on('click',function(){
	  $(this).next().slideToggle();
	  $(this).next().siblings('.p').slideUp();
	  });  
	});
</script>       

  
</head>

<body>
    <div id="side" class="ct" style="font-family:arial;">�׸� 1<span style="float:right">+</span></div>
         <div class="p">
         <textarea rows="1" cols="95" placeholder="�׸� �Ǵ� ������ �Է��ϼ���" ></textarea>
         <textarea rows="11" cols="95" placeholder="������ �Է��ϼ���" style="margin: 0px;" height="236px;" width="283px;"></textarea>
         </div>
      
      <div id="side" class="ct">�׸� 2<span style="float:right">+</span></div>
         <div class="p">
         <textarea rows="1" cols="95" placeholder="�׸� �Ǵ� ������ �Է��ϼ���" ></textarea>
         <textarea rows="11" cols="95" placeholder="������ �Է��ϼ���" style="margin: 0px;" height="236px;" width="283px;"></textarea>
         </div>
         
       <div id="side" class="ct">�׸� 3<span style="float:right">+</span></div>
         <div class="p">
         <textarea rows="1" cols="95" placeholder="�׸� �Ǵ� ������ �Է��ϼ���" ></textarea>
         <textarea rows="11" cols="95" placeholder="������ �Է��ϼ���" style="margin: 0px;" height="236px;" width="283px;"></textarea>
         </div> 
      
          
	
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<!-- 	<script  src="js/index.js"></script> -->
</body>

</html>
