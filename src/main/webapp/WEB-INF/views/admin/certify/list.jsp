<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<!-- ======= Head ======= -->
<jsp:include page="/WEB-INF/views/admin/include/head.jsp" />
<!-- End head -->
</head>
<body class="vertical  light  ">
	<div class="wrapper">

		<!-- ======= Aside Menubar ======= -->
		<jsp:include page="/WEB-INF/views/admin/include/aside.jsp" />
		<!-- Aside Menubar -->

		<main role="main" class="main-content">
			<div class="container-fluid">
				<div class="row justify-content-center">
					<div class="col-12 col-lg-10 col-xl-8">
						<h2 class="h3 mb-4 page-title">인증 신청목록</h2>
						<div class="my-4">
							<ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="home-tab" data-toggle="tab" href="#home" role="tab"
									aria-controls="home" aria-selected="true">외국인 비대면 인증신청</a></li>
							</ul>
						

						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
	<!-- ======= Modals ======= -->
	<jsp:include page="/WEB-INF/views/admin/include/modals.jsp" />
	<!-- End Footer -->
	<!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/admin/include/footer.jsp" />
	<!-- End Footer -->
</body>
</html>