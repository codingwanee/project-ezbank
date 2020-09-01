<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link href="madecss.css" rel="stylesheet" type="text/css"/>
    <script>

        function btnClick(btnType) {
            switch (btnType) {
                case 'l' :
                    location.href = 'boardList.do?category=${ boardVO.category }';
                    break;
                case 'm' :
                    location.href = 'boardModify.do?category=${ boardVO.category }&no=${ boardVO.no }';
                    break;
                case 'd' :
                    location.href = 'boardDelete.do?category=${ boardVO.category }&no=${ boardVO.no }';
                    break;
            }
        }
        
        function getReplyList() {
        	$.ajax({
        		url : '${ pageContext.request.contextPath }/reply/${ board.no }',
        		type : 'get',
        		success : function(data) {
        			$('#comment-list').empty();
        			
        			let list = JSON.parse(data);
        			
    				$(list).each(function() {
    					// console.log(this)
    					
    					let str='';
    					str += '<hr>';
    					str += '<div>';
    					str += '<strong>' + this.content + '</strong>';
    					str += '(' + this.writer + ')'
    					str += '&nbsp;&nbsp;&nbsp;' + this.regDate +  '&nbsp;&nbsp;&nbsp;'
    					str += '<button class="delBtn" id=' + this.no + ' class="btn btn-comment"> 삭제  </button>'
    					str += '</div>';
    					
    					$('#replyList').append(str);
    				})
        			
        		}
        	})
        }

    </script>
</head>
<body>
<!-- header -->


<div id="HANA_CONTENTS_DIV">

    <!-- ======= Breadcrumbs ======= -->
    <div class="container">
        <h2>정보소통</h2>
        <div class="locate">
            HOME &gt; 고객센터 &gt; 손님의소리 &gt; <strong>
            <c:choose test="">
                <c:when test="${ boardVO.category == 'notice' }">공지사항</c:when>
                <c:when test="${ boardVO.category == 'commu' }">정보소통</c:when>
                <c:when test="${ boardVO.category == 'trans' }">통역사 구인구직</c:when>
            </c:choose>
        </strong>
        </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- ======= article Section ======= -->
    <section>
        <div class="container">
            <div class="article">
                <div class="article-wrap">
                    <div class="article-contentbox">
                        <div class="article-header">
                            <h3 class="article-title">${ boardVO.title }</h3>
                            <span class="regDate">${ boardVO.regDate }</span>
                        </div>

                        <div class="article-container">
                            
                            <div class="contentRenderer">

                                ${ boardVO.content }

                            </div>

                            <div class="comment-box">
                                <div class="comment-title"><h3>댓글</h3></div>
                                <div class="comment-list">
                                    <c:forEach items="${ commentList }" var="comment" varStatus="loop">
                                        <div class="comment-item">
                                            <div class="comment-writer">${ commentVO.writer }</div>
                                            <div class="comment-content">${ commentVO.content }</div>
                                            <div class="comment-info">
                                                <span class="comment-info-date">${ commentVO.regDate }</span>
                                                <a href="#" role="button" class="comment-info-button">답글쓰기</a>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="comment-editor">
                                    <div class="comment-inbox">
                                        <textarea placeholder="댓글을 남겨보세요" rows="1"
                                                  class="comment-inbox-text"></textarea>
                                    </div>
                                    <div class="comment-btn">
                                        <input type="button" onclick="" value="등록" class="comment-submit"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="bottomBtns">
                        <div class="row">
                            <div class="col-md-4">
                                <c:if test="${ userVO.user } == ${ boardVO.writer }">
                                    <button class="btn btn-primary" onclick="btnClick('m')">수 정</button>
                                </c:if>
                            </div>
                            <div class="col-md-4">
                                <button class="btn btn-primary" onclick="btnClick('l')">목 록</button>
                            </div>
                            <div class="col-md-4">
                                <c:if test="${ userVO.user } == ${ boardVO.writer }">
                                    <button class="btn btn-primary" onclick="btnClick('d')">삭 제</button>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- footer -->


</body>
</html>