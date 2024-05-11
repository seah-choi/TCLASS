<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/main/index_logout.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:14:49 GMT -->
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
    <style>
    	#login {
    		text-align: center;
		    margin-top: 11px;
		    font-weight: bold;
    	}
    </style>
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
                <!--미 로그인 시//-->
                <div class="userStatus_02">
                    <p class="photo"><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_noimg.png" alt="" /></p>
                    <a href="/TCLASS/member/login.do" target="_self"><p id="login">로그인</p></a>
                </div>
                <div class="menuStyle_03">
                    <h3>메뉴</h3>
                    <ul>
                        <li class="ico_tv"><a href="/TCLASS/member/login.do" target="_self"><span>&nbsp;&nbsp;&nbsp;쪽지</span></a></li>
                        <li class="ico_game"><a href="/TCLASS/member/login.do" target="_self"><span>1:1 게시판</span></a></li>
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
                    <div class="swiper-wrapper">
                        <!--왼쪽 학부모 컨텐츠메뉴//-->
                        <div class="swiper-slide leftWrap">
                            <h3><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main_top_left.png" alt="엄마를 위한 알찬 정보만 모아둔 밀크T 특별 콘텐츠!"></h3>
                            <ul>
                                <li><a href="#">교육정보</a></li>
                                <li><a href="#">밀크T 정보</a></li>
                                <li><a href="#">학교급식</a></li>
                                <li><a href="#">학교알림장</a></li>
                                <li><a href="#">오디오북</a></li>
                                <li><a href="#">쇼핑몰</a></li>
                                <li><a href="#">메디컬 콘서트</a></li>
                                <li><a href="#">학원추천</a></li>
                                <li><a href="#">AI평가</a></li>
                            </ul>
                        </div>
                        <!--//왼쪽 학부모 컨텐츠메뉴-->

                        <!--메인 비쥬얼 영역//-->
                        <div class="swiper-slide">
                            <!-- <p style="width:86%;border:2px solid red;padding:200px 0;text-align:center;margin:0 auto;background:#fafafa">
                                로그인X > 홍보페이지
                            </p> -->
                            <div class="logout_page">
                                <p><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/logout_page/img_cnt_01_v3.jpg" alt="">
                                    <span class="swiper-button-prev"><a href="#">prev</a></span>
                                    <span class="swiper-button-next"><a href="#">next</a></span>
                                </p>
                                <p>
                                <img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/logout_page/img_cnt_02_v2.jpg" alt="">
                                <span class="firstSpoonLink">
                                    <a href="#" alt="교육정보"></a>
                                    <a href="#" alt="뷰티앤헬스"></a>
                                    <a href="#" alt="대입정보"></a>
                                    <a href="#" alt="학교알림장"></a>
                                </span>
                                </p>
                                <p>
                                <img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/logout_page/img_cnt_03_v2.jpg" alt="">
                                <span class="secondSpoonLink">
                                    <a href="#" alt="밀크TV"></a>
                                    <a href="#" alt="밀크게임"></a>
                                    <a href="#" alt="AI평가"></a>
                                    <a href="#" alt="말하는동화책"></a>
                                    <a href="#" alt="AI받아쓰기"></a>
                                    <a href="#" alt="밀크T맛보기"></a>
                                </span>
                                </p>
                                <p><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/logout_page/img_cnt_04_v2.jpg" alt=""></p>
                                <p>
                                <a href="../event/2020/0409/index.html" alt="밀크T 미리보기"><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/logout_page/img_cnt_bnr_v2.jpg" alt=""></a>
                                </p>
                                <p>
                                <a href="https://tclass.milkt.co.kr/Views/TJOB/MilkTInfo/MilkT_InfoDetail.aspx?pg=1&amp;inCode=13" alt="온라인 개학 대비 홈스쿨링 제공 자세히 보기"><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/logout_page/bnr_homeschool.jpg" alt=""></a>
                                </p>
                                <p>
                                <a href="javascript:;"><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/logout_page/bnr_AIchatbot.jpg" alt="AI챗봇 엘리와 대화하기"></a>
                                </p>
                                <p>
                                <img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/logout_page/img_cnt_05_v2.jpg" alt="">
                                <a href="#" class="btn_start" alt="시작하기"></a>
                                </p>
                            </div>
                        </div>
                        <!--//메인 비쥬얼 영역-->





                        <!--우측 학생 컨텐츠//-->
                        <div class="swiper-slide rightWrap">
                            <h3><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/main_top_right.png" alt="아이를 위한 즐겁고 재미있는 밀크T 특별 콘텐츠!"></h3>
                            <ul>
                                <li><a href="#">밀크TV<span>영상으로 더 즐거운 학습</span></a></li>
                                <li><a href="#">밀크게임<span>게임으로 더 쉽고 재미있게</span></a></li>
                            </ul>
                        </div>
                        <!--//우측 학생 컨텐츠-->
                    </div>
                </div>
                <script>
                //스와이프 영역
                var swiper = new Swiper('.swiper-container-main', {
                    //effect : 'fade',
                    autoHeight : true,
                    spaceBetween:0,
                    centeredSlides: false,
                    initialSlide:1,
                    loop: false,
                    navigation: {
                        prevEl: '.swiper-button-prev',
                        nextEl: '.swiper-button-next',
                    },
                });
                </script>



            </div>
            <!--//메인 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/main/index_logout.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:16:19 GMT -->
</html>
