<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Ready&Start</title>
<!-- css -->
<link href="css/size.css" rel="stylesheet" />
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
						<li class="active">합격자소서</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!--end headline -->
    
     <div class="container">
	<div class="row">
		<div class="col-lg-5">
               <!-- tabs 첨부 -->
            <jsp:include page="tabs.jsp"></jsp:include>     
        </div>
		 
		 					
	 <div class="col-lg-5">
			  <!-- 자소서 작성부분 첨부 -->
               <jsp:include page="selftest.jsp"></jsp:include> 
				</div>
				
			 
 			
				</div>
				</div>
    
<script  src="../self/js/index.js"></script>

</body>
</html>
