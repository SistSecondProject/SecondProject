<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="../member/shadow/css/shadowbox.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="../member/shadow/js/shadowbox.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    //라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
    $('input[type="checkbox"][name="group"]').click(function(){
        //클릭 이벤트 발생한 요소가 체크 상태인 경우
        if ($(this).prop('checked')) {
            //체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
            $('input[type="checkbox"][name="group"]').prop('checked', false);
            $(this).prop('checked', true);
        }
    });
});
</script>
<script type="text/javascript">
	Shadowbox.init({
		players : [ "iframe" ]
	});
	function idCheck() {
		Shadowbox.open({
			content : '../member/idCheck.jsp',
			title : '아이디 중복체크',
			player : 'iframe',
			width : 300,
			height : 200
		});
	
	}
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<section>
				<h1 class="text-center">
					<span>회원가입</span>
				</h1>
				<hr>
				<form class="form-horizontal" method="post" action="../member/join_ok.do" 
					name="signup" id="signup">

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">아이디<span
							class="text-danger">*</span></label>
						<div class="col-md-2">
							<input type="text" class="form-control" name="userId"
								placeholder="userId" value=""  readonly>
						</div>
						<div>
							<input type=button class="btn btn-sm btn-warning" value="중복체크"
								onclick="idCheck()">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">비밀번호
							<span class="text-danger">*</span>
						</label>
						<div class="col-md-4">
							<div class="input-group">
								<span class="input-group-addon"> <i
									class="glyphicon glyphicon-lock"></i></span> <input type="password"
									class="form-control" name="password" placeholder="" value="">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">비밀번호
							확인<span class="text-danger">*</span>
						</label>
						<div class="col-md-4">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input type="password"
									class="form-control" name="cpassword" placeholder="" value="">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">이름 <span
							class="text-danger">*</span></label>
						<div class="col-md-4">
							<input type="text" class="form-control" name="name"
								placeholder="" value="">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">email <span
							class="text-danger">*</span></label>
						<div class="col-md-4">
							<input type="text" class="form-control" name="emailAddress"
								placeholder="" value="">
						</div>
					</div>
					
					<div class="form-group">
					<!-- 
					<input type="text" id="sample4_postcode" placeholder="우편번호">
					<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
					<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
					 -->
						<label class="col-md-4 control-label col-xs-12"
							for="Permanent Address">우편번호 <span class="text-danger">*</span></label>
						<div class="col-sm-2">
							<input type="text" class="form-control input-md" name="postAddress" id="sample4_postcode" placeholder="우편번호">
						</div>
						<div>
							<input type=button class="btn btn-sm btn-warning" value="우편번호검색"
								onclick="sample4_execDaumPostcode()">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label"></label>
						<div class="col-md-4">
							<input type="text" id="sample4_roadAddress" placeholder="도로명주소"
								class="form-control input-md " name="roadnameAddress" >
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label"></label>
						<div class="col-md-4">
							<input type="text" placeholder="상세주소"
								class="form-control input-md " name="detailAddress" >
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">관심직종</label>
						<div class="col-md-4">
									<li class="list-group-item">서비스업 
										<input type="checkbox" name="favoriteCategory" value="1">
							</li>
									<li class="list-group-item">제조/화학
										 <input type="checkbox" name="favoriteCategory" value="2">
									</li>
									<li class="list-group-item">의료/제약/복지 
										<input type="checkbox" name="favoriteCategory" value="3">
									</li>
									<li class="list-group-item">유통/무역/운송
										 <input type="checkbox" name="favoriteCategory" value="4">
									</li>
									<li class="list-group-item">교육업 
										<input type="checkbox" name="favoriteCategory" value="5">
									</li>
									<li class="list-group-item">건설업 
										<input type="checkbox" name="favoriteCategory" value="6">
									</li>
									<li class="list-group-item">IT/웹/통신
										 <input type="checkbox" name="favoriteCategory" value="7">
									</li>
									<li class="list-group-item">미디어/디자인 
										<input type="checkbox" name="favoriteCategory" value="8">
									</li>
									<li class="list-group-item">은행/금융업
										 <input type="checkbox" name="favoriteCategory" value="9">
									</li>
									<li class="list-group-item">기관/협회
										 <input type="checkbox" name="favoriteCategory" value="10">
									</li>
						</div>

					</div>
					<div class="form-group">
						<label class="col-md-4 control-label" for="singlebutton"></label>
						<div class="col-md-4">
							<input name="submit" type="submit" value="회원가입"
								class="btn btn-warning">
							<button class="btn btn-default btn-cancel-action">취소</button>
						</div>
					</div>
				</form>
		</div>
	</div>
</body>
</html>