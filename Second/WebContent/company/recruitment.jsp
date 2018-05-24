<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<script>
	$(function() {
		var code = $('#rcode').attr("value");
		$.ajax({
			type : 'post',
			url : 'recruitment_bookmark.do',
			data : {
				"recruitmentcode" : code
			},
			success : function(res) {
				$('#bookmark').html(res);
			}
		});
		$('.bookmarkicon').live('click', function() {
			var type = $(this).attr("id");
			var code = $('#rcode').attr("value");
			$.ajax({
				type : 'post',
				url : 'recruitment_bookmark.do',
				data : {
					"type" : type,
					"recruitmentcode" : code
				},
				success : function(res) {
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

<body>
	
		<div class="row">
			<div class="col-lg-10">
				<h1>
					<a href="${recruitment.url}">${recruitment.title}</a>
				</h1>
			</div>
			<div class="col-lg-2">
				<span id="bookmark"></span>
			</div>
		</div>


		<h3>${recruitment.deadline}</h3>
		${recruitment.content }
	
	<input type="hidden" name="recruitmentcode" id="rcode"
		value="${recruitment.recruitmentCode }">
</body>
</html>