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
    <h2 class="hd_2 blind">�������</h2>
    <div class="readSumWrap clear" style="width: 1000px" >
        <article class="artReadJobSum">
            <div class="sumTit">
              ${list[0].title }
            </div>
            <div class="tbRow clear">
                <div class="tbCol ">
					${list[0].info1 }
						<div id="popupPref" class="tplLyWrap devTplLyClick tplHide">
							<button class="girBtnTy girBtnMore devTplLyBtn" type="button"><span class="blind">������</span></button>
							<div class="tplLyType devLyType">
								<div class="lyCnt">
									<dl class="tbAdd">
											<dt>�⺻���</dt>
											<dd>����������, ��ǻ��Ȱ��ɷ� �����, ���ƴ����, ���� ��޴ɷ� ������, �����ۼ� �����</dd>
																																																	</dl>
								</div>
								<p class="lyBtn"><button class="tplBtnTy tplLyBtnClose devLyBtnClose" type="button"><span class="blind">������� ���̾� �ݱ�</span></button></p>
								<span class="tplIcnTy tplLyIcnArrTop" style="left: 20px; top: -6px;"></span>
							</div>
						</div>
				</div>
				<div class="tbCol " style="a.attr(){#}">
				${list[0].info2 }
				</div>

				<div class="tbCol tbCoInfo">
						<h4 class="hd_4">�������</h4>

						<div class="tbLogo">
							<div class="logo">
								<p>
										<a href="/Company/1453517/?C_IDX=89" target="_blank" title="��â"><img src="${list[0].img }" id="cologo" name="cologo" alt="��GS������" onload="go_logo_size(this, 100, 40);"></a>
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

                <button type="button" class="tplBtn tplBtn_1 tplBtnBlue devHomePageApplyBtn" title="Ȩ������ ����(��â)" id="devApplyBtn"><a href="${list[0].homepage }"><span>Ȩ������ ����</span></a></button>
    </p>

    <p class="deadlineInfo" id="devTimeGuide">
        
    </p>

</section>

</body>
</html>