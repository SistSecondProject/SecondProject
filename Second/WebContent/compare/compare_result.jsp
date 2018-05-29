<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Ready&Start</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<!-- css -->
<link href="../css/test2.css" rel="stylesheet" />
<link href="../css/Nwagon.css" rel="stylesheet" />
<link href="../css/chartsize.css" rel="stylesheet" />
<link rel='stylesheet' href='../compare/css/Nwagon.css' type='text/css'>
<script src="../compare/js/Nwagon.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
                  <li class="active">기업비교</li>
               </ul>
            </div>
         </div>
      </div>
   </section>
   <!--end headline -->
   <section id="content">
      <div class="com">
         <div class="com_common" >
         <br><br>
         <span style="font-size:25pt; color:red; font-weight:bold;">${vo1.companyName }</span>
         </div>
         <div class="com_common">
               <br><br>
         <span style="font-size:25pt; color:blue; font-weight:bold;">${vo2.companyName }</span>
         </div>

      </div>
      <!-- chart -->
      <div style="border-style: ridge; width: 1000px;" class="container">
         <div class="example col-lg" id="chart11">
                       <script>
            $(document).ready(function(){
                var v11= $('#value1-1').attr("value"); 
                 var v12= $('#value1-2').attr("value"); 
                 var v13= $('#value1-3').attr("value"); 
                 var v14= $('#value1-4').attr("value"); 
                 var v15= $('#value1-5').attr("value"); 
                 var v16= $('#value1-6').attr("value"); 
                 var v17= $('#value1-7').attr("value"); 
                 var v18= $('#value1-8').attr("value"); 
                 var v19= $('#value1-9').attr("value"); 
                 var v110= $('#value1-10').attr("value"); 
                 v11 = parseInt(v11);
                 v12 = parseInt(v12);
                 v13 = parseInt(v13);
                 v14 = parseInt(v14);
                 v15 = parseInt(v15);
                 v16 = parseInt(v16);
                 v17 = parseInt(v17);
                 v18 = parseInt(v18);
                 v19 = parseInt(v19);
                 v110 = parseInt(v110);
                 
                var options = {
                   'legend' : {
                      names : [ '승진 기회 및 가능성', 
                              '복지 및 급여', 
                              '업무와 삶의 균형',
                              '사내문화', 
                              '경영진 평점'],
                      hrefs : []
                   },
                   'dataset' : {
                      title : '비교 그래프',
                      values : [ [ v11, v13, v15, v17, v19],
                            [ v12, v14, v16, v18, v110 ] ],
                      bgColor : '#f9f9f9',
                      fgColor : '#cc79a7'
                   },
                   'chartDiv' : 'chart11',
                   'chartType' : 'radar',
                   'chartSize' : {
                      width : 800,
                      height : 400
                   }
                };
                Nwagon.chart(options);
            });
            </script>
         </div>
      </div>
      <br>
   <div>
      <span class="num1" style="font-size:20pt;font-weight:bold; color:red" id="wel1">${vo1.welfare_pay }점</span>
         &emsp;&emsp;&emsp;&emsp;
         <span class="rad" style="font-weight:bold; color:black; font-size:12pt" id="wel2">복지 및 급여</span>
         &emsp;&emsp;&emsp;&emsp;
         <span class="num1" style="font-size:20pt;font-weight:bold; color:blue">${vo2.welfare_pay }점</span>
      </div>
      <div>
<span class="num1" style="font-size:20pt;font-weight:bold; color:red">${vo1.work_life_balance }점</span>
         &emsp;&emsp;&emsp;&emsp;
         <span class="rad" style="font-weight:bold; color:black; font-size:12pt">업무 삶 균형</span>
         &emsp;&emsp;&emsp;&emsp;
         <span class="num1" style="font-size:20pt;font-weight:bold; color:blue">${vo2.work_life_balance }점</span>
      </div>
      <div>
      <span class="num1" style="font-size:20pt;font-weight:bold; color:red">${vo1.corporate_culture }점</span>
         &emsp;&emsp;&emsp;&emsp;
         <span class="rad" style="font-weight:bold; color:black; font-size:12pt">사내문화</span>
         &emsp;&emsp;&emsp;&emsp;
         <span class="num1" style="font-size:20pt;font-weight:bold; color:blue">${vo2.corporate_culture }점</span>
      </div>
      <div>
      <span class="num1" style="font-size:20pt;font-weight:bold; color:red">${vo1.management }점</span>
         &emsp;&emsp;&emsp;&emsp;
         <span class="rad" style="font-weight:bold; color:black; font-size:12pt">경영진</span>
         &emsp;&emsp;&emsp;&emsp;
         <span class="num1" style="font-size:20pt;font-weight:bold; color:blue">${vo2.management }점</span>
      </div>
      <div>
      <span class="num1" style="font-size:20pt;font-weight:bold; color:red">${vo1.promotion_possibility }점</span>
         &emsp;&emsp;&emsp;&emsp;
         <span class="rad" style="font-weight:bold; color:black; font-size:12pt">승진 가능성</span>
         &emsp;&emsp;&emsp;&emsp;
         <span class="num1" style="font-size:20pt;font-weight:bold; color:blue">${vo2.promotion_possibility }점</span>
      </div>
      <br>
      <input type="hidden" id="value1-1" value="${vo1.welfare_pay*20 }">
      <input type="hidden" id="value1-2" value="${vo2.welfare_pay*20 }">
      <input type="hidden" id="value1-3" value="${vo1.work_life_balance*20 }">
      <input type="hidden" id="value1-4" value="${vo2.work_life_balance*20 }">
      <input type="hidden" id="value1-5" value="${vo1.corporate_culture*20 }">
      <input type="hidden" id="value1-6" value="${vo2.corporate_culture*20 }">
      <input type="hidden" id="value1-7" value="${vo1.management*20 }">
      <input type="hidden" id="value1-8" value="${vo2.management*20 }">
      <input type="hidden" id="value1-9" value="${vo1.promotion_possibility*20 }">
      <input type="hidden" id="value1-10" value="${vo2.promotion_possibility*20 }">
   </section>
</body>
</html>