<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<div class="col-12">
						<div class="row align-items-center my-4">
							<div class="col">
								<h2 class="h3 mb-0 page-title">지점 이용예약</h2>
							</div>
							<div class="col-auto">
								<button type="button" class="btn btn-secondary">
									<span class="fe fe-trash fe-12 mr-2"></span>삭제
								</button>
								<button type="button" class="btn btn-primary">
									<span class="fe fe-filter fe-12 mr-2"></span>신규등록
								</button>
							</div>
						</div>
						<!-- table -->
						<div class="card shadow">
							<div class="card-body">
								<table class="table table-borderless table-hover">
									<thead>
										<tr>
											<th>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="all"> <label class="custom-control-label"
														for="all"></label>
												</div>
											</th>
											<th>예약일자</th>
											<th>국적</th>
											<th>예약시간</th>
											<th>예약자</th>
											<th>업무항목</th>
											<th>처리상태</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${ reservationList }" var="reserveVO"
											varStatus="loop">
											<tr>
												<td>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="${ reserveVO.resId }"> <label class="custom-control-label"
															for="${ reserveVO.resId }"></label>
													</div>
												</td>
												<td>
													<p class="mb-0 text-muted">
														<strong>${ reserveVO.resDate }</strong>
													</p>
												</td>
												<td>
													<p class="mb-0 text-muted">
														<strong>${ reserveVO.resTime }</strong>
													</p> <small class="mb-0 text-muted">${ reserveVO.resTime }</small>
												</td>
												<td>
													<p class="mb-0 text-muted">${ reserveVO.resTime }</p> <small
													class="mb-0 text-muted">${ reserveVO.resTime }</small>
												</td>
												<td>
													<p class="mb-0 text-muted">
														<a href="#" class="text-muted">${ reserveVO.resTime }</a>
													</p> <small class="mb-0 text-muted">${ reserveVO.resTime }</small>
												</td>
												<td class="text-muted">${ reserveVO.resTime }</td>
												<td><button
														class="btn btn-sm dropdown-toggle more-horizontal"
														type="button" data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														<span class="text-muted sr-only">Action</span>
													</button>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#">Edit</a> <a
															class="dropdown-item" href="#">Remove</a> <a
															class="dropdown-item" href="#">Assign</a>
													</div></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<nav aria-label="Table Paging" class="my-3">
							<ul class="pagination justify-content-end mb-0">
								<li class="page-item"><a class="page-link" href="#">Previous</a></li>
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a></li>
							</ul>
						</nav>
					</div>
					<!-- .col-12 -->
				</div>
				<!-- .row -->
			</div>
		</main>
		<!-- .container-fluid -->
	</div>
	<!-- ======= Modals ======= -->
	<jsp:include page="/WEB-INF/views/admin/include/modals.jsp" />
	<!-- End Footer -->
	<!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/admin/include/footer.jsp" />
	<!-- End Footer -->
</body>
</html>