<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
    <!-- ======= Head ======= -->
<jsp:include page="/WEB-INF/views/admin/include/common-css.jsp" />
    <!-- End head -->
</head>
<body class="vertical  light  ">
<div class="wrapper">

    <!-- ======= Aside Menubar ======= -->
    <jsp:include page="/WEB-INF/views/admin/include/aside.jsp"/>
    <!-- Aside Menubar -->

    <main role="main" class="main-content">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-10">
                    <div class="row align-items-center my-4">
                        <div class="col">
                            <h2 class="page-title">비대면 인증신청 목록</h2>
                        </div>
                        <div class="col-auto">
                        <a href="${ pageContext.request.contextPath }/admin/certify/excel">
                            <button type="button" class="btn btn-lg btn-primary">
                                <span class="fe fe-download fe-16 mr-3">&nbsp;&nbsp;엑셀 다운로드</span></button></a>
                        </div>
                    </div>
                    <!-- .card-deck -->
                    <div class="row align-items-center mb-3 border-bottom no-gutters">
                        <div class="col">
                            <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
                                <li class="nav-item"><a class="nav-link active"
                                                        id="home-tab" data-toggle="tab" href="#home" role="tab"
                                                        aria-controls="home" aria-selected="true">최신순</a></li>
                                <li class="nav-item"><a class="nav-link" id="profile-tab"
                                                        data-toggle="tab" href="#profile" role="tab"
                                                        aria-controls="profile" aria-selected="false">미완료</a></li>
                                <li class="nav-item"><a class="nav-link" id="contact-tab"
                                                        data-toggle="tab" href="#contact" role="tab"
                                                        aria-controls="contact" aria-selected="false">처리완료</a></li>
                            </ul>
                        </div>
                        <div class="col-auto">
                            <button type="button" class="btn btn-sm">
                                <i class="fe fe-16 fe-grid text-muted"></i>
                            </button>
                            <button type="button" class="btn btn-sm">
                                <i class="fe fe-16 fe-list text-muted"></i>
                            </button>
                        </div>
                    </div>
                    <table class="table table-borderless table-striped">
                        <thead>
                        <tr>
                            <th></th>
                            <th class="w-50">Name</th>
                            <th>Owner</th>
                            <th>Last Update</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${ certList }" var="certVO" varStatus="loop">
                            <tr>
                                <td class="text-center">
                                    <div class="circle circle-sm bg-light">
                                        <span class="fe fe-folder fe-16 text-muted"></span>
                                    </div>
                                    <c:choose>
                                        <c:when test="${certVO.status eq '0'}">
                                            <span class="dot dot-md bg-success mr-1"></span>
                                        </c:when>
                                        <c:when test="${certVO.status eq '1'}">
                                            <span class="dot dot-md bg-secondary mr-1"></span>
                                        </c:when>
                                        <c:when test="${certVO.status eq '2'}">
                                            <span class="dot dot-md bg-warning mr-1"></span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="dot dot-md bg-warning mr-1"></span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <th scope="row">
                                <a href="${ pageContext.request.contextPath }/admin/certify/detail/${certVO.certId}">
                                ${certVO.applicantNm}</a><br/>
                                <span class="badge badge-light text-muted">Folder</span>
                                </th>
                                <td class="text-muted">${certVO.applicantNtnKo}</td>
                                <td class="text-muted">${certVO.regDate}</td>
                                <td>
                                    <div class="file-action">
                                        <button type="button"
                                                class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto"
                                                data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                            <span class="text-muted sr-only">Action</span>
                                        </button>
                                        <div class="dropdown-menu m-2">
                                            <a class="dropdown-item" href="#"><i
                                                    class="fe fe-chevrons-right fe-12 mr-4"></i>Move</a> <a
                                                class="dropdown-item" href="#"><i
                                                class="fe fe-copy fe-12 mr-4"></i>Copy</a> <a
                                                class="dropdown-item" href="#"><i
                                                class="fe fe-edit-3 fe-12 mr-4"></i>Rename</a> <a
                                                class="dropdown-item" href="#"><i
                                                class="fe fe-delete fe-12 mr-4"></i>Delete</a> <a
                                                class="dropdown-item" href="#"><i
                                                class="fe fe-share fe-12 mr-4"></i>Share</a> <a
                                                class="dropdown-item" href="#"><i
                                                class="fe fe-download fe-12 mr-4"></i>Download</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                    <!-- table -->
                    <div class="card shadow">
                        <div class="card-body">
                            <table class="table table-borderless table-hover">
                                <thead>
                                <tr>
                                    <th>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="all2">
                                            <label class="custom-control-label" for="all2"></label>
                                        </div>
                                    </th>
                                    <th>ID</th>
                                    <th>User</th>
                                    <th>Company</th>
                                    <th>Country</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${ certList }" var="certVO" varStatus="loop">
                                    <tr>
                                        <td>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="2474">
                                                <label class="custom-control-label" for="2474"></label>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="avatar avatar-sm">
                                                <img src="./assets/avatars/face-3.jpg" alt="..."
                                                     class="avatar-img rounded-circle">
                                            </div>
                                        </td>
                                        <td>
                                            <p class="mb-0 text-muted"><strong>${certVO.applicantNm}</strong></p>
                                            <small class="mb-0 text-muted">2474</small>
                                        </td>
                                        <td>
                                            <p class="mb-0 text-muted">Accumsan Consulting</p>
                                            <small class="mb-0 text-muted">Ap #331-7123 Lobortis Avenue</small>
                                        </td>
                                        <td>
                                            <p class="mb-0 text-muted"><a href="#" class="text-muted">(958) 421-0798</a>
                                            </p>
                                            <small class="mb-0 text-muted">Nigeria</small>
                                        </td>
                                        <td class="text-muted">13/09/2020</td>
                                        <td>
                                            <button class="btn btn-sm dropdown-toggle more-horizontal" type="button"
                                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="text-muted sr-only">Action</span>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Edit</a>
                                                <a class="dropdown-item" href="#">Remove</a>
                                                <a class="dropdown-item" href="#">Assign</a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- .row -->
            </div>
            <!-- .container-fluid -->
            <div class="modal fade modal-notif modal-slide" tabindex="-1"
                 role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="defaultModalLabel">Notifications</h5>
                            <button type="button" class="close" data-dismiss="modal"
                                    aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="list-group list-group-flush my-n3">
                                <div class="list-group-item bg-transparent">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <span class="fe fe-box fe-24"></span>
                                        </div>
                                        <div class="col">
                                            <small><strong>Package has uploaded
                                                successfull</strong></small>
                                            <div class="my-0 text-muted small">Package is zipped
                                                and uploaded
                                            </div>
                                            <small class="badge badge-pill badge-light text-muted">1m
                                                ago</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-item bg-transparent">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <span class="fe fe-download fe-24"></span>
                                        </div>
                                        <div class="col">
                                            <small><strong>Widgets are updated
                                                successfull</strong></small>
                                            <div class="my-0 text-muted small">Just create new
                                                layout Index, form, table
                                            </div>
                                            <small class="badge badge-pill badge-light text-muted">2m
                                                ago</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-item bg-transparent">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <span class="fe fe-inbox fe-24"></span>
                                        </div>
                                        <div class="col">
                                            <small><strong>Notifications have been sent</strong></small>
                                            <div class="my-0 text-muted small">Fusce dapibus,
                                                tellus ac cursus commodo
                                            </div>
                                            <small class="badge badge-pill badge-light text-muted">30m
                                                ago</small>
                                        </div>
                                    </div>
                                    <!-- / .row -->
                                </div>
                                <div class="list-group-item bg-transparent">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <span class="fe fe-link fe-24"></span>
                                        </div>
                                        <div class="col">
                                            <small><strong>Link was attached to menu</strong></small>
                                            <div class="my-0 text-muted small">New layout has been
                                                attached to the menu
                                            </div>
                                            <small class="badge badge-pill badge-light text-muted">1h
                                                ago</small>
                                        </div>
                                    </div>
                                </div>
                                <!-- / .row -->
                            </div>
                            <!-- / .list-group -->
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-block"
                                    data-dismiss="modal">Clear All
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade modal-shortcut modal-slide" tabindex="-1"
                 role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="defaultModalLabel">Shortcuts</h5>
                            <button type="button" class="close" data-dismiss="modal"
                                    aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body px-5">
                            <div class="row align-items-center">
                                <div class="col-6 text-center">
                                    <div class="squircle bg-success justify-content-center">
                                        <i class="fe fe-cpu fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Control area</p>
                                </div>
                                <div class="col-6 text-center">
                                    <div class="squircle bg-primary justify-content-center">
                                        <i class="fe fe-activity fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Activity</p>
                                </div>
                            </div>
                            <div class="row align-items-center">
                                <div class="col-6 text-center">
                                    <div class="squircle bg-primary justify-content-center">
                                        <i class="fe fe-droplet fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Droplet</p>
                                </div>
                                <div class="col-6 text-center">
                                    <div class="squircle bg-primary justify-content-center">
                                        <i
                                                class="fe fe-upload-cloud fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Upload</p>
                                </div>
                            </div>
                            <div class="row align-items-center">
                                <div class="col-6 text-center">
                                    <div class="squircle bg-primary justify-content-center">
                                        <i class="fe fe-users fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Users</p>
                                </div>
                                <div class="col-6 text-center">
                                    <div class="squircle bg-primary justify-content-center">
                                        <i class="fe fe-settings fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Settings</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
<!-- ======= Modals ======= -->
<jsp:include page="/WEB-INF/views/admin/include/modals.jsp"/>
<!-- End Footer -->
<!-- ======= Footer ======= -->
<jsp:include page="/WEB-INF/views/admin/include/common-js.jsp"/>
<!-- End Footer -->
</body>
</html>