<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>HanaEZ UP Admin Side</title>

<!-- ======= Head ======= -->
<jsp:include page="/WEB-INF/views/admin/include/common-css.jsp" />

<!-- Favicons -->
<link href="${ pageContext.request.contextPath }/resources/assets/img/favicon.png" rel="icon">


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
						<h2 class="h3 mb-4 page-title">지점등록</h2>
						<div class="my-4">
							<ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="home-tab" data-toggle="tab" href="#home" role="tab"
									aria-controls="home" aria-selected="true">외국인 특화지점</a></li>
							</ul>
							<form method="post" name="branch" action="${ pageContext.request.contextPath }/admin/branch/register">
								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="nameKo">지점명(한글)</label> <input type="text" name="nameKo"
											id="nameKo" class="form-control" placeholder="" required>
									</div>
									<div class="form-group col-md-6">
										<label for="bid">지점코드</label> <input type="text" id="bid" name="bid"
											class="form-control" placeholder="" required>
									</div>

									<div class="form-group col-md-6">
										<label for="tel">전화번호</label> <input type="text" id="tel" name="tel"
											class="form-control" placeholder="" required>
									</div>
									<div class="form-group col-md-6">
										<label for="loc">좌표</label> <input type="text" id="loc" name="loc"
											class="form-control" placeholder="" required>
									</div>
								</div>
								<div class="form-group">
									<label for="nameEn">지점명(영문)</label> <input type="text" name="nameEn"
										class="form-control" id="nameEn" placeholder="선택입력">
								</div>

								<hr class="my-4">
								<div class="form-group">
									<label for="addrKoNew">신주소(도로명)</label> <input type="text" name="addrKoNew"
										class="form-control" id="addrKoNew" placeholder="" required>
								</div>
								<div class="form-group">
									<label for="addrKoOld">구주소(지번)</label> <input type="text" name="addrKoOld"
										class="form-control" id="addrKoOld" placeholder="선택입력">
								</div>
								<div class="form-group">
									<label for="addrEn">영문주소</label> <input type="text" name="addrEn"
										class="form-control" id="addrEn" placeholder="선택입력">
								</div>

								<button type="submit" class="btn btn-primary">등록</button>
							</form>
						</div>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.col-12 -->
			</div>
			<!-- .row -->	
	</main>
	</div>
	<!-- main -->
	<!-- .wrapper -->
	
	<!-- ======= Modals ======= -->
	<jsp:include page="/WEB-INF/views/admin/include/modals.jsp" />
	<!-- End Footer -->
	<!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/admin/include/common-js.jsp" />
	<!-- End Footer -->
</body>
</html>