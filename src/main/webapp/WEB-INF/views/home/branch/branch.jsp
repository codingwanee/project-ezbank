<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<jsp:include page="/WEB-INF/views/home/include/header.jsp" />
</header>
<!-- End Header -->


<!-- <script type="text/javascript">
	/* 서버의 세션타임아웃을 설정한다. session에서 정보 수신. */
	opb.common.util.auto_logout_timer.DEFAULT_TIMEOUT_SEC = '6';
</script> -->


<!-- ======= Main ======= -->
<div id="wrapper">
	<!-- ---Breadcrumbs--- -->
	<section id="breadcrumbs" class="breadcrumbs">
		<div class="brd-title">
			<h2>외국인 본인 인증하기</h2>
		</div>
		<div class="brd-locate">
			HOME &gt; Hana EZ members &gt; <strong>회원가입</strong>
		</div>
	</section>
	<!-- End Breadcrumbs -->

	<!-- ---branch search section--- -->
	<section id="branch-search"
		class="container d-flex align-items-center justify-content-center">
		<div
			class="container-fluid d-flex align-items-center justify-content-center">
			<div class="row col-md-12 align-items-center justify-content-center">
				<div class="col-md-12 ">
					<div class="card shadow">
						<div class="card-body">
							<div class="row col-lg-12">
								<div class="row col-md-12">
									<div class="branch-search-title col-md-12">
										<br>
										<h4>외국인 특화지점 검색</h4>
									</div>
									<div class="branch-search-title col-md-12">
										<input class="keyword-box w-50" type="text" id="keyword"
											placeholder="검색어를 입력해 주세요." title="검색어 입력" />
										<button class="btn btn-outline-primary search-button"
											onclick="javascript:getResults(); return false;">검색</button>
									</div>
								</div>
										<hr>
								<div class="col-md-6 branch-search-input">
									<div class="col-md-12 branch-search-result">
										<p class="card-text">해당 지점을 클릭하시면 오른쪽에 위치가 표시됩니다.</p>
										<div id="brSearch-result" class="col-md-12 p-0"></div>
										<!-- simple table -->
									</div>
								</div>
								<div class="col-md-6">
									<div class="brMap">
										<!-- 하단 지도표시 부분 -->
										<div id="branchMap" style="width: 400px; height: 350px;"></div>
									</div>
									<div
										class="row col-md-12 align-items-center justify-content-center">
										<div id="branchFooter">
											<button class="btn btn-primary">해당지점 이용예약</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
</div>

<%-- <script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=<spring:eval expression="@property['kakaoJavaScriptKey']"></spring:eval>"></script> --%>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=<spring:eval expression="@property['kakaoJavaScriptKey']"></spring:eval>&libraries=services"></script>

<script>
	var mapContainer = document.getElementById('branchMap'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(35.233562, 128.881305), // 지도의 중심좌표
		level : 3, // 지도의 확대 레벨
		mapTypeId : kakao.maps.MapTypeId.ROADMAP
	// 지도종류
	};

	// 지도를 생성한다 
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 지도에 확대 축소 컨트롤을 생성한다
	var zoomControl = new kakao.maps.ZoomControl();

	// 지도의 우측에 확대 축소 컨트롤을 추가한다
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

	// 목록에서 지점을 선택하면 해당 지점으로 좌표를 이동하고 마커, 정보를 표시해준다.

	// kakao map :: 좌표 이동시키기
	function setCenter(lat, lon) {

		// 마커가 표시될 위치입니다 
		var markerPosition = new kakao.maps.LatLng(lat, lon);

		// 받아 온 위도, 경도로 지도중심 이동	    
		map.setCenter(new kakao.maps.LatLng(lat, lon));

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		var iwContent = '<div id="locBox" style="padding:5px;">'
		iwContent += '해당 지점 이용예약을 하시려면 &nbsp;&nbsp;아래 버튼을 눌러주세요 <br><br></div>'
		iwContent += ''

		iwPosition = new kakao.maps.LatLng(lat, lon); //인포윈도우 표시 위치입니다

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			position : iwPosition,
			content : iwContent
		});

		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker);
	}
</script>

<script>
	function getResults() {
		let keyword = $("#keyword").val();
		$.ajax({
			url : '${ pageContext.request.contextPath }/branch/search/'
					+ keyword,
			type : 'get',
			/* 			dataType : 'jsonp',
			 jsonpCallback:'data', */
			success : function(data) {

				$('#brSearch-result').empty();

				let list = JSON.parse(data);

				$(list).each(
						function() {
							console.log(this)

							let str = '';
							str += '<hr>';
							str += '<div id="' + this.bid
									+ '" onclick="javascript:setCenter('
									+ this.loc + '); return false;">';
							str += '<strong>' + this.nameKo + '</strong>';
							str += '<br>' + this.addrKoNew
							str += '</div>'

							$('#brSearch-result').append(str);
						})
			},
			error : function() {
				$('#brSearch-result').empty();
				let str = '';
				str += '조회 결과가 없습니다.'
				$('#brSearch-result').append(str);
			}
		})

	}
</script>

<!-- ======= Footer ======= -->
<%@include file="/WEB-INF/views/home/include/footer.jsp"%>
<!-- End Footer -->
</body>
</html>