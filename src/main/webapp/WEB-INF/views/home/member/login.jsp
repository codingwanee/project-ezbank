<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- ======= Header ======= -->
<header>
	<jsp:include page="/WEB-INF/views/home/include/header.jsp" />
</header>
<!-- End Header -->

<!-- ======= LOGIN SECTION ======= -->
<div id="wrapper">
	<div class="d-flex align-items-center">
		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="bread">
			<div class="brd-title">
				<h2>
					<spring:message code="member.btn.login"></spring:message>
				</h2>
			</div>
			<div class="brd-locate">
				HOME &gt; Hana EZ members &gt; <strong>회원가입</strong>
			</div>
		</section>
	</div>
	<!-- End Breadcrumbs -->

	<!-- ======= Login Section ======= -->
	<main id="login">
		<section>
			<div class="container">
				<div class="row">
					<div class="col-lg-6  d-flex align-items-center justify-content-center">
						<form action="${ pageContext.request.contextPath }/login"
							method="post" name="login">
							<table id="login-box">
								<tr>
									<th>ID</th>
									<td><input type="text" name="id" required="required"
										class="login-input"></td>
								</tr>
								<tr>
									<p></p>
								</tr>
								<tr>
									<th>PASSWORD</th>
									<td><input type="password" name="pwd"
										required="required" class="login-input"></td>
								</tr>
							</table>
							<br>							
							<a href="${ pageContext.request.contextPath }/login"><button type="submit" class="btn w-75 btn-primary border-0 margin-0">
								<spring:message code="member.btn.login"></spring:message></button></a>
							<a href="${ pageContext.request.contextPath }/join"><button type="button" class="btn w-75 bg-light border">
								<spring:message code="member.btn.join"></spring:message></button></a>
<%--							<button type="submit" class="btn btn-primary"><spring:message code="member.btn.login"></spring:message></button>
 							<a href="${ pageContext.request.contextPath }/"><button type="button" class="btn btn-secondary">홈으로</button></a> --%>
						</form>
					</div>
				</div>
			</div>
		</section>
		<!-- End Login Section -->
	</main>
</div>
<!-- ======= Footer ======= -->
<footer>
	<%@include file="/WEB-INF/views/home/include/footer.jsp"%>
</footer>
<!-- End Footer -->

</body>
</html>