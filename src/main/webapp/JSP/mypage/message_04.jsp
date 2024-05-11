<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="dto.MsgDTO"%>
<%@page import="dao.MsgDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/message_04.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
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
            <span class="btnBack"><a href="#">뒤로가기</a></span>
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
                        <option value=""  selected="selected">${name}</option>
                    </select>
                    <span class="btnWrite"><a href="message_02.html">쪽지쓰기</a></span>
                </div>
                <!--//학생 선택-->
                <!--쪽지 컨텐츠 박스//-->
                <div class="msgBox">
                    <!--쪽지 상세//-->
                    <ul class="msgView">
                        <li class="title">${MsgView.title }</li>
                        <li>
                            <p><span>받은 사람</span>${MsgView.receiveName }</p>
                            <p><span>보낸 시간</span>${MsgView.reg_date }</p>
                            <p><span>받은 시간</span>${MsgView.read_date }</p>
                        </li>
                        <li class="fileList">
                            <a href="#"><u class="file">첨부파일.jpg</u></a>
                        </li>
                        <script >
                        //itxtArea 영역 반응형 리사이징
                        $(document).ready(function(){
                            $(window).resize(resizeContents);
                            resizeContents();
                        });
                        function resizeContents() {
                            $(".itxtArea").height($(window).height()-380);//
                        }
                        </script>
                        <li class="itxtArea">
                            ${MsgView.content }
                        </li>
                    </ul>
                    <!--//쪽지 상세-->


                </div>
                <!--//쪽지 컨텐츠 박스-->
            </div>
            <!--//쪽지 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/message_04.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
</html>
