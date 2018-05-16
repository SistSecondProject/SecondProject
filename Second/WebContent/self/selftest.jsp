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
  border:1px solid #0174DF;
  background:#2E9AFE;
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

<!--save button -->
*{
  transition: all 0.3s ease;
}

body{
  padding: 100px 0;
}

button{
  width: 135px;
  height: 50px;
  cursor: pointer;
  display: inline-block;
  margin: auto;
  background: #01BBDE no-repeat center center;
  color: #fff;
  text-transform: uppercase;
  font-size: 20px;
  font-weight: bold;
  border: 0;
  padding: 15px 20px;
  border-radius: 50px;
  outline: 0;
}

button:active{
  transform: scale(0.95);
  background: #008EC3;
}

button.loading{
  width: 53px;
  background-image: url('http://een.ec.europa.eu/sites/default/files/multimedia/ajax-loader-2.gif');
  background-position: right right;
  background-repeat: no-repeat;
  background-size: 25px;
}

button.success{
  background-image: url('http://www.clker.com/cliparts/x/n/7/m/p/g/check-mark-in-white-md.png');
  background-position: right right;
  background-repeat: no-repeat;
  background-size: 25px;
}


</style>
<script type="text/javascript">

$(document).ready(function(){
     $('.ct').on('click',function(){
     $(this).next().slideToggle();
     $(this).next().siblings('.p').slideUp();
     });  
   });
   
$('#button').click(function(){
     
    $(this).text('').removeClass('success').addClass('loading').delay(1000).queue(function(){
       $(this).removeClass("loading").dequeue().addClass('success');
      });
      
   });   
   
   
</script>       

  
</head>

<body>
     
    <div id="side" class="ct" style="font-family:arial;">항목 1<span style="float:right">+</span></div>
         <div class="p">
         <textarea rows="1" cols="95" placeholder="항목 또는 제목을 입력하세요" ></textarea>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;"></textarea>
         </div>
      
      <div id="side" class="ct">항목 2<span style="float:right">+</span></div>
         <div class="p">
         <textarea rows="1" cols="95" placeholder="항목 또는 제목을 입력하세요" ></textarea>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;"></textarea>
         </div>
         
       <div id="side" class="ct">항목 3<span style="float:right">+</span></div>
         <div class="p">
         <textarea rows="1" cols="95" placeholder="항목 또는 제목을 입력하세요" ></textarea>
         <textarea rows="11" cols="95" placeholder="내용을 입력하세요" style="margin: 0px;" height="236px;" width="283px;"></textarea>
         </div> 
         
       <div id="button"><button>Save</button></div>
       
      
          
   
   <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<!--    <script  src="js/index.js"></script> -->
</body>

</html>
