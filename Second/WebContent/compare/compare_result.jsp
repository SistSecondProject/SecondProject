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
<link rel='stylesheet' href='Nwagon.css' type='text/css'>
	<script src="js/Nwagon.js"></script>
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
			<span style="font-size:25pt; color:red; font-weight:bold;">${comp1 }</span>
			</div>
			<div class="com_common">
					<br><br>
			<span style="font-size:25pt; color:blue; font-weight:bold;">${comp2 }</span>
			</div>

		</div>
		<!-- chart -->
		<div style="border-style: ridge; width: 1000px;" class="container">
			<div class="example col-lg" id="chart11">
				<script>
					var options = {
						'legend' : {
							names : [ '승진 기회 및 가능성', '복지 및 급여', '업무와 삶의 균형',
									'사내문화', '경영진 평점'],
							hrefs : []
						},
						'dataset' : {
							title : 'Web accessibility status',
							values : [ [ 33, 53, 67, 23, 78],
									[ 53, 67, 23, 78, 45 ] ],
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
				</script>
			</div>
		</div>
		<br>
	<div>
		<span class="num1" style="font-size:20pt;font-weight:bold; color:red">${vo.welfare_pay }</span>
			&emsp;&emsp;&emsp;&emsp;
			<span class="rad" style="font-weight:bold">복지 및 급여</span>
			&emsp;&emsp;&emsp;&emsp;
			<span class="num1" style="font-size:20pt;font-weight:bold; color:blue">${vo.welfare_pay }</span>
		</div>
		<div>
<span class="num1" style="font-size:20pt;font-weight:bold; color:red">${vo.work_life_balance }</span>
			&emsp;&emsp;&emsp;&emsp;
			<span class="rad" style="font-weight:bold">업무 삶 균형</span>
			&emsp;&emsp;&emsp;&emsp;
			<span class="num1" style="font-size:20pt;font-weight:bold; color:blue">${vo.work_life_balance }</span>
		</div>
		<div>
		<span class="num1" style="font-size:20pt;font-weight:bold; color:red">${vo.corporate_culture }</span>
			&emsp;&emsp;&emsp;&emsp;
			<span class="rad" style="font-weight:bold">사내문화</span>
			&emsp;&emsp;&emsp;&emsp;
			<span class="num1" style="font-size:20pt;font-weight:bold; color:blue">${vo.corporate_culture }</span>
		</div>
		<div>
		<span class="num1" style="font-size:20pt;font-weight:bold; color:red">${vo.management }</span>
			&emsp;&emsp;&emsp;&emsp;
			<span class="rad" style="font-weight:bold">경영진</span>
			&emsp;&emsp;&emsp;&emsp;
			<span class="num1" style="font-size:20pt;font-weight:bold; color:blue">${vo.management }</span>
		</div>
		<div>
		<span class="num1" style="font-size:20pt;font-weight:bold; color:red">${vo.promotion_possibility }</span>
			&emsp;&emsp;&emsp;&emsp;
			<span class="rad" style="font-weight:bold">승진 가능성</span>
			&emsp;&emsp;&emsp;&emsp;
			<span class="num1" style="font-size:20pt;font-weight:bold; color:blue">${vo.promotion_possibility }</span>
		</div>
		<br>
	</section>
</body>
</html>
