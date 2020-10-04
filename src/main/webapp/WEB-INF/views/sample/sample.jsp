<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- ======= Header ======= -->
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Welcome to HanaEZ UP</title>
<style>
/* Style the form */
#regForm {
	background-color: #ffffff;
	margin: 100px auto;
	padding: 40px;
	width: 70%;
	min-width: 300px;
}

/* Style the input fields */
input {
	padding: 10px;
	width: 100%;
	font-size: 17px;
	font-family: Raleway;
	border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
	background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
	display: none;
}

/* Make circles that indicate the steps of the form: */
.step {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbbbbb;
	border: none;
	border-radius: 50%;
	display: inline-block;
	opacity: 0.5;
}

/* Mark the active step: */
.step.active {
	opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
	background-color: #4CAF50;
}
</style>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<link
	href="${ pageContext.request.contextPath }/resources/assets/img/favicon.png"
	rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">
<jsp:include page="/WEB-INF/views/home/include/common-css.jsp" />
<jsp:include page="/WEB-INF/views/admin/include/common-css.jsp" />

</head>
<body>
	<!-- ======= Header ======= -->
	<jsp:include page="/WEB-INF/views/home/include/header.jsp" />

	<!-- ======= Main ======= -->
	<div id="wrapper">
		<!-- ---Branch searching section--- -->
		<section id="branch-search"
			class="container d-flex align-items-center justify-content-center">
			<div
				class="container-fluid d-flex align-items-center justify-content-center">
				<div class="col-12">
					<h2 class="page-title">
						<spring:message code="branch.search.title"></spring:message>
					</h2>
					<p class="card-text">
						<spring:message code="branch.search.text"></spring:message>
					</p>
					<div class="row align-items-center justify-content-center">
						<div class="col-md-12 align-items-center">
							<div class="card shadow">
								<div class="card-body">

									<div>
										당신의 키는 → ${ encodedKey } 입니다. <br>
										<a href="${url }"><button>QR Code</button></a>
										<br>	
										<form action="${ pageContext.request.contextPath }/otpValidator"
											method="get">
											code : <input name="userCode" type="text"><br>
											<br> <input name="encodedKey" type="hidden"
												readonly="readonly" value="${ encodedKey }"><br>
											<br> <input type="submit" value="전송!">	
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>


</body>
</html>