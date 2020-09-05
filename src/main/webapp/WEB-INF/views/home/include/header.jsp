<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Welcome to HanaEZ UP</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<%--<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->
<%-- <link rel="icon" type="image/png" sizes="16x16" href="${ pageContext.request.contextPath }/resources/assets/img/favicon.png"> --%>
  <link href="${ pageContext.request.contextPath }/resources/assets/img/favicon.png" rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="${ pageContext.request.contextPath }/resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/assets/vendor/icofont/icofont.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/assets/vendor/venobox/venobox.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/assets/vendor/aos/aos.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link
	href="${ pageContext.request.contextPath }/resources/assets/css/style.css"
	rel="stylesheet">

<!-- Additional CSS File -->
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/hana-ez-up.css"/>
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
	<!-- End Header -->
	
		<div class="container-fluid d-flex">

			<div class="logo mr-auto">
				<h1 class="text-light">
					<a href="${ pageContext.request.contextPath }/">
					<span style="margin-left: 70px;" >HanaEZ UP</span></a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>
			<nav class="nav-menu d-none d-lg-block">
				<ul>
					<li class="active"><a
						href="${ pageContext.request.contextPath }/fakelogin">Home</a></li>
					<li><a href="${ pageContext.request.contextPath }/sample">테스트</a></li>
					<li><a href="${ pageContext.request.contextPath }/certify">회원인증</a></li>
					<li><a href="<c:url value="${ pageContext.request.contextPath }/i18n.do?lang=ko" />">한국어</a>
					<a href="<c:url value="${ pageContext.request.contextPath }/i18n.do?lang=en" />">English</a></li>
					<li>
 					<a href="${ pageContext.request.contextPath }/branch"><spring:message code="menu.branch"></spring:message></a></li>
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
							<c:when test="${ loginVO.type eq '9' }">
								<a href="${ pageContext.request.contextPath }/admin">관리자페이지</a>
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
	
