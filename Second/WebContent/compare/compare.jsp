<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<link href="css/size.css" rel="stylesheet" />
<script src="../compare/js/jquery-2.1.3.min.js"></script>
<script src="../compare/js/jquery.js"></script>
<script type="text/javascript">
function a(){ 
	var comp1=$('#comp1').attr("name"); 
	var comp2=$('#comp2').attr("name");
	location.href ="compare_result.do?comp1="+comp1+"&comp2="+comp2; 
}

$(document).ready(function() {
    //엔터키로도 검색버튼 눌리게 함
    $("#search").keydown(function(evt) {
       if (evt.keyCode == 13) {
             $("#searchBtn").last().trigger('click'); // 검색버튼 클릭 하는것과 동일한 작동
          }
    });
    //검색 입력값 초기화 
    $('#compareModal').on('hidden.bs.modal', function (e) { 
       $('#search').val('');
       //검색결과 값 초기화
         $('#resultSearch').empty();
    });

	//버튼
	$("#searchBtn").on("click", function(){
		var rdata = $("#search").val();
		//syso 같은것 consol
		console.log(rdata)
		
		$.ajax({
			type:"POST",
			url:"result.do",
			data:{
				"rdata" : rdata
				},
			success: function(data){
				console.log("성공")
			/* 	console.log(data) */
				$("#resultSearch").html(data)
				
			},
			error: function(data){
				console.log("실패")
			}
		})
	})
});
</script>
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
						<li class="active">기업비교</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!--end headline -->


	<section id="content">
		<div class="container">
			<h5 style="text-align: left;">전체 기업비교</h5>
			<hr style="border: solid 1px black;" width="100%">
			<br> <br>
			<div class="compare_vs">
				<p>
					<input type="button" class="btn btn-default btn-lg" style="width: 300px; height: 120px; border: solid 1px; 
					font-size:20px; font-weight:bold" data-toggle="modal" data-target="#compareModal" id="comp1"  value=전체기업+> 	
						&emsp;&emsp;&emsp;&emsp; 	
					<span style="font-size: 2.5em; font-weight: bold; color: darkblue">vs</span>	
						&emsp;&emsp;&emsp;&emsp; 
					<input type="button" class="btn btn-default btn-lg" style="width: 300px; height: 120px;  border: solid 1px; 
					font-size:20px; font-weight:bold" data-toggle="modal" data-target="#compareModal" id="comp2"  value=전체기업+>
				</p>
				<br> <br> <br> 
				<a href="#" onclick="a();" class="btn btn-info" 
				style="width: 450px; height: 40px; font-size: 15pt; font-weight: bold; border-radius: 24px;">비교하기</a><br>
				<br><br>
			</div>
		</div>
		<br>
		<div class="container">
			<h5 style="text-align: left;">나의 기업비교</h5>
			<hr style="border: solid 1px black;" width="100%">
			<br>
			<div class="compare_myvs">
				<p>
					<input type="button" class="btn btn-default btn-lg" style="width: 300px; height: 120px;  border: solid 1px; 
					font-size:20px; font-weight:bold" data-toggle="modal" data-target="#compareModal" id="mycomp1" value=나의기업+> 	
						&emsp;&emsp;&emsp;&emsp; 	
					<span style="font-size: 2.5em; font-weight: bold; color: darkblue">vs</span>	
						&emsp;&emsp;&emsp;&emsp; 
					<input type="button" class="btn btn-default btn-lg" style="width: 300px; height: 120px;  border: solid 1px; 
					font-size:20px; font-weight:bold" data-toggle="modal" data-target="#compareModal" id="mycomp2" value=나의기업+>
				</p>
				<br> <br> <br> 
				<a href="compare_result.do" class="btn btn-info" style="width: 450px; height: 40px; font-size: 15pt; font-weight: bold; border-radius: 24px;">비교하기</a><br>
				<br><br>
			</div>
		</div>
	</section>

	<!-- 모달 팝업 -->
	<div class="modal fade" id="compareModal" tabindex="-1" role="dialog"
		aria-labelledby="compareModalLabel" aria-hidden="true">

		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span style="font-size: 1.5em" aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="compareModalLabel">비교기업 추가</h4>
					<hr style="border: solid 1px black;" width="100%">
					
					<!-- 기업 검색 부분 -->
					<div class="input-group">
						<input type="text" class="form-control" placeholder="기업명을 검색 하세요"
							id="search" name="search">
						<div class="input-group-btn">
							<input type="button" id="searchBtn"
								style="font-weight: bold; font-size: 11pt; weight: 20px; height: 34px;"
								value="Search" onkeydown="javascript:if(event.keyCode==13)">
						</div>
					</div>
					<br>
					<!-- 검색결과 부분 -->
					<div>
						<table>
							<thead>
								<tr>
									<th style="width: 150px">검색결과</th>
								</tr>
							</thead>
							<tbody id="resultSearch"></tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<br>
	</div>
</body>
</html>
