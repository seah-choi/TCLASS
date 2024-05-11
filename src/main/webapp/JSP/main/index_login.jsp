
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="dto.LoginDTO"%>
<%@page import="dao.LoginDAO"%>

<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/main/index_login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:16:19 GMT -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta name="format-detection" content="telephone=no, address=no" />
    <title>T 클래스</title>
    <style>
    	#name {
    		text-align: center;
		    margin-top: 11px;
		    font-weight: bold;
    	}
    </style>
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
            <h1>T SPOON</h1>
            <span class="btnSide"><a href="#" onclick="openNav()">전체메뉴 열기</a></span>
        </div>
        <!--//해더영역-->
        <!--전체메뉴//-->
        <div id="mySidenav" class="sidenav" >
            <!--전체메뉴 해더//-->
            <div class="navHeader">
                <span class="closebtn"><a href="javascript:void(0)" onclick="closeNav()">전체메뉴 닫기</a></span>
                <h2>T SPOON</h2>
                <span class="setBtn"><a href="#none" onclick="alert('환경설정 APP');return false;">환경설정</a></span>
            </div>
            <!--//전체메뉴 해더-->
            <!--전체메뉴 컨텐츠//-->
            <div class="navContent">
				<!-- 로그인 상태 -->
                <div class="userStatus">
                    <p class="photo"><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" /></p>
                    <p class="name"><a href="/TCLASS/member/edit_myinfo.do" target="_self">${name }</a></p>
                    <button class="btnLogOut">로그아웃</button>
                </div>
                <div class="menuStyle_03">
                    <h3>메뉴</h3>
                    <ul>
                        <li class="ico_tv"><a href="/TCLASS/mypage/message.do" target="_self"><span>&nbsp;&nbsp;&nbsp;쪽지</span></a></li>
                        <li class="ico_game"><a href="/TCLASS/mypage/oneboard.do" target="_self"><span>1:1 게시판</span></a></li>
                    </ul>
                </div>
            </div>
            <!--//전체메뉴 컨텐츠-->

        </div>
        <!--//전체메뉴-->
        <!--컨텐츠 본문//-->
        <div id="contentMain">
            <!--메인 전체//-->
            <div class="mainWrap">
                <div class="swiper-container-main">

                        <!--메인 비쥬얼 영역//-->
                        <div class="swiper-slide">
                            <!-- <p style="width:86%;border:2px solid red;padding:200px 0;text-align:center;margin:0 auto;background:#fafafa">
                               로그인O > 자녀 없을때 > 홍보페이지
                            </p> -->
                            <div class="login_page">
								<p><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_01.jpg" alt="">
                                    <span class="swiper-button-prev"><a href="#">prev</a></span>
                                    <span class="swiper-button-next"><a href="#">next</a></span>
								</p>
								<p><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_02.jpg" alt=""></p>
								<p><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_03.jpg" alt=""></p>
								<p><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_04.jpg" alt=""></p>
								<p><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_05_v2.jpg" alt=""></p>
								<p>
									<img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_06_v2.jpg" alt="">
									<a href="#" alt="시작하기"></a>
								</p>
                            </div>
                        </div>
                        <!--//메인 비쥬얼 영역-->
                    </div>
                </div>
            </div>
            <!--//메인 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>
<script>
	document.querySelector(".btnLogOut").addEventListener("click", function(e){
		confirm("로그아웃 하시겠습니까?");
		location.href="/TCLASS/main/index_logout.do";
	});
</script>
</html>
