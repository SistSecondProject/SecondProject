<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<body>
	<div id="wrapper">
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">공지사항</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<div class="container">
			<div class="row align-center">
			<br><br>
				<h1>글쓰기</h1>
				<form method=post action="noticeInsert_ok.do">
					<table class="table table-hover align-center">
						<tr>
							<td width="15%" class="info text-right">제목</td>
							<td width="85%" class="text-left"><input type=text
								name=subject size=100 required></td>
						</tr>

						<tr>
							<td width="15%" class="info text-right">내용</td>
							<td width="85%" class="text-left"><textarea rows="10"
									cols="100" name=content required></textarea></td>
						</tr>
						<tr>
							<td colspan="2" class="text-center"><input type="submit"
								class="btn-warning btn-sm" value="확인" id="writeBtn"> <input
								type="button" class="btn-theme btn-sm" value="취소"
								onclick="javascript:history.back()"></td>
						</tr>

					</table>
				</form>
			</div>
		</div>
</body>
</html>