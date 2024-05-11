<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/storybook_01.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:56 GMT -->
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
            <h1>말하는 동화책</h1>
            <span class="btnSide"><a href="#">좌측메뉴 펼침</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--밀크TV 전체//-->
            <div class="storyWrap">
                <!--탭//-->
                <div class="storyTab">
                    <ul>
                        <li class="on"><a href="#">전체</a></li>
                        <li><a href="#">3학년</a></li>
                        <li><a href="#">4학년</a></li>
						<li><a href="#">5학년</a></li>
						<li><a href="#">6학년</a></li>
                    </ul>
                </div>
                <!--//탭-->
				<!--카테고리 정렬 버튼//-->
                <script>
                $(function () {
                    $(".list_tv_cnt").hide();
                    $(".list_tv_cnt:first").show();
                    $(".btn_list_align li").click(function () {
                        $(".btn_list_align li").removeClass("on");
                        $(this).addClass("on");
                        $(".list_tv_cnt").hide()
                        var onTab = $(this).attr("rel");
                        $("#" + onTab).fadeIn()
                    });
                    // 카테고리 마지막 버튼 클릭시 스크롤 왼쪽으로
                    $(".sub_last").click(function () {
                       var offset = $('.sub_last').offset();
                        $('.btn_list_align').animate({scrollLeft : offset.left}, 600);
                    });
                });
                </script>
                <!--//카테고리 정렬 버튼-->
                <!--밀크T-tv//-->
                <div class="storyCnt">
                    <!--카테고리 정렬 버튼//-->
                    <!-- <script>
                    $(document).ready(function(){
                            //순차재생 버튼 토글
                            $(".btn_list_align").click(function(){
                            $("span").toggleClass("on");
                        });
                    });
                    </script>
                    <div class="btn_list_align"> 
                        <span class="all on"><a href="#">순차재생</a></span>
                    </div> -->
                    <!--//카테고리 정렬 버튼-->
                    <!--TV 리스트//-->
                    <div class="list_tv_cnt">
                        <ul>
                            <li>
                                <a href="#">
                                    <dl>
                                        <dt>
                                            <p class="mov_box">
                                                <span>00:00:00</span>
                                            </p>
                                        </dt>
                                        <dd>
                                            <p class="sub_title"><span class="txt_type">1학년</span><span>명작동화</span></p>
                                            <p class="title">고려, 새로운 시대를 열다. 1부 타이틀두줄 이상일때 </p>
                                        </dd>
                                    </dl>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <dl>
                                        <dt>
                                            <p class="mov_box">
                                                <span>00:00:00</span>
                                            </p>
                                        </dt>
                                        <dd>
                                            <p class="sub_title"><span class="txt_type">2학년</span><span>전래동화</span></p>
                                            <p class="title">고려, 새로운 시대를 열다 </p>
                                        </dd>
                                    </dl>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <dl>
                                        <dt>
                                            <p class="mov_box">
                                                <span>00:00:00</span>
                                            </p>
                                        </dt>
                                        <dd>
                                            <p class="sub_title"><span class="txt_type">3학년</span><span>위인동화</span></p>
                                            <p class="title">고려, 새로운 시대를 열다. 1부 타이틀두줄 이상일때 </p>
                                        </dd>
                                    </dl>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <dl>
                                        <dt>
                                            <p class="mov_box">
                                                <span>00:00:00</span>
                                            </p>
                                        </dt>
                                        <dd>
                                            <p class="sub_title"><span class="txt_type">4학년</span><span>창작동화</span></p>
                                            <p class="title">고려, 새로운 시대를 열다. 1부 타이틀두줄 이상일때 </p>
                                        </dd>
                                    </dl>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <dl>
                                        <dt>
                                            <p class="mov_box">
                                                <span>00:00:00</span>
                                            </p>
                                        </dt>
                                        <dd>
                                            <p class="sub_title"><span class="txt_type">오디오북</span><span>1학년</span><span>명작동화</span></p>
                                            <p class="title">고려, 새로운 시대를 열다. 1부 타이틀두줄 이상일때 </p>
                                        </dd>
                                    </dl>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <dl>
                                        <dt>
                                            <p class="mov_box">
                                                <span>00:00:00</span>
                                            </p>
                                        </dt>
                                        <dd>
                                            <p class="sub_title"><span class="txt_type">2학년</span><span>전래동화</span></p>
                                            <p class="title">고려, 새로운 시대를 열다 </p>
                                        </dd>
                                    </dl>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!--TV 리스트//-->
                </div>
                <!--//밀크T-tv-->
            </div>
            <!--//밀크TV 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/storybook_01.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:56 GMT -->
</html>
