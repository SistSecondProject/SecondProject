<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
</script>
<script type="text/javascript">
$(function(){
	$('.mycom_name').click(function(){
		var code = $(this).attr("name");
		console.log("code : "+code)
		var c=$(this).text();
		var cc=$('#mycomp1').attr("value");
		if(cc=="���Ǳ��+")
		{
		  $('#mycomp1').attr("value",c); 
		  $("#mycomp1").attr("name",code);
		}
		else
		{
			$('#mycomp2').attr("value",c);	
			$("#mycomp2").attr("name",code);
		}
	});
}); 
</script>
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="vo" items="${favoritelist }">
							<tr>
								&emsp;&emsp;
								<td width=35% align="center">
								<img src="${vo.imageURL}" width=100 height=85></td>
								&emsp;&emsp;&emsp;
								<td width=43% align="left">
								<a href="#" class="mycom_name" name="${vo.companyCode }" data-dismiss="modal" style="font-size:18px;
								 font-weight:bold; color:black;">${vo.companyName }</a></td>
								<td width=35% align="right">${vo.formOfCompany }</td><br>
							</tr>
						</c:forEach>
</body>
</html>