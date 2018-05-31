<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="../member/shadow/css/shadowbox.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="../member/shadow/js/shadowbox.js"></script>

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
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = data.address; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 기본 주소가 도로명 타입일때 조합한다.
                if(data.addressType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample2_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample2_address').value = fullAddr;
               

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 500; //우편번호서비스가 들어갈 element의 width
        var height = 420; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
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
						<label class="col-md-4 control-label col-xs-12"
							for="Permanent Address">우편번호 <span class="text-danger">*</span></label>
						<div class="col-sm-2">
							<input type="text" class="form-control input-md" name="postAddress" id="sample2_postcode" placeholder="우편번호">
						</div>
						<div>
							<input type=button class="btn btn-sm btn-warning" value="우편번호검색"
								onclick="sample2_execDaumPostcode()">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label"></label>
						<div class="col-md-4">
							<input type="text" id="sample2_address" placeholder="도로명주소"
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
										<input type="radio" name="favoriteCategory" value="1">
							</li>
									<li class="list-group-item">제조/화학
										 <input type="radio" name="favoriteCategory" value="2">
									</li>
									<li class="list-group-item">의료/제약/복지 
										<input type="radio" name="favoriteCategory" value="3">
									</li>
									<li class="list-group-item">유통/무역/운송
										 <input type="radio" name="favoriteCategory" value="4">
									</li>
									<li class="list-group-item">교육업 
										<input type="radio" name="favoriteCategory" value="5">
									</li>
									<li class="list-group-item">건설업 
										<input type="radio" name="favoriteCategory" value="6">
									</li>
									<li class="list-group-item">IT/웹/통신
										 <input type="radio" name="favoriteCategory" value="7">
									</li>
									<li class="list-group-item">미디어/디자인 
										<input type="radio" name="favoriteCategory" value="8">
									</li>
									<li class="list-group-item">은행/금융업
										 <input type="radio" name="favoriteCategory" value="9">
									</li>
									<li class="list-group-item">기관/협회
										 <input type="radio" name="favoriteCategory" value="10">
									</li>
						</div>

					</div>
					<div class="form-group">
						<label class="col-md-4 control-label" for="singlebutton"></label>
						<div class="col-md-4">
							<input name="submit" type="submit" value="회원가입"
								class="btn btn-warning">
							<button class="btn btn-default btn-cancel-action" onclick="javascript:history.back()">취소</button>
						</div>
					</div>
				</form>
		</div>
	</div>
</body>
</html>