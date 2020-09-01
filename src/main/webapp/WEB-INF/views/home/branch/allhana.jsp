<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-control" content="No-cache" />

<meta http-equiv="Pragma" content="No-cache" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />


<!-- End Header -->
<!-- jquery -->
<script type="text/javascript"
	src="https://image.kebhana.com/pbk/resource/js/lib/jquery.js"></script>
<script type="text/javascript">
	var $j = jQuery.noConflict();
</script>

<script type="text/javascript"
	src="https://image.kebhana.com/pbk/resource/js/lib/prototype.js"></script>

<script type="text/javascript"
	src="https://image.kebhana.com/pbk/resource/js/opb/opb-core-prototype.js"></script>
<script type="text/javascript"
	src="https://image.kebhana.com/pbk/resource/js/opb/opb-common-util.js"></script>

<script type="text/javascript"
	src="https://image.kebhana.com/pbk/resource/js/opb/opb-common-ajax.js"></script>

<script type="text/javascript"
	src="https://image.kebhana.com/pbk/resource/js/JHanaUtils.js">
	
</script>
<script type="text/javascript"
	src="https://image.kebhana.com/pbk/resource/js/pbk-util.js?t=20171201">
	
</script>




<script type="text/javascript"
	src="https://image.kebhana.com/pbk/resource/js/opb/apps/common/opb-apps-common-util.js"></script>

<script type="text/javascript">
	/* 서버의 세션타임아웃을 설정한다. session에서 정보 수신. */
	opb.common.util.auto_logout_timer.DEFAULT_TIMEOUT_SEC = '600';
</script>



<script type="text/javascript">
	hana.JHanaUtils.date.initServerTime();

	jQuery(document).ready(function() {

	});
</script>

<link type="text/css" rel="stylesheet"
	href="/cont/common/css/real/default.css" />
<link type="text/css" rel="stylesheet"
	href="/cont/common/css/real/layout.css" />
<link type="text/css" rel="stylesheet"
	href="/cont/common/css/real/common.css" />





<link type="text/css" rel="stylesheet"
	href="/cont/common/css/real/branch1Q.css" />


<!-- 추가 -->


<script type="text/javascript" src="/cont/common/js/ui.js"></script>
<script type="text/javascript" src="/cont/common/js/util.js"></script>
<script type="text/javascript" src="/cont/common/js/nhana_common_app.js"></script>
<script type="text/javascript" src="/cont/common/js/common_dev.js"></script>

<script type="text/javascript"
	src="https://image.kebhana.com/pbk/resource/js/lib/jquery-ui.js"></script>

<script type="text/javascript"
	src="https://image.kebhana.com/pbk/resource/simple/js/ui-new.js" />

</head>
<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div class="container-fluid d-flex">

			<div class="logo mr-auto">
				<h1 class="text-light">
					<a href="${ pageContext.request.contextPath }/"><span>HanaEZ
							UP</span></a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>

			<nav class="nav-menu d-none d-lg-block">
				<ul>
					<li class="active"><a
						href="${ pageContext.request.contextPath }/fakelogin">Home</a></li>
					<li><a href="#about">About Us</a></li>
					<li><a href="#services">Services</a></li>
					<li><a href="${ pageContext.request.contextPath }/branch">Portfolio</a></li>
					<li><a href="#">Team</a></li>
					<li class="drop-down"><a href="#">
					<spring:message code="menu.cs"></spring:message></a>
						<ul>
							<li><a
								href="${ pageContext.request.contextPath }/board/notice"><spring:message
										code="menu.cs.notice"></spring:message></a></li>
							<li><a
								href="${ pageContext.request.contextPath }/board/translator"><spring:message
										code="menu.cs.translator"></spring:message></a></li>
							<li><a href="#"><spring:message code="menu.cs"></spring:message></a></li>
							<li><a href="#"><spring:message code="menu.cs"></spring:message></a></li>
							<li class="drop-down"><a href="#"><spring:message
										code="menu.cs"></spring:message></a>
								<ul>
									<li><a href="#"><spring:message code="menu.cs"></spring:message></a></li>
									<li><a href="#"><spring:message code="menu.cs"></spring:message></a></li>
									<li><a href="#"><spring:message code="menu.cs"></spring:message></a></li>
									<li><a href="#"><spring:message code="menu.cs"></spring:message></a></li>
									<li><a href="#"><spring:message code="menu.cs"></spring:message></a></li>
								</ul></li>
						</ul></li>
					<li><c:choose>
							<c:when test="${ empty loginVO }">
								<a href="${ pageContext.request.contextPath }/join"><spring:message
										code="member.btn.join"></spring:message></a>
							</c:when>
							<c:when test="${ loginVO.type  eq '9'}">
							<a href="${ pageContext.request.contextPath }/admin/branch/register">관리자페이지</a>
							</c:when>
							<c:otherwise>
								<a href="${ pageContext.request.contextPath }/mypage"><spring:message
										code="member.btn.mypage"></spring:message></a>
							</c:otherwise> 
						</c:choose></li>
					<li class="get-started">
					<c:choose>
							<c:when test="${ empty loginVO }">
								<a href="${ pageContext.request.contextPath }/login"> <spring:message
										code="member.btn.login"></spring:message></a>
							</c:when>
							<c:otherwise>
							<a href="${ pageContext.request.contextPath }/logout"> <spring:message
										code="member.btn.logout"></spring:message></a>
							</c:otherwise>
						</c:choose></li>
				</ul>
			</nav>
			<!-- .nav-menu -->

		</div>
	</header>
<body>


	<script type="text/javascript">
		/* ===== 검색어 조회 ===== */
		var wisenutSearch = function() {
			var strSearchText = jQuery("#wisenutSearchText").val();
			if (strSearchText.length < 2) {
				// 		opb.common.layerpopup.openAlert_fnc("알림", "2자이상의 검색어를 입력해 주세요.");
				alert("2자이상의 검색어를 입력해 주세요.");
				return;
			}
			var searchForm = form.createForm([ {
				id : 'query',
				value : strSearchText
			} ]);
			hana.JHanaUtils.form.createFormSubmit(searchForm,
					"/cont/search/search_total.jsp", "");
		};

		var wisenutPressSearchCheck = function() {
			if (event.keyCode == 13) {
				return wisenutSearch();
			} else {
				return false;
			}
		};
		/* //===== 검색어 조회 ===== */
	</script>


	<!-- //hearer -->


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

				<!-- container -->
				<div id="container" class="bizSearch">

					<!-- contents -->
					<div id="contents" class="hana-contents">	
						<!-- <script type="text/javascript">
							function resizeFrame(frm) {
								frm.style.height = "auto";
								contentHeight = frm.contentWindow.document.body.scrollHeight;
								frm.style.height = contentHeight + 4 + "px";
							}
						</script> -->

						<div class="row col-lg-8 align-items-center justify-content-center">
						<div id="bizBranch">
							<h2 class="bizBranchH">영업점안내</h2>
							<ul class="bizBranch_menu">
								<li class="on"><a
									href="/cont/util/util04/util0401/index.jsp">영업점 찾기</a></li>
								<li><a href="/cont/util/util04/util0402/index.jsp">Hana
										1Q Smart Branch</a></li>
							</ul>
							<div class="branchSearch">
								<iframe
									src="https://openhanafn.ttmap.co.kr/content.jsp?search_flag=&search_word="
									title="영업점안내" frameborder="0" width="100%" height="1000"
									scrolling="no" name="bizBranch"></iframe>
								<!-- <iframe src="http://openhanafn.tritops.co.kr:8000/content.jsp?search_flag=&search_word=" title="영업점안내" frameborder="0" width="100%" height="800" scrolling="no" name="content" onload="resizeFrame(this)"></iframe> -->
							</div>
						</div>
						</div>
					</div>
					<!-- //contents -->
				</div>

			</div>
		</div>
		</section>
	</div>
	<!-- End Certifify Section -->
	<!-- //container-->

	<!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/admin/include/footer.jsp" />
	<!-- End Footer -->

</body>
</html>