<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
 $(function(){
	$('.com_name').click(function(){
		var c=$(this).text();
		var cc=$('#comp1').attr("value");
		if(cc=="전체기업+")
		{
		  $('#comp1').attr("value",c);
		}
		else
		{
			$('#comp2').attr("value",c);	
		}
	});
}); 
</script>
<title>Insert title here</title>
</head>
<body>
						<br>
							<c:forEach var="vo" items="${clist }">
							<tr>
								<td width=35% align="center">
								<img src="${vo.imageURL}" width=80 height=75></td>
								<td width=43% align="left">
								<a href="#" class="com_name" data-dismiss="modal" style="font-size:18px; color:black;">${vo.companyName }</a></td>
								<td width=35% align="right">${vo.formOfCompany }</td>
							</tr>
						</c:forEach>
</body>
</html>