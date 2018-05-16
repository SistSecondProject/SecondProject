<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>합격자소서</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	
	<!-- css -->
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="css/jcarousel.css" rel="stylesheet" />
	<link href="css/flexslider.css" rel="stylesheet" />
	<link href="css/style.css" rel="stylesheet" />
	<link href="css/size.css" rel="stylesheet" />
	
     <!-- 검색어 css -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js">	
	</script>

	<!-- Theme skin -->
	<link href="skins/default.css" rel="stylesheet" />

	<!-- =======================================================
    Theme Name: Moderna
    Theme URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
	======================================================= -->
<style type="text/css">
/* ===================================
10. Inner - Section: page headline
==================================== */



ul.breadcrumb li a:hover {
	text-decoration:none;
}


/*=============================  */

.row{
   
   margin-top: 5px;

}


</style>
</head>

<body>	
      <section id="inner-headline">
         <div class="container">
            <div class="row">
           
                    <div class="col-lg-3">
                  <ul class="breadcrumb">
                     <li><a href="main.jsp"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
                     <li class="active">합격자소서</li>
                  </ul>
                  </div>
              
               
            </div>
         </div>
      </section>

	   <div class="container">
	<div class="row">
		<div class="col-lg-5">
               <!-- tabs 첨부 -->
            <jsp:include page="tabs.jsp"></jsp:include>     
        </div>
		 
		 					
	 <div class="col-lg-5">
			  <!-- comment 첨부 -->
               <jsp:include page="selftest.jsp"></jsp:include> 
				</div>
				
				<%--   <!-- add 첨부 -->
            <jsp:include page="addcontent.jsp"></jsp:include>  --%> 
 			
				</div>
				</div>
			
			
		  		

	     

	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
	<!-- javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/jquery.fancybox-media.js"></script>
	<script src="js/google-code-prettify/prettify.js"></script>
	<script src="js/portfolio/jquery.quicksand.js"></script>
<!-- 	<script src="js/portfolio/setting.js"></script> -->
<!-- 	<script src="js/jquery.flexslider.js"></script> -->
<!-- 	<script src="js/animate.js"></script> -->
<!-- 	<script src="js/custom.js"></script> -->
	

</body>

</html>