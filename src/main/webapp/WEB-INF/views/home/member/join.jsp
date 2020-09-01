<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ======= Header ======= -->
<header>
	<jsp:include page="/WEB-INF/views/home/include/header.jsp" />
</header>
<!-- End Header -->
<link href="madecss.css" rel="stylesheet" type="text/css" />
<script>
        function checkId() {
            let id = $('#id').val();
            $('#idCheckMsg').css("font-size", "11px");

            if (id.length == 0) $('#idCheckMsg').html("");
            else if (id.length < 5) {
                $('#idCheckMsg').html("5자이상 입력하세요");
                $('#idCheckMsg').css("color", "red")
            } else {
                $.ajax({
                    url: "<%=request.getContextPath()%>
	/idCheck.do",
				type : "post",
				data : {
					"id" : id
				},
				success : function(result) {
					if (result.trim("") == 'true') {
						$('#idCheckMsg').html("사용 가능한 아이디입니다.");
						$('#idCheckMsg').css("color", "green");
					} else {
						$('#idCheckMsg').html("이미 사용중인 아이디입니다.");
						$('#idCheckMsg').css("color", "red");
					}
				},
				error : function() {
					alert('error');
				}
			})
		}
	}
</script>

</head>
<body>
	<!-- header -->

	<!-- main -->

		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<h2>회원 가입하기</h2>
			<div class="locate">
				HOME &gt; Hana EZ members &gt; <strong>회원가입</strong>
			</div>
		</section>
		<!-- End Breadcrumbs -->


		<!-- ======= Signup Section ======= -->
		<section>
			<div class="container">
				<div class="join-section">
					<form method="post" name="form" id="form"
						onsubmit="return checkReCaptcha();"
						action="${ pageContext.request.contextPath }/join">
						<table class="table">
							<tr>
								<th>아이디</th>
								<td><input name="id" type="text" placeholder="5자 이상"
									id="id" class="w-50 float-left" required>
									<button class="btn_type2 h-50"
										style="width: 20%; margin: 10; float: right;"
										onclick="checkId()">
										<span>중복확인</span>
									</button> <span id="idCheckMsg"></span></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><input name="password" type="text" placeholder="비밀번호"
									class="w-50" required></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><input name="name" type="text" placeholder="이름"
									class="w-50" required></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>
									<div class="birth_day w-100">
										<input name="emailId" type="text" placeholder="아이디"
											style="width: 45%" required> <span class="bar">@</span>
										<input name="emailDomain" type="text" placeholder="도메인"
											style="width: 45%" required>
									</div>
								</td>
							</tr>
							<tr>
								<th>휴대폰</th>
								<td>
									<div class="birth_day w-100">
										<input type="text" name="tel1" id="tel1" pattern="[0-9]*"
											value="" label="휴대폰번호" size="5" maxlength="3"
											placeholder="000"> <span class="bar">-</span> <input
											type="text" name="tel2" id="tel2" pattern="[0-9]*" value=""
											label="휴대폰번호" size="5" maxlength="4" placeholder="0000">
										<span class="bar">-</span> <input type="text" name="tel3"
											id="tel3" pattern="[0-9]*" value="" label="휴대폰번호" size="5"
											maxlength="4" placeholder="0000">
									</div>
								</td>
							</tr>
							<tr>
								<th>주소</th>
								<td><input name="basicAddr" type="text" placeholder="기본 주소" class="w-75">
									<input name="post" type="text" placeholder="우편번호" class="w-25"><br>
									<input name="detailAddr" type="text" placeholder="상세 주소" class="w-100"></td>
							</tr>
							<tr>
								<th>성별</th>
								<td><input type="radio" name="gender" value="M"> <span>남자</span>
									<input type="radio" name="gender" value="F"> <span>여자</span>
							</tr>
							<tr>
								<th>생년월일</th>
								<td>
									<div class="birth_day w-100">
										<input type="text" name="birth_year" id="birth_year"
											pattern="[0-9]*" value="" label="생년월일" size="6" maxlength="4"
											placeholder="YYYY"> <span class="bar">/</span> <input
											type="text" name="birth[]" id="birth_month" pattern="[0-9]*"
											value="" label="생년월일" size="6" maxlength="2" placeholder="MM">
										<span class="bar">/</span> <input type="text" name="birth[]"
											id="birth_day" pattern="[0-9]*" value="" label="생년월일"
											size="6" maxlength="2" placeholder="DD">
									</div>
								</td>
							</tr>
						</table>
						<button type="submit" class="btn btn-primary text-white align-middle"
							style="width: 200px">
							<span>가입하기</span>
						</button>
					</form>
				</div>
			</div>
		</section>


		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<!-- begin panel -->
					<div class="panel panel-inverse"
						data-sortable-id="form-validation-2">
						<h4 class="panel-title">Extra Validation Field</h4>
					</div>
					<div class="panel-body panel-form">
						<form class="form-horizontal form-bordered"
							data-parsley-validate="true">
							<div class="form-group">
								<label class="control-label col-md-4 col-sm-4">AlphaNum*
									:</label>
								<div class="col-md-6 col-sm-6">
									<input class="form-control" type="text" id="alphanum"
										name="alphanum" data-type="alphanum"
										placeholder="Alphanumeric String."
										data-parsley-required="true" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-4 col-sm-4">Date ISO*
									:</label>
								<div class="col-md-6 col-sm-6">
									<input class="form-control" type="text" id="data-dateIso"
										placeholder="YYYY-MM-DD" data-parsley-required="true" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-4 col-sm-4">Required
									Select Box :</label>
								<div class="col-md-6 col-sm-6">
									<select class="form-control" id="select-required"
										name="selectBox" data-parsley-required="true">
										<option value="">Please choose</option>
										<option value="foo">Foo</option>
										<option value="bar">Bar</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-4 col-sm-4">Required
									Radio Button :</label>
								<div class="col-md-6 col-sm-6">
									<div class="radio">
										<label> <input type="radio" name="radiorequired"
											value="foo" id="radio-required" data-parsley-required="true" />
											Radio Button 1
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="radiorequired"
											id="radio-required2" value="bar" /> Radio Button 2
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-4 col-sm-4">Check at
									least 2 checkboxes :</label>
								<div class="col-md-6 col-sm-6">
									<div class="checkbox">
										<label><input type="checkbox" id="mincheck"
											name="mincheck[]" data-parsley-mincheck="2" value="foo"
											required /> Checkbox 1</label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="mincheck[]"
											value="bar" /> Checkbox 2</label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="mincheck[]"
											value="baz" /> Checkbox 3</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-4 col-sm-4">Regular
									Expression :</label>
								<div class="col-md-6 col-sm-6">
									<input class="form-control parsley-validated" type="text"
										id="data-regexp" data-parsley-pattern="#[A-Fa-f0-9]{6}"
										placeholder="hexa color code" data-required="true" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-4 col-sm-4"></label>
								<div class="col-md-6 col-sm-6">
									<button type="submit" class="btn btn-danger">Validate</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- end panel -->



		<!-- End Join Section -->



	<!-- footer -->
	<!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/admin/include/footer.jsp" />
	<!-- End Footer -->

	<!-- Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="myModalLabel" contenteditable="true">회원만
						이용 가능한 서비스입니다.</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" contenteditable="true">로그인 한 회원만 이용할 수
					있습니다. 로그인 하러 가시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary"
						contenteditable="true">로그인</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" contenteditable="true">취소</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

</body>
</html>