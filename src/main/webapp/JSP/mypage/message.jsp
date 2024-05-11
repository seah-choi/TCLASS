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


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/message.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta name="format-detection" content="telephone=no, address=no" />
    <title>T 클래스</title>
    <script src="/TCLASS/JSP/include/js/jquery-3.4.1.min.js"></script>
    <script src="/TCLASS/JSP/include/js/ui.js"></script>
    <script src="/TCLASS/JSP/include/js/chart.js"></script>
    <script src="/TCLASS/JSP/include/js/swiper.js"></script>
    <script src="/TCLASS/JSP/include/js/aos.js"></script>
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
            <div class="msgWrap bookclub"> <!-- 2022-03-07 변경: 학생별 클래스명 추가 초:ele / 중:mid / 고:high / 북클럽:bookclub-->
                <!--학생 선택//-->
                <div class="childStatus">
                    <!-- <p class="photo"><img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" /></p> -->
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
                        <li class="on"><a href="/TCLASS/mypage/message.do?types=receive" target="_self">받은 쪽지함</a></li>
                        <li><a href="/TCLASS/mypage/message.do?types=send" target="_self">보낸 쪽지함</a></li>
                    </ul>
                    <!--//쪽지탭-->
                    <!--쪽지 리스트//-->
                    <form id="frm" name="frm">
                    <ul class="msgList">
                        <li class="status">
                            <input type="checkbox"  id="${list.no }" name="checkbox"  />
                            <label for="${list.no }"><span></span>선택</label>
                            <button class="btn" id="btn_delete">삭제</button><button class="btn" id="btn_read">읽음</button>
                            <p><strong>${maps.no_count }</strong><span>${maps.total_count }</span></p>
                        </li>
                        <c:choose>
                        	<c:when test="${not empty MsgList }">
                        		<c:forEach var="list" items="${MsgList }" varStatus="loop">
                        			<c:if test="${list.readState eq 'N' }">
			                        <li class="noRead">
			                            <input type="checkbox"  id="${list.no }" name="checkbox" value="${list.no }"/>
			                            <label for="${list.no }"><span></span>선택</label>
			                            <a href="/TCLASS/mypage/message_04.do?types=receive&no=${list.no }" target="_self">
			                                <p class="name">${list.sendName }</p>
			                                <span class="title">${list.title }<u class="file">첨부파일</u></span>
			                                <span class="date">${list.reg_date}</span>
			                            </a>
			                        </li> 
			                        </c:if>
			                        <c:if test="${list.readState eq 'Y'}">
				                        <li>
				                            <input type="checkbox"  id="${list.no }" name="checkbox" value="${list.no }"/>
				                            <label for="${list.no }"><span></span>선택</label>
				                            <a href="/TCLASS/mypage/message_04.do?types=receive&no=${list.no }" target="_self">
				                                <p class="name">${list.sendName }</p>
				                                <span class="title">${list.title }<u class="file">첨부파일</u></span>
				                                <span class="date">${list.reg_date}</span>
				                            </a>
				                        </li>			                        	
			                        </c:if> 		
                        		</c:forEach>
                        	</c:when>
                        	<c:otherwise>
                        		<li>
                        			<span class="title">받은 쪽지가 없습니다.</span>
                        		</li>
                        	</c:otherwise>
                        </c:choose>
                    </ul>
                    </form>
                    <button class="btnMore">더보기</button>
                    <!--//쪽지 리스트-->


                </div>
                <!--//쪽지 컨텐츠 박스-->
            </div>
            <!--//쪽지 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
<script>
	//쪽지 삭제
	document.querySelector("#btn_delete").addEventListener("click", function(e) {
		confirm("쪽지를 삭제하시겠습니까?");
		let frm = document.querySelector("#frm");
		frm.action = "/TCLASS/mypage/delete.do";
		frm.submit();
	});
	
	//읽음 처리
	document.querySelector("#btn_read").addEventListener("click", function(e) {
		let frm = document.querySelector("#frm");
		frm.action = "/TCLASS/mypage/messageRead.do";
		frm.submit();
	});
</script>
</body>

</html>
