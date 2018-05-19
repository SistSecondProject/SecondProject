<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://i.jobkorea.kr/content/css/ver_2/event/banner.promotion.css?201805171630">

                <link rel="stylesheet" type="text/css" href="http://i.jobkorea.kr/content/css/ver_2/common.css?201805171630">
                <link rel="stylesheet" type="text/css" href="http://i.jobkorea.kr/content/css/ver_2/gnb/gnb.css?201805171630">
                <link rel="stylesheet" type="text/css" href="http://i.jobkorea.kr/content/css/ver_2/jobs/part.css?201805171630">
                <link rel="stylesheet" type="text/css" href="http://i.jobkorea.kr/content/css/ver_2/jobs/read.css?201805171630">



    <link rel="stylesheet" type="text/css" href="http://i.jobkorea.kr/content/css/ver_1/star/star_tpl.css" />

</head>
<body style="width: 1000px">
<section class="secReadSummary  ">
    <h2 class="hd_2 blind">요약정보</h2>
    <div class="readSumWrap clear" style="width: 1000px" >
        <article class="artReadJobSum">
            <div class="sumTit">
              ${list[0].title }
            </div>
            <div class="tbRow clear">
                <div class="tbCol ">
					${list[0].info1 }
						<div id="popupPref" class="tplLyWrap devTplLyClick tplHide">
							<button class="girBtnTy girBtnMore devTplLyBtn" type="button"><span class="blind">더보기</span></button>
							<div class="tplLyType devLyType">
								<div class="lyCnt">
									<dl class="tbAdd">
											<dt>기본우대</dt>
											<dd>국가유공자, 컴퓨터활용능력 우수자, 보훈대상자, 엑셀 고급능력 보유자, 문서작성 우수자</dd>
																																																	</dl>
								</div>
								<p class="lyBtn"><button class="tplBtnTy tplLyBtnClose devLyBtnClose" type="button"><span class="blind">우대조건 레이어 닫기</span></button></p>
								<span class="tplIcnTy tplLyIcnArrTop" style="left: 20px; top: -6px;"></span>
							</div>
						</div>
				</div>
				<div class="tbCol " style="a.attr(){#}">
				${list[0].info2 }
				</div>

				<div class="tbCol tbCoInfo">
						<h4 class="hd_4">기업정보</h4>

						<div class="tbLogo">
							<div class="logo">
								<p>
										<a href="/Company/1453517/?C_IDX=89" target="_blank" title="새창"><img src="${list[0].img }" id="cologo" name="cologo" alt="㈜GS리테일" onload="go_logo_size(this, 100, 40);"></a>
								</p>
							</div>
						</div>

                    <dl class="tbList">

                                ${list[0].info3 }

                    </dl>
									</div>
            </div>
		</article>
	</div>


    <p class="sumBtn">

                <button type="button" class="tplBtn tplBtn_1 tplBtnBlue devHomePageApplyBtn" title="홈페이지 지원(새창)" id="devApplyBtn"><a href="${list[0].homepage }"><span>홈페이지 지원</span></a></button>
    </p>

    <p class="deadlineInfo" id="devTimeGuide">
        
    </p>

</section>

</body>
</html>