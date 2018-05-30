<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		var code = $('#ccode').attr("value");
		$.ajax({
			type : 'post',
			url : 'company_bookmark.do',
			data: {"companycode":code},
			success : function(res) {
				$('#bookmark').html(res);
			}
		});
		$('.bookmarkicon').live('click', function() {
			var type = $(this).attr("id");
			var code = $('#ccode').attr("value");
			$.ajax({
				type: 'post',
				url: 'company_bookmark.do',
				data: {"type":type,"companycode":code},
				success:function(res)
				{
					$('#bookmark').html(res);
				}
			});
			});
		
	/* 	$(".bookmarkicon").click(function(){
			var type = $(this).attr("id");
			var code = $('#ccode').attr("value");
			$.ajax({
				type: 'post',
				url: 'company_bookmark.do',
				data: {"type":type,"companycode":code},
				success:function(res)
				{
					$('#bookmark').html(res);
				}
			});
		}); */
	});


</script>

<style>
.rating {
  float:right;
}

.rating:not(:checked) > input {
  position:absolute;
  top:-9999px;
  clip:rect(0,0,0,0);
  visibility: hidden;
}

.rating:not(:checked) > label {
  float:right;
  width:1em;
  padding:0 .1em;
  overflow:hidden;
  white-space:nowrap;
  cursor:pointer;
  font-size:200%;
  line-height:1.2;
  color:#ddd;
  text-shadow:1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:before {
  content: &#9733;
}

.rating > input:checked ~ label {
  color: #ff7700;
  text-shadow:1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
  color: gold;
  text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating> input:checked + label:hover,
.rating> input:checked + label:hover ~ label,
.rating> input:checked ~ label:hover,
.rating> input:checked ~ label:hover ~ label,
.rating> label:hover ~ input:checked ~ label {
  color: #ea0;
  text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
  position:relative;
  top:2px;
  left:2px;
}
</style>
</head>
<body>
	<article>
		<div class="row">
		<div class="col-lg-2">
		<c:choose>
			<c:when
				test="${vo.imageURL eq 'https://jpassets.jobplanet.co.kr/assets/default_logo_share-12e4cb8f87fe87d4c2316feb4cb33f42d7f7584f2548350d6a42e47688a00bd0.png'}">
				<img src="../img/default.jpg" class="pull-left" alt="" />
			</c:when>
			<c:otherwise>
				<img src="${vo.imageURL}" class="pull-left" alt="" />
			</c:otherwise>
		</c:choose>
		</div>
		
		<div class="col-lg-8">
		<h1>${vo.companyName}</h1>
		</div>
		<div class="col-lg-2">
		<c:if test="${sessionScope.name ne null }">
			<span id="bookmark"></span>
		</c:if>
		</div>
		</div>
		
		<p>${vo.companyDetail}</p>
		<div class="bottom-article">
			<ul class="meta-post">
				<li><i class="icon-user"></i><a href="#">대표 : ${vo.ceo}</a></li>
				<li><i class="icon-calendar"></i><a href="#">설립일:
						${vo.foundationDay}</a></li>
				<li><i class="icon-folder-open"></i><a href="http://${vo.webURL}">${vo.webURL}</a></li>
				<li><i class="icon-comments"></i><a href="#">기업형태:
						${vo.formOfCompany}</a></li>
				
			</ul>
		</div>
		<div class="bottom-article">
			<ul class="meta-post">
				<li><i class="icon-comments"></i><a href="#">본사:
						${vo.headOffice}</a></li>
			</ul>
		</div>
		<div class="bottom-article">
			<ul class="meta-post">
				<li><i class="icon-comments"></i><a href="#">설립일:
						${vo.foundationDay}</a></li>
				<li><i class="icon-comments"></i><a href="#">사원수:
						${vo.numOfEmployee}</a></li>
				<li><i class="icon-comments"></i><a href="#">매출액:
						${vo.turnover}</a></li>
			</ul>
		</div>
	</article>
	
	<c:if test="${sessionScope.name ne null }">
	<article>
		<h3 class="widgetheading">평가하기</h3>
		
	<div class="bottom-article">
			<div class="row">
			<form method="post" id = "evaluation" action="score.do">
				<input type="hidden" name="companycode" id="ccode" value="${vo.companyCode }">
				<div class="col-lg-5">	
					<div class="row">
					<b>승진 기회 및 가능성</b>
					<fieldset class="rating one">
						<input type="radio" id="star5" name="rating" value="5" required/><label
							for="star5" title="Rocks!"><span>&#9733</span></label> <input
							type="radio" id="star4" name="rating" value="4" /><label
							for="star4" title="Pretty good"><span>&#9733</span></label> <input
							type="radio" id="star3" name="rating" value="3" /><label
							for="star3" title="Meh"><span>&#9733</span></label> <input
							type="radio" id="star2" name="rating" value="2" /><label
							for="star2" title="Kinda bad"><span>&#9733</span></label> <input
							type="radio" id="star1" name="rating" value="1" /><label
							for="star1" title="Sucks big time"><span>&#9733</span></label>
					</fieldset>
					</div>
					<div class="row">	
		<b>복지 및 급여</b>
					<fieldset class="rating two">
						<input type="radio" id="star5-1" name="ratingtwo" value="5" required/><label
							for="star5-1" title="Rocks!"><span>&#9733</span></label> <input
							type="radio" id="star4-1" name="ratingtwo" value="4" /><label
							for="star4-1" title="Pretty good"><span>&#9733</span></label> <input
							type="radio" id="star3-1" name="ratingtwo" value="3" /><label
							for="star3-1" title="Meh"><span>&#9733</span></label> <input
							type="radio" id="star2-1" name="ratingtwo" value="2" /><label
							for="star2-1" title="Kinda bad"><span>&#9733</span></label> <input
							type="radio" id="star1-1" name="ratingtwo" value="1" /><label
							for="star1-1" title="Sucks big time"><span>&#9733</span></label>
					</fieldset>
			</div>
				<div class="row">	
				<b>업무와 삶의 균형</b>
					<fieldset class="rating three">
						<input type="radio" id="star5-2" name="ratingthree" value="5" required/><label
							for="star5-2" title="Rocks!"><span>&#9733</span></label> <input
							type="radio" id="star4-2" name="ratingthree" value="4" /><label
							for="star4-2" title="Pretty good"><span>&#9733</span></label> <input
							type="radio" id="star3-2" name="ratingthree" value="3" /><label
							for="star3-2" title="Meh"><span>&#9733</span></label> <input
							type="radio" id="star2-2" name="ratingthree" value="2" /><label
							for="star2-2" title="Kinda bad"><span>&#9733</span></label> <input
							type="radio" id="star1-2" name="ratingthree" value="1" /><label
							for="star1-2" title="Sucks big time"><span>&#9733</span></label>
					</fieldset>
				</div>
				<div class="row">	
				<b>사내문화</b>
					<fieldset class="rating four">
						<input type="radio" id="star5-3" name="ratingfour" value="5" required/><label
							for="star5-3" title="Rocks!"><span>&#9733</span></label> <input
							type="radio" id="star4-3" name="ratingfour" value="4" /><label
							for="star4-3" title="Pretty good"><span>&#9733</span></label> <input
							type="radio" id="star3-3" name="ratingfour" value="3" /><label
							for="star3-3" title="Meh"><span>&#9733</span></label> <input
							type="radio" id="star2-3" name="ratingfour" value="2" /><label
							for="star2-3" title="Kinda bad"><span>&#9733</span></label> <input
							type="radio" id="star1-3" name="ratingfour" value="1" /><label
							for="star1-3" title="Sucks big time"><span>&#9733</span></label>
					</fieldset>
			</div>
				<div class="row">	
				<b>경영진</b>
					<fieldset class="rating five">
						<input type="radio" id="star5-4" name="ratingfive" value="5" required/><label
							for="star5-4" title="Rocks!"><span>&#9733</span></label> <input
							type="radio" id="star4-4" name="ratingfive" value="4" /><label
							for="star4-4" title="Pretty good"><span>&#9733</span></label> <input
							type="radio" id="star3-4" name="ratingfive" value="3" /><label
							for="star3-4" title="Meh"><span>&#9733</span></label> <input
							type="radio" id="star2-4" name="ratingfive" value="2" /><label
							for="star2-4" title="Kinda bad"><span>&#9733</span></label> <input
							type="radio" id="star1-4" name="ratingfive" value="1" /><label
							for="star1-4" title="Sucks big time"><span>&#9733</span></label>
					</fieldset>
				</div>
				</div>
				<div class="col-lg-7">
				<textarea class="form-control" name="content" cols="50" rows="15" required></textarea>
				</div>
				<input type="submit" value="평가">
			
				<span id ="message"></span>
		</form>
		</div>
		
	</article>
	</c:if>

	<c:if test="${not(empty(list))}">
	<article>
		<h3 class="widgetheading">채용정보</h3>
		<c:forEach var="recruitment" items="${list}">
			<div class="bottom-article">
				<ul class="meta-post">
					<%-- <li><i class="icon-comments"></i><a href="#">${recruitment.title}</a></li> --%>
					<li><i class="icon-angle-right"></i> <a
						href="company.do?recruitmentcode=${recruitment.recruitmentCode}">${recruitment.title}</a><span></span></li>
				</ul>
			</div>
		</c:forEach>
	</article>
	</c:if>
</body>
</html>