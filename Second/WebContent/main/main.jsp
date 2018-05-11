<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.sist.change.*"%>

<%
	// 화면 변경  main.jsp?mode=1
	/*
	     ~main.jsp
	     => mode=null
	        if(mode==null)
	     ~main.jsp?mode=
	     => mode=""
	        if(mode=="")(X)
	        if(mode.equals(""))(O)
	*/

	String mode = request.getParameter("mode");
	if (mode == null)
		mode = "0";
	int no = Integer.parseInt(mode);
	String jsp = JspChange.change(no);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Ready&Start</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<!-- css -->
<link href="../css/bootstrap.min.css" rel="stylesheet" />
<link href="../css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="../css/jcarousel.css" rel="stylesheet" />
<link href="../css/flexslider.css" rel="stylesheet" />
<link href="../css/style.css" rel="stylesheet" />
<link href="../css/size.css" rel="stylesheet" />
<!-- Theme skin -->
<link href="../skins/default.css" rel="stylesheet" />
</head>
<body>
	<!-- Header -->
	<div id="header-wrapper">
		<!-- header첨부(메뉴) -->
		<jsp:include page="header.jsp"></jsp:include>

		<!-- content -->
		<jsp:include page="${jsp }"></jsp:include>
		<!-- content end -->

		<!-- Footer -->
		<div id="footer-wrapper">
			<!-- footer 첨부 -->
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
	<script src="../js/jquery.js"></script>
	<script src="../js/jquery.easing.1.3.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.fancybox.pack.js"></script>
	<script src="../js/jquery.fancybox-media.js"></script>
	<script src="../js/google-code-prettify/prettify.js"></script>
	<script src="../js/jquery.flexslider.js"></script>
	<script src="../js/animate.js"></script>
	<script src="../js/custom.js"></script>
</body>
</html>