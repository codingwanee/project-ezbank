<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ======= Header ======= -->
<header>
	<jsp:include page="/WEB-INF/views/home/include/header.jsp" />
</header>
<!-- End Header -->

<!-- main -->
<div id="wrapper">
	<!-- ======= Breadcrumbs ======= -->
	<section id="breadcrumbs" class="breadcrumbs">
		<div>
			<div class="brd-title">
				<h2>마이 페이지</h2>
			</div>
			<div class="brd-locate">
				HOME &gt; Hana EZ members &gt; <strong>마이페이지</strong>
			</div>
		</div>
	</section>
	<!-- End Breadcrumbs -->
	
	<!-- ======= Mypage Section ======= -->
	<div id="mypage" class="mypage">
		<section>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 d-flex align-items-center">
						<table class="table">
							<tr>
								<th>아이디</th>
								<td>${ memberVO.id }</td>
							</tr>

							<tr>
								<th>이름</th>
								<td>${ memberVO.name }</td>
							</tr>
							<tr>
								<th>연락처</th>
								<td>${ memberVO.contact }</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>${ memberVO.emailId }@${ memberVO.emailDomain }</td>
							</tr>
							<tr>
								<th>주소</th>
								<td>${ memberVO.addr1 }<br>${ memberVO.addr2 }</td>
							</tr>
							<tr>
								<th>회원 인증여부</th>
								<td><c:choose>
										<c:when test='${ memberVO.type } == 1'>
											<span>인증 완료</span>
										</c:when>
										<c:when test='${ memberVO.type } == 1'>
											<span>관리자</span>
										</c:when>
										<c:otherwise>
											<span style="color: red">미인증</span>
											<button class="btn btn-primary" onclick="btnClick('c')">인증하기</button>
										</c:otherwise>
									</c:choose></td>
							</tr>
						</table>
					</div>
<!-- 					<section id="bottomBtns" class="bottomBtns">
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-md-8">
									<button class="btn btn-primary" onclick="btnClick('m')">
										내 정보 수정</button>
								</div>
							</div>
						</div>
					</section>
 -->				</div>
			</div>
		</section>
	</div>
</div>

<!-- End Join Section -->
<!-- ======= Footer ======= -->
<footer>
	<%@include file="/WEB-INF/views/home/include/footer.jsp"%>
</footer>
<!-- End Footer -->

<script>
	function btnClick(btnType) {
		switch (btnType) {
		case 'c':
			location.href = '${ pageContext.request.contextPath }/certify';
			break;
		case 'm':
			location.href = '${ pageContext.request.contextPath }/member/modify';
			break;
		}
	}
</script>
</body>
</html>