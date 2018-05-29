<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<style type="text/css">
.row{
   margin: 0px auto;
   width: 700px;
}
h1{
     text-align:center;
}
</style>
</head>
<body>
  <div class="container">
    <div class="row">
      <h1>수정하기</h1>
      <form method=post action="noticeUpdate_ok.do">
      <table class="table table-hover">
       <input type="hidden" name="no" value="${vo.no }">
       
       <tr>
        <td width="15%" class="success text-right">제목</td>
        <td width="85%" class="text-left">
         <input type=text name=subject size=45 required value="${vo.subject }">
        </td>
       </tr>
       
       <tr>
        <td width="15%" class="success text-right">내용</td>
        <td width="85%" class="text-left">
         <textarea rows="10" cols="50" name=content required >${vo.content }</textarea> <!-- textarea는 value값이 없다 -->
        </td>
       </tr>
       
       <tr>
        <td colspan="2" class="text-center">
         <input type="submit" class="btn btn-sm btn-primary"
          value="수정" id="writeBtn">
         <input type="button" class="btn btn-sm btn-primary"
          value="취소" onclick="javascript:history.back()">
        </td>
       </tr>
       
      </table>
      </form>
    </div>
  </div>
</body>
</html>