<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/foodinfo_02.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:33 GMT -->
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
            <h1>학교급식</h1>
             <span class="btnSide"><a href="#">좌측메뉴 펼침</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--학교급식 전체//-->
            <div class="foodWrap">
                <!--검색//-->
                <div class="searchBox">
                    <input class="focusLine" type="text" id="iname" name="iname"  placeholder="학교명으로 식단을 검색해보세요." />
                    <!--검색결과 레이어//-->
                    <ul class="searchResult" style="display:none;">
                        <li><span>경남</span><p>김해<strong>삼성</strong>초등학교</p><button class="">학교등록</button></li>
                        <li><span>서울</span><p><strong>삼성</strong>고등학교</p><button class="">학교등록</button></li>
                        <li><span>서울</span><p><strong>삼성</strong>여자고등학교</p><button class="">학교등록</button></li>
                        <li><span>충북</span><p><strong>삼성</strong>중학교</p><button class="on">학교등록</button></li>
                         <li><span>서울</span><p><strong>삼성</strong>여자고등학교</p><button class="">학교등록</button></li>
                        <li><span>충북</span><p><strong>삼성</strong>중학교</p><button class="on">학교등록</button></li>
                         <li><span>서울</span><p><strong>삼성</strong>여자고등학교</p><button class="">학교등록</button></li>
                        <li><span>충북</span><p><strong>삼성</strong>중학교</p><button class="on">학교등록</button></li>
                         <li><span>서울</span><p><strong>삼성</strong>여자고등학교</p><button class="">학교등록</button></li>
                        <li><span>충북</span><p><strong>삼성</strong>중학교</p><button class="on">학교등록</button></li>
                         <li><span>서울</span><p><strong>삼성</strong>여자고등학교</p><button class="">학교등록</button></li>
                        <li><span>충북</span><p><strong>삼성</strong>중학교</p><button class="on">학교등록</button></li>
                    </ul>
                    <!--//검색결과 레이어-->
                    <script>
                        $(document).ready(function() { 
                            $('.searchBox input').click(function() {
                                $(".searchResult").css("display", "block");
                            });
                            $(document).click(function(e){
                                if (!$(e.target).is('.searchBox input')) {
                                $('.searchResult').css("display", "none");
                                }
                            });
                          }); 
                    </script>
                    <!--내가 등록한 학교 리스트//-->
                    <div class="mySchool">
                        <h3>내가 등록한 학교 <u>3개</u></h3>
                        <ul>
                            <li><a href="#"><span>서울</span>삼성고등학교</a><button class="">삭제</button></li>
                            <li><a href="#"><span>경남</span>삼성고등학교</a><button class="">삭제</button></li>
                            <li><a href="#"><span>서울</span>삼성고등학교</a><button class="">삭제</button></li>
                        </ul>
                    </div>
                    <!--//내가 등록한 학교 리스트-->
                </div>
                <!--//검색-->
            </div>
            <!--//학교급식 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/foodinfo_02.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:33 GMT -->
</html>
