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

#inner-headline2{
	background:#DCE8C2;
	position:relative;
	margin:0;
	padding:0;
	color:#F2C0B9;
	height: 60px;
}


#inner-headline2 .inner-heading h2 {
	color:#fff;
	margin:20px 0 0 0;
}

/* --- breadcrumbs --- */
#inner-headline2 ul.breadcrumb {
	margin:10px 0 0;
	float:left;
}

#inner-headline2 ul.breadcrumb li {
	margin-bottom:0;
	padding-bottom:0;
}
#inner-headline2 ul.breadcrumb li {
	font-size:13px;
	
	color:#42393B;
}

#inner-headline2 ul.breadcrumb li i{
	color:#DE7067;
}

#inner-headline2 ul.breadcrumb li a {
	color:#fff;
}

ul.breadcrumb li a:hover {
	text-decoration:none;
}


/*=============================  */

.row{
   
   margin-top: 5px;

}
/*========Button css======  */
@import bourbon
	
// Feel free to edit these settings
// and try out different things.
$animation-speed: 150ms

$button-bg-color: tomato
$button-text-color: white
$button-text-size: 1.25em
$button-spacing: 1.5rem



// Here's the code for the buttons.
.sbutton
	display: inline-block
	margin: $button-spacing / 2
	padding: ($button-spacing / 2) $button-spacing
	
	border: none
	border-radius: $button-spacing / 8
	outline: none

	background-color: $button-bg-color

	color: $button-text-color
	font-family: inherit
	font-size: $button-text-size
	font-weight: 400
	line-height: $button-spacing
	text-decoration: none
	text-align: center

	cursor: pointer
	transition: all $animation-speed ease-out

	&:focus,
	&:hover
		background-color: tint($button-bg-color, 10%)

		box-shadow: 0 0 0 ($button-spacing / 8) $button-text-color, 0 0 0 ($button-spacing / 4) tint($button-bg-color, 10%)

	&:active
		background-color: shade($button-bg-color, 5%)

		box-shadow: 0 0 0 ($button-spacing / 8) shade($button-bg-color, 5%), 0 0 0 ($button-spacing / 4) shade($button-bg-color, 5%)
		transition-duration: $animation-speed / 2

	&.is-outlined
		border: ($button-spacing / 8) solid $button-bg-color
		
		background-color: transparent
	
		color: $button-bg-color
	
		&:focus,
		&:hover
			border-color: tint($button-bg-color, 10%)
	
			color: tint($button-bg-color, 10%)
	
		&:active
			border-color: shade($button-bg-color, 5%)
	
			color: shade($button-bg-color, 5%)



// Not relevant for the buttons. 
// Only for this demo to look okay.
*, *::before, *::after
	box-sizing: border-box

html
	background-color: #fafafa

	font-family: Roboto, sans-serif

html, body
	height: 100%
	margin: 0
	padding: 0
	width: 100%

body
	align-items: right;
	display: flex
	flex-flow: column nowrap
	justify-content: center

</style>
<script type="text/javascript">
document.querySelector('.sbutton').addEventListener('click', function (event) {
	event.preventDefault();
});
</script>
</head>

<body>	
      <section id="inner-headline2">
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