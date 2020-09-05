<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Simple bar CSS -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/assets/css/simplebar.css">
<!-- Fonts CSS -->
<link
	href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<!-- App CSS -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/assets/css/app-light.css"
	id="lightTheme" disabled>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/assets/css/app-dark.css"
	id="darkTheme">

<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/admin.css">

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-2"></div>
			<div class="col-lg-6 col-md-8 login-box">
				<div class="col-lg-12 login-key">
					<i class="fa fa-key" aria-hidden="true"></i>
				</div>
				<div class="col-lg-12 login-title">
				HanaEZ-UP<br>ADMIN PANEL</div>

				<div class="col-lg-12 login-form">
					<div class="col-lg-12 login-form">
						<form action="${ pageContext.request.contextPath }/admin/login"
							method="post" name="login">
							<div class="form-group">
								<label class="form-control-label">사원번호</label> <input
									type="text" class="form-control" name="eid">
							</div>
							<div class="form-group">
								<label class="form-control-label">패스워드</label> <input
									type="password" class="form-control" name="password">
							</div>

							<div class="col-lg-12 loginbttm">
								<div class="col-lg-6 login-btm login-button">
									<button type="submit" class="btn btn-outline-primary">LOGIN</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-3 col-md-2"></div>
			</div>
		</div>
	</div>

	<!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/admin/include/footer.jsp" />
	<!-- End Footer -->

</body>
</html>