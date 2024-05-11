<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/foodinfo_03.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:33 GMT -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta name="format-detection" content="telephone=no, address=no" />
    <title>T 클래스</title>
    <script src="../../include/js/jquery-3.4.1.min.js"></script>
    <script src="../../include/js/ui.js"></script>
    <script src="../../include/js/chart.js"></script>
    <script src="../../include/js/swiper.js"></script>
    <script src="../../include/js/aos.js"></script>
    <link rel="stylesheet" type="text/css" href="../../include/css/common.css" />
    <link href="../../include/css/aos.css" rel="stylesheet">
</head>
<body>
    <!--웹영역 전체//-->
    <div id="wrap" class="wrap">
        <!--해더영역//-->
        <div id="header">
            <h1>학교급식 상세</h1>
             <span class="btnBack"><a href="#">뒤로가기</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--학교급식 전체//-->
            <div class="foodWrap">
                <div class="viewBox">
                    <p class="schoolName">밀크초등학교</p>
                    <!--날짜(일)선택//-->
                    <p class="month">
                        <span>
                            <a href="#" class="beforeBtn">이전 월</a>
                            2019.06
                            <a href="#" class="afterBtn">다음 월</a>
                        </span>
                        <u></u>
                    </p>
                    <div class="daySwiper swiper-container">
                        <ul class="swiper-wrapper">
                            <li class="swiper-slide"><a href="#none">1<span>목</span></a></li>
                            <li class="swiper-slide"><a href="#none">2<span>금</span></a></li>
                            <li class="swiper-slide"><a href="#none">3<span>토</span></a></li>
                            <li class="swiper-slide"><a href="#none">4<span>일</span></a></li>
                            <li class="swiper-slide"><a href="#none">5<span>월</span></a></li>
                            <li class="swiper-slide"><a href="#none">6<span>화</span></a></li>
                            <li class="swiper-slide"><a href="#none">7<span>수</span></a></li>
                            <li class="swiper-slide"><a href="#none">8<span>목</span></a></li>
                            <li class="swiper-slide"><a href="#none">9<span>금</span></a></li>
                            <li class="swiper-slide"><a href="#none">10<span>토</span></a></li>
                            <li class="swiper-slide"><a href="#none">11<span>일</span></a></li>
                            <li class="swiper-slide"><a href="#none">12<span>월</span></a></li>
                            <li class="swiper-slide"><a href="#none">13<span>화</span></a></li>
                            <li class="swiper-slide"><a href="#none">14<span>수</span></a></li>
                            <li class="swiper-slide"><a href="#none">15<span>목</span></a></li>
                            <li class="swiper-slide on"><a href="#none">16<span>금</span></a></li>
                            <li class="swiper-slide"><a href="#none">17<span>토</span></a></li>
                            <li class="swiper-slide"><a href="#none">18<span>일</span></a></li>
                            <li class="swiper-slide"><a href="#none">19<span>월</span></a></li>
                            <li class="swiper-slide"><a href="#none">20<span>화</span></a></li>
                            <li class="swiper-slide"><a href="#none">21<span>수</span></a></li>
                            <li class="swiper-slide"><a href="#none">22<span>목</span></a></li>
                            <li class="swiper-slide"><a href="#none">23<span>금</span></a></li>
                            <li class="swiper-slide"><a href="#none">24<span>토</span></a></li>
                            <li class="swiper-slide"><a href="#none">25<span>일</span></a></li>
                            <li class="swiper-slide"><a href="#none">26<span>월</span></a></li>
                            <li class="swiper-slide"><a href="#none">27<span>화</span></a></li>
                            <li class="swiper-slide"><a href="#none">28<span>수</span></a></li>
                            <li class="swiper-slide"><a href="#none">29<span>목</span></a></li>
                            <li class="swiper-slide"><a href="#none">30<span>금</span></a></li>
                            <li class="swiper-slide"><a href="#none">31<span>토</span></a></li>
                        </ul>
                    </div>
                    <script>
                        //스와이프 영역
                        var swiper = new Swiper('.swiper-container', {
                            slidesPerView: 5,
                            spaceBetween: 0,
                            grabCursor: true,
                            centeredSlides: false,
                            initialSlide: 13, //1 일이 첫번째 위치일때 0, 2일이 첫번째위치일때 1 , 예를들어 오늘이 5일이면 3일을 맨앞으로두기 위해 2로 수정
                            loop: true,
                        });
                    </script>
                    <!--//날짜(일)선택-->
                    <!--날짜(일)별 급식내용//-->
                    <div class="foodList">
                        [조식]<br>
                        *옥수수밥 , *돼지등뼈감자탕5.6.10. , <br>
                        *배추김치 , 우유2. , 김구이,<br>
                        어묵양념구이1.5.6.10.12.13.16. ,<br>
                        콩나물겨자무침 5.13. , 아이스홍시<br><br>

                        [중식]<br>
                        *옥수수밥 , *돼지등뼈감자탕5.6.10. , <br>
                        *배추김치 , 우유2. , 김구이,<br>
                        어묵양념구이1.5.6.10.12.13.16. ,<br>
                        콩나물겨자무침 5.13. , 아이스홍시<br><br>

                        [석식]<br>
                        *옥수수밥 , *돼지등뼈감자탕5.6.10. , <br>
                        *배추김치 , 우유2. , 김구이,<br>
                        어묵양념구이1.5.6.10.12.13.16. ,<br>
                        콩나물겨자무침 5.13. , 아이스홍시
                    </div>
                    <!--//날짜(일)별 급식내용-->
                 </div>
            </div>
            <!--//학교급식 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/foodinfo_03.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:33 GMT -->
</html>
