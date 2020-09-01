<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ======= Header ======= -->
<header>
	<jsp:include page="/WEB-INF/views/home/include/header.jsp" />
</header>
<!-- End Header -->

<!-- main -->
<div id="wrapper">
	<!-- ======= Breadcrumbs ======= -->
	<section id="breadcrumbs" class="breadcrumbs">
		<div class="brd-title">
			<h2>외국인 본인 인증하기</h2>
		</div>
		<div class="brd-locate">
			HOME &gt; Hana EZ members &gt; <strong>회원가입</strong>
		</div>
	</section>
	<!-- End Breadcrumbs -->

	<!-- ======= Certifify Section ======= -->
	<section id="certify" class="align-items-center">
		<div class="container section-bg" data-aos="fade-up">
			<div class="row col-lg-12 align-items-center justify-content-center ">
				<div class="section-title" data-aos="fade-up">
					<h2>비대면 인증</h2>
					<p>인증 서류 업로드</p>
				</div>
				<!-- <div class="row" data-aos="fade-up" data-aos-delay="100"> -->
			</div>

			<div class="section-discription">
				<div
					class="row col-lg-12 d-flex align-items-center justify-content-center">
					<p>
						외국인 등록증, 비자 사본을 업로드 해주세요. <br>이미지 파일 형식만 업로드 가능합니다.(jpg, png,
						gif) <br>파일 크기는 5mb를 넘을 수 없습니다.
					</p>
				</div>
			</div>
			<div class="section-content">
				<div
					class="row col-lg-12 d-flex align-items-center justify-content-center">

					<form action="${ pageContext.request.contextPath }/certify"
						method="post" name="certUpload" enctype="multipart/form-data">
						<ul>
							<!-- 						<li data-aos="fade-up">
							<div class="input-group">
								<div class="cutom-file">
									<input id="alien-regcard" type="file" name="attachfile1"
										class="custom-file-input">
									<lable for="alien-regcard" class="custom-file-label">외국인등록증</lable>
								</div>
							</div>
						</li> -->
							<!-- <li data-aos="fade-up"><input id="alien-regcard" type="file"
							sname="attachRegcard" class="custom-file-input"> <lable
								for="alien-regcard" class="custom-file-label">외국인등록증</lable></li> -->
							<!-- <li data-aos="fade-up"><br></li>
						<li data-aos="fade-up"><input id="visa" type="file"
							name="attachVisa" class="custom-file-input"> <lable
								for="visa" class="custom-file-label">비자</lable></li>
						<li data-aos="fade-up"></li>
						-->
							<li><input type="file" name="regCard"></li>
							<li><input type="file" name="visa"></li>
							<li><input type="submit" value="등록"
								class="btn btn-primary w-100" style="margin-left: 0"><i class="fe fe-upload fe-16"></i></input>
								
								</li>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- End Certifify Section -->
</div>


<script>
	function doRegister() {
		//파일 확장자 체크
		if (checkExt(f.attachfile1)) {
			return false; // 확장자 위배시 바로 false 리턴하며 doWrite 메소드 종료
		}
		if (checkExt(f.attachfile2)) {
			return false;
		}
		return true;
	}

	function checkExt(obj) {
		let needed = [ 'jpg', 'png', 'gif' ];
		let fileName = obj.value;
		let ext = fileName.substring(fileName.lastIndexOf('.') + 1);

		for (let i = 0; i < needed.length; i++) {
			if (needed != ext) {
				alert('이미지 파일만 업로드할 수 있습니다.<br>(가능 확장자:jpg, png, gif)');
				return true;
			}
		}
		return false;
	}
</script>


<!-- ======= Footer ======= -->
<%@include file="/WEB-INF/views/home/include/footer.jsp"%>
<!-- End Footer -->
</body>
</html>