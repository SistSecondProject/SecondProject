<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Ready&Start</title>
<!-- css -->
<link href="css/size.css" rel="stylesheet" />
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
            <%-- <jsp:include page="tabs.jsp"></jsp:include>  --%> 
          <%--   <jsp:include page="${passinfo_jsp }"></jsp:include> --%>
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
    	     <table class="table table-hover">
        <tr class="success">
        
         <th width=10% class="text-center" align="center">회사명</th>
         <th width=30% class="text-center" align="center">지원분야</th>
         <th width=40% class="text-center" align="center">제목</th>
         
        </tr>
        <c:forEach var="vo" items="${list }">
         <tr>
          <td class="text-center" align="center">
          ${vo.no }
          </td>
 
          <td class="text-center" align="center">
           ${vo.position }
          </td>
          
          <td class="text-center" align="center">
           ${vo.recruitmenttitle } 
          </td>
         </tr>
        </c:forEach>
      </table>
  
  
      
        </div>
    
        <div class="tab-pane fade in" id="tab2">
             
    	     <table class="table table-hover">
        <tr class="success">
        
         <th width=10% class="text-center"  align="center">번호</th>
         <th width=40% class="text-center" align="center">제목</th>
         <th width=20% class="text-center" align="center">작성일</th>
         
        </tr>
        <c:forEach var="vo" items="${list }">
         <tr>
          <td class="text-center" align="center">
          ${vo.no }</a>
          </td>
          <td class="text-center" align="center">
           <a href="#">${vo.content }</a>
          </td>
          
          <td class="text-center" align="center">
           <%-- <fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/> --%>
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
        </div>
		 
		 					
	 <div class="col-lg-5">
			  <!-- 자소서 작성부분 첨부 -->
                
                   <jsp:include page="${content_jsp }"></jsp:include>  
				</div>
 			
				</div>
				</div>
      
<script  src="../self/js/index.js"></script>

</body>

       
</html>
