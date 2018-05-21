<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
						<br>
						<c:forEach var="vo" items="${clist }">
							<tr>
								<td width=30% align="center"><img src="${vo.imageURL}" width=50 height=30></td>
								<td width=25% align="left">
								<a href="#">${vo.companyName }</a></td>
								<td width=35% align="left">${vo.formOfCompany }</td>
							</tr>
						</c:forEach>
							<!-- <span id="print"></span> -->
</body>
</html>