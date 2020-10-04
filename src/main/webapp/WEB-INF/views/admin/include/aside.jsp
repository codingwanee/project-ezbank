<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="topnav navbar navbar-light">
	<button type="button"
		class="navbar-toggler text-muted mt-2 p-0 mr-3 collapseSidebar">
		<i class="fe fe-menu navbar-toggler-icon"></i>
	</button>
	<ul class="nav">
		<li class="nav-item"><a class="nav-link text-muted my-2" href="#"
			id="modeSwitcher" data-mode="light"> <i class="fe fe-sun fe-16"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link text-muted my-2"
			href="./#" data-toggle="modal" data-target=".modal-shortcut"> <span
				class="fe fe-grid fe-16"></span>
		</a></li>
		<li class="nav-item nav-notif"><a
			class="nav-link text-muted my-2" href="./#" data-toggle="modal"
			onclick="javascript:getCounts();"
			data-target=".modal-notif"> <span class="fe fe-bell fe-16"></span>
				<span class="dot dot-md bg-success"></span>
		</a></li>
		<!--  <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-muted pr-0" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="avatar avatar-sm mt-2">
                <img src="./assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">
              </span>
            </a>
             <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="#">Logout</a>
            </div> 
          </li>-->
	</ul>
</nav>
<aside class="sidebar-left border-right bg-white shadow"
	id="leftSidebar" data-simplebar>
	<a href="#"
		class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3"
		data-toggle="toggle"> <i class="fe fe-x"><span class="sr-only"></span></i>
	</a>
	<nav class="vertnav navbar navbar-light">
		<!-- nav bar -->
		<div class="w-100 mb-4 d-flex">
			<a class="navbar-brand mx-auto mt-2 flex-fill text-center"
				href="${ pageContext.request.contextPath }/admin">
<%-- 				<img src="${ pageContext.request.contextPath }/resources/imgages/adminlogo.png" >				 --%>
 				<svg version="1.1" id="logo"
					class="navbar-brand-img brand-sm"
					xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					viewBox="0 0 120 120" xml:space="preserve">               
                <g>
                  <polygon class="st0"
						points="78,105 15,105 24,87 87,87 	" />
                  <polygon class="st0"
						points="96,69 33,69 42,51 105,51 	" />
                  <polygon class="st0"
						points="78,33 15,33 24,15 87,15 	" />
                </g>
              </svg>
			</a>
		</div>
		<!-- <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item dropdown">
              <a href="#dashboard" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-home fe-16"></i>
                <span class="ml-3 item-text">Dashboard</span><span class="sr-only">(current)</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="dashboard">
                <li class="nav-item active">
                  <a class="nav-link pl-3" href="./index.html"><span class="ml-1 item-text">Default</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./dashboard-analytics.html"><span class="ml-1 item-text">Analytics</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./dashboard-sales.html"><span class="ml-1 item-text">E-commerce</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./dashboard-saas.html"><span class="ml-1 item-text">Saas Dashboard</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./dashboard-system.html"><span class="ml-1 item-text">Systems</span></a>
                </li>
              </ul>
            </li>
          </ul> -->										
		<p class="text-muted nav-heading mt-4 mb-1">
			<span>관리목록</span>
		</p>
		<ul class="navbar-nav flex-fill w-100 mb-2">
			<li class="nav-item dropdown"><a href="#members"
				data-toggle="collapse" aria-expanded="false"
				class="dropdown-toggle nav-link"> <i class="fe fe-user fe-16"></i>
					<span class="ml-3 item-text">통역사</span>
			</a>
				<ul class="collapse list-unstyled pl-4 w-100" id="members">
					<li class="nav-item"><a class="nav-link pl-3"
						href="${ pageContext.request.contextPath }/admin/translator">
						<span class="ml-1 item-text">통역사 신청목록</span>
					</a></li>
					<li class="nav-item"><a class="nav-link pl-3"
						href="${ pageContext.request.contextPath }/admin/translator">
						<span class="ml-1 item-text">활동중인 통역사 목록</span>
					</a></li>
					<li class="nav-item"><a class="nav-link pl-3"
						href="${ pageContext.request.contextPath }/admin/board/list">
						<span class="ml-1 item-text">정보교류 게시판</span></a></li>
				</ul></li>
			<li class="nav-item dropdown"><a href="#branch"
				data-toggle="collapse" aria-expanded="false"
				class="dropdown-toggle nav-link"> <i class="fe fe-layers fe-16"></i>
					<span class="ml-3 item-text">지점</span>
			</a>
				<ul class="collapse list-unstyled pl-4 w-100" id="branch">
					<li class="nav-item"><a class="nav-link pl-3"
						href="${ pageContext.request.contextPath }/admin/branch/list"><span
							class="ml-1 item-text">지점목록</span></a></li>
					<li class="nav-item"><a class="nav-link pl-3"
						href="${ pageContext.request.contextPath }/admin/branch/register"><span
							class="ml-1 item-text">지점등록</span></a></li>
					<li class="nav-item"><a class="nav-link pl-3"
						href="${ pageContext.request.contextPath }/admin/branch/reservations"><span
							class="ml-1 item-text">예약현황</span></a></li>
				</ul></li>
			<li class="nav-item dropdown"><a href="#account"
				data-toggle="collapse" aria-expanded="false"
				class="dropdown-toggle nav-link"> <i
					class="fe fe-credit-card fe-16"></i> <span class="ml-3 item-text">계좌</span>
			</a>
				<ul class="collapse list-unstyled pl-4 w-100" id="account">
					<li class="nav-item"><a class="nav-link pl-3"
						href="${ pageContext.request.contextPath }/admin/branch/list"><span
							class="ml-1 item-text">계좌목록</span></a></li>
				</ul></li>
			
			<li class="nav-item dropdown"><a href="#certify"
				data-toggle="collapse" aria-expanded="false"
				class="dropdown-toggle nav-link"> <i class="fe fe-shield fe-16"></i>
					<span class="ml-3 item-text">비대면 인증</span>
			</a>
				<ul class="collapse list-unstyled pl-4 w-100" id="certify">
					<li class="nav-item"><a class="nav-link pl-3"
						href="${ pageContext.request.contextPath }/admin/certify/list"><span
							class="ml-1 item-text">인증신청 목록</span></a></li>
				</ul></li>
			<li class="nav-item dropdown"><a href="#reservation"
				data-toggle="collapse" aria-expanded="false"
				class="dropdown-toggle nav-link"> <i class="fe fe-home fe-16"></i>
					<span class="ml-3 item-text">지점예약</span>
			</a>
				<ul class="collapse list-unstyled pl-4 w-100" id="reservation">
					<li class="nav-item"><a class="nav-link pl-3"
						href="${ pageContext.request.contextPath }/admin/reserv/list"><span
							class="ml-1 item-text">예약현황</span></a></li>
				</ul></li>
				
<%-- 			<li class="nav-item dropdown"><a href="${ pageContext.request.contextPath }/admin/sample"
				data-toggle="collapse" aria-expanded="false"
			><span class="ml-3 item-text">test</span></a></li> --%>
		</ul>
		<div class="btn-box w-100 mt-4 mb-1">
			<a href="${ pageContext.request.contextPath }/" target="_blank"
				class="btn mb-2 btn-primary btn-lg btn-block"> <i
				class="fe fe-home fe-16"></i><span class="small">
					&nbsp;HanaEZ-UP 바로가기</span>
			</a>
		</div>
	</nav>
</aside>

<script>

function getCounts() {
	
	$.ajax({
		url : '${ pageContext.request.contextPath }/admin/certify/count',
		type : 'get',
		success : function(data) {
			$('#certify-count').empty();					
			/* let list = JSON.parse(data); */				
			
			let str = '';
			str += data;
			$('#certify-count').append(str);		
			
		},
		error : function() {
			$('#brSearch-result').empty();
			let str = 'An Error has occured.';
			$('#brSearch-result').append(str);
		}
	})
	
}

</script>