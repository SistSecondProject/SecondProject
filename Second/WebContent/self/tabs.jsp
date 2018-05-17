<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<style type="text/css">

#favorites{
	border:1px solid #2F5030;
	background-color :#ffffff;
	
   
}

#stars{
  border:1px solid #2F5030;
  background-color :#4799F6;
}

.well{
 
 background-color: #E6E6E7; 
}

#search{
   background-color: #DD646A;
}
.clearfix:after {
  visibility: hidden;
  display: block;
  font-size: 0;
  content: " ";
  clear: both;
  height: 0;
}



</style>
</head>
<body>
<div class="col-lg-6 col-sm6"> 
    </div>
    <br>
    <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
        <div class="btn-group" role="group">
            <button type="button" id="stars" class="btn" href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-star" ></span>
                <div>합격자기소개서</div>
            </button>
        </div>
        <div class="btn-group" role="group">
            <button type="button" id="favorites" class="btn" href="#tab2" data-toggle="tab"><span class="glyphicon glyphicon-heart" ></span>
                <div>내 자소서 보관함</div>
            </button>
        </div>
    </div>
       
 
    

      <div class="well">
      <div class="tab-content">
              	<!-- 검색 창 -->
	<div class="row">
            <div id="custom-search-input">
                <div class="input-group col-md-12" >
                    <input type="text" class="form-control input-lg" placeholder="기업명 및 제목으로 검색해주세요" />
                    <span class="input-group-btn">
                        <button id="search" class="btn btn-lg" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
        
	</div>
       
        <div class="tab-pane fade in active" id="tab1">
           <table class="table">
    		<thead>
    		<center>
		      <tr>
		        <th>기업명</th>
		        <th>지원 분야</th>
		        <th>제목</th>
		      </tr>
		      </center>
    </thead>
    <tbody>
     <tr>
        <td><a href="passdetail.jsp">삼성</a></td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td><a href="passdetail.jsp">샘표</a></td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td><a href="passdetail.jsp">gs</a></td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
      
    </tbody>
  </table>
      
        </div>
        
        <div class="tab-pane fade in" id="tab2">
             <table class="table">
		      <tr>
		        <th class="text-center">번호</th>
		        <th class="text-center">제목</th>
		        <th class="text-center">작성일</th>
		      </tr>
      <c:forEach var="vo" items="${list }">
		  <tr>
          <td class="text-center">${vo.no }</td>
          <td class="text-center">
           <a href="#">${vo.content}</a>
          </td>
          <td class="text-center">
           <fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/>
          </td>
         </tr> 
		      
	</c:forEach>
    
  </table>
  
  
        </div>
      </div>
      
      <td class="text-right">
            <a href="#" class="btn btn-sm btn-primary">◀</a>
            <a href="#" class="btn btn-sm btn-primary">▶</a>
            &nbsp;&nbsp;&nbsp;${curpage } page / ${totalpage } pages
			
         </td>
    </div>
</body>
</html>
    