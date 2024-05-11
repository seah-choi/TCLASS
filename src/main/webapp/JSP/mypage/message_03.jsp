<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="dto.MsgDTO"%>
<%@page import="dao.MsgDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/message_03.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta name="format-detection" content="telephone=no, address=no" />
    <title>T 클래스</title>
    <script src="/TCLASS/JSP/includejs/jquery-3.4.1.min.js"></script>
    <script src="/TCLASS/JSP/includejs/ui.js"></script>
    <script src="/TCLASS/JSP/includejs/chart.js"></script>
    <script src="/TCLASS/JSP/includejs/swiper.js"></script>
    <script src="/TCLASS/JSP/includejs/aos.js"></script>
    <link rel="stylesheet" type="text/css" href="/TCLASS/JSP/include/css/common.css" />
    <link href="/TCLASS/JSP/include/css/aos.css" rel="stylesheet">
</head>
<body>
    <!--웹영역 전체//-->
    <div id="wrap" class="wrap">
        <!--해더영역//-->
        <div id="header">
            <h1>쪽지</h1>
            <span class="btnSide"><a href="#">좌측메뉴 펼침</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--쪽지 전체//-->
            <div class="msgWrap ele"> <!-- 학생별 클래스명 추가 초:ele / 중:mid / 고:high -->
                <!--학생 선택//-->
                <div class="childStatus">
                  <div class="profileWrap">
                    <p class="photo">
                      <img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" />
                      <span></span>
                    </p>
                  </div>
                    <select>
                        <option value=""  selected="selected">${name }</option>
                    </select>
                    <span class="btnWrite02"><a href="/TCLASS/mypage/message_02.do">쪽지쓰기</a></span>
                </div>
                <!--//학생 선택-->
                <!--쪽지 컨텐츠 박스//-->
                <div class="msgBox">
                    <!--쪽지탭//-->
                    <ul class="msgTab">
                        <li><a href="/TCLASS/mypage/message.do?types=receive" target="_self">받은 쪽지함</a></li>
                        <li class="on"><a href="/TCLASS/mypage/message.do?types=send" target="_self">보낸 쪽지함</a></li>
                    </ul>
                    <!--//쪽지탭-->
                    <!--보낸 쪽지 리스트//-->
                    <form id="frm" name="frm">
                    <ul class="msgList">
                        <li class="status">
                            <input type="checkbox"  id="c0" name=""  />
                            <label for="c0"><span></span>선택</label>
                            <button class="btn" id="btn_delete">삭제</button>
                        </li>
                        <c:choose>
                        	<c:when test="${not empty MsgList }">
                        		<c:forEach var="list" items="${MsgList }" varStatus="loop">
                        			<li class="noRead">
			                            <input type="checkbox"  id="${list.no }" name="checkbox" value="${list.no }"/>
			                            <label for="${list.no }"><span></span>선택</label>
			                            <a href="/TCLASS/mypage/message_04.do?types=send&no=${list.no }" target="_self">
			                                <p class="name">${list.sendName }</p>
			                                <span class="title">${list.title }</span><u class="file">첨부파일</u>
			                                <span class="date">${list.reg_date}</span>
			                            </a>
                       				</li>
                        		</c:forEach>
                        	</c:when>
                        	<c:otherwise>
                        		<li>
                        			<span class="title">보낸 쪽지가 없습니다.</span>
                        		</li>
                        	</c:otherwise>
                        </c:choose>
                        
                        
                    </ul>
                    </form>
                    <button class="btnMore">더보기</button>
                    <!--//보낸 쪽지 리스트-->


                </div>
                <!--//쪽지 컨텐츠 박스-->
            </div>
            <!--//쪽지 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<script>
	document.querySelector("#btn_delete").addEventListener("click", function(e) {
		confirm("쪽지를 삭제하시겠습니까?");
		
		let frm = document.querySelector("#frm");
		frm.action = "/TCLASS/mypage/delete.do";
		frm.submit();
	});
</script>
</html>
