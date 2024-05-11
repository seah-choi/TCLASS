<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/tclass_shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:21:05 GMT -->
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
            <h1>T CLASS 쇼핑</h1>
             <span class="btnSide"><a href="#">좌측메뉴 펼침</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--쇼핑 전체//-->
            <div class="shopWrap">
                <!--배너영역//-->
                <div class="shopBnr">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/shop_bnr_01.jpg" alt="" /></div>
                            <div class="swiper-slide"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/shop_bnr_02.jpg" alt="" /></div>
                            <div class="swiper-slide"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/shop_bnr_03.jpg" alt="" /></div>
                            <div class="swiper-slide"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/shop_bnr_04.jpg" alt="" /></div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                    <script>
                    var swiper = new Swiper('.swiper-container', {
                        //effect : 'fade',
                        spaceBetween: 0,
                        centeredSlides: true,
                        loop: true,
                        autoplay: {
                        delay: 2500,
                        disableOnInteraction: false,
                        },
                        pagination: {
                        el: '.swiper-pagination',
                        clickable: true,
                        },
                       
                    });
                    </script>
                  
                </div>
                <!--//배너영역-->
                <!--상품리스트//-->
                <div class="itemList">
                    <h3>인기 상품</h3>
                    <ul>
                        <li>
                            <a href="https://mall.tsherpa.co.kr/" target="_blank">
                                <p class="img"><img src="../../../mall.tsherpa.co.kr/data/chunjae_data/images/product/00/00/12/48/69/ms_0000124869.gif" alt="" /></p>
                                <p class="txt"><strong>[학급운영]</strong>슈퍼쌤 영어칠판자석 시리즈3.Day and Date(교사용) 최대 3줄이지만 대부분 2줄에서 끝..</p>
                            </a>
                        </li>
                        <li>
                            <a href="https://mall.tsherpa.co.kr/" target="_blank">
                                <p class="img"><img src="../../../mall.tsherpa.co.kr/data/chunjae_data/images/product/00/00/04/42/54/ms_0000044254.gif" alt="" /></p>
                                <p class="txt"><strong>[학급운영]</strong>슈퍼쌤</p>
                            </a>
                        </li>
                        <li>
                            <a href="https://mall.tsherpa.co.kr/" target="_blank">
                                <p class="img"><img src="../../../mall.tsherpa.co.kr/data/chunjae_data/images/product/00/00/12/48/69/ms_0000124869.gif" alt="" /></p>
                                <p class="txt"><strong>[학급운영]</strong>슈퍼쌤 영어칠판자석 시리즈3.Day and Date) </p>
                            </a>
                        </li>
                        <li>
                            <a href="https://mall.tsherpa.co.kr/" target="_blank">
                                <p class="img"><img src="../../../mall.tsherpa.co.kr/data/chunjae_data/images/product/00/00/10/23/24/ms_0000102324.gif" alt="" /></p>
                                <p class="txt"><strong>[학급운영]</strong>3.Day </p>
                            </a>
                        </li>
                        <li>
                            <a href="https://mall.tsherpa.co.kr/" target="_blank">
                                <p class="img"><img src="../../../mall.tsherpa.co.kr/data/chunjae_data/images/product/00/00/10/23/24/ms_0000102324.gif" alt="" /></p>
                                <p class="txt"><strong>[학급운영]</strong>코드 길어 생략합니다. 목록 20개 이후 더보기 버튼 활성화</p>
                            </a>
                        </li>
                        <li>
                            <a href="https://mall.tsherpa.co.kr/" target="_blank">
                                <p class="img"><img src="../../../mall.tsherpa.co.kr/data/chunjae_data/images/product/00/00/10/23/24/ms_0000102324.gif" alt="" /></p>
                                <p class="txt"><strong>[학급운영]</strong>코드 길어 생략합니다. 목록 20개 이후 더보기 버튼 활성화</p>
                            </a>
                        </li>
                        <li>
                            <a href="https://mall.tsherpa.co.kr/" target="_blank">
                                <p class="img"><img src="../../../mall.tsherpa.co.kr/data/chunjae_data/images/product/00/00/10/23/24/ms_0000102324.gif" alt="" /></p>
                                <p class="txt"><strong>[학급운영]</strong>코드 길어 생략합니다. 목록 20개 이후 더보기 버튼 활성화</p>
                            </a>
                        </li>
                    </ul>
                    <button class="btnMore mt_25">더보기</button>
                </div>
                <!--//상품리스트-->
            </div>
            <!--//쇼핑 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/tclass_shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:06 GMT -->
</html>
