<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.sist.member.*"%>
<%-- <jsp:useBean id="dao" class="com.sist.member.MemberDAO"/>
<%
    String userId=request.getParameter("userId");
 //   int count=dao.idCheck(userId);
 int count=0;
%>
<%=count%> --%>
${requestScope.count}