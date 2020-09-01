<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
	<jsp:include page="/WEB-INF/views/home/include/header.jsp" />
</header>
<!-- End Header -->
<script type="text/javascript">
	/* 서버의 세션타임아웃을 설정한다. session에서 정보 수신. */
	opb.common.util.auto_logout_timer.DEFAULT_TIMEOUT_SEC = '6';
</script>
<!-- main -->
<div id="wrapper">
	<!-- ======= Breadcrumbs ======= -->
	<section id="breadcrumbs" class="breadcrumbs">
		<div class="brd-title">
			<h2>외국인 본인 인증하기</h2>
		</div>
		<div class="brd-locate">
			HOME &gt; Hana EZ members &gt; <strong>회원가입</strong>
		</div>
	</section>
	<!-- End Breadcrumbs -->
	<main id="branch-search">
	<div class="container">
		<div class="row col-lg-12 align-items-center justify-content-center">
			<div class="branch-search-content align-items-center ">
				<div class="branch-search-titles align-center">
					<h2>외국인 특화지점 이용서비스</h2>
				</div>

				<div class="branch-search-body">
					<!-- 상단 검색부분 -->
						<div class="row col-lg-12 align-items-center justify-content-center">
							<div class="branch-search-input brSearch">
								<p>검색창:
									<form class="form-inline"  name="brSearch">
									<input class="form-control mr-sm-2" type="text" name="brSearch"/> 
									<button class="btn btn-primary my-2 my-sm-0" type="submit" name="brSearch" onclick="">
										Search
									</button>
								</form>
					</p>
							</div>
						</div>
						<div class="row col-lg-12 align-items-center justify-content-center">
							<div class="branch-search-input">
								<p id="branch-search-result">검색결과</p>
								<div>
								<ul>
								<c:forEach var="branchVO" items="${ branchList }">					
									<li>${ branchVO.nameKo }</li>
								</c:forEach></ul>
								</div>
							</div>
						</div>
						<!-- 하단 지도표시 부분 -->
					<div id="branchMap" style="width:500px;height:400px;"></div>
				</div>
				<div class="branchFooter">
					<div
						class="row col-lg-12 align-items-center justify-content-center">
						<button class="btn btn-primary">이용 예약하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=<spring:eval expression="@property['kakaoJavaScriptKey']"></spring:eval>"></script>
<script>

	// kakao map :: 지도 띄우기
	var container = document.getElementById('branchMap'); //지도를 담을 영역의 DOM 레퍼런스

	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(35.233562, 128.881305), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴


	// kakao map :: 좌표 이동시키기
	function setCenter() {          
		
		var changedLoc = '';
		
	    // 이동할 위도 경도 위치를 생성합니다 
	    var moveLatLon = new kakao.maps.LatLng(changedLoc);
	    
	    // 지도 중심을 이동 시킵니다
	    map.setCenter(moveLatLon);
}

</script>
<script>
$(function(){
    $("#btn_search").click(function(){
        //alert("검색 버튼 클릭!");
        var params = $(".branch-search-result").serialize();
         $.ajax({
            url:"<%=request.getContextPath()%>/branch/search",
            type:'POST',
            dataType: "json",
            data:params,
            success:function(data){
                // success
            },
            error:function(){
                
            }
        }); 
    });
});
</script>
<!-- ======= Footer ======= -->
<%@include file="/WEB-INF/views/home/include/footer.jsp"%>
<!-- End Footer -->
</body>
</html>