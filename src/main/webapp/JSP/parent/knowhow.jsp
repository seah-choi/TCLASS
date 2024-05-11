<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/knowhow.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:33 GMT -->
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
            <h1>학습 노하우</h1>
            <span class="btnSide"><a href="javascript:;">좌측메뉴 펼침</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--학습 노하우 전체//-->
            <div class="knowhowWrap">
                <div class="titBox">
                    <h2>종합반 학생들의 성적향상노하우</h2>
                    <p>밀크T중학 자녀의 성적향상노하우를 공유합니다.</p>
                </div>
                <!--리스트//-->
                <div class="knowhowBox">
                    <ul class="knowhowList">
                        <!-- 2023-03-23 수정 -->
                        <li>
                            <a href="knowhow_01.html"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/knowhow_list_01.jpg" alt="성적향상노하우"></a>
                            <button class="like on">좋아요</button>
                        </li>
                        <li>
                            <a href="javascript:;"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/knowhow_list_02.jpg" alt="성적향상노하우"></a>
                            <button class="like">좋아요</button>
                        </li>
                        <li>
                            <a href="javascript:;"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/knowhow_list_03.jpg" alt="성적향상노하우"></a>
                            <button class="like">좋아요</button>
                        </li>
                        <!-- 더보기 클릭 시 노출
                        <li>
                            <a href="javascript:;"><img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/knowhow_list_04.jpg" alt="성적향상노하우"></a>
                            <button class="like">좋아요</button>
                        </li>
                        <li>
                            <a href="javascript:;"><img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/knowhow_list_05.jpg" alt="성적향상노하우"></a>
                            <button class="like">좋아요</button>
                        </li>
                        <li>
                            <a href="javascript:;"><img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/knowhow_list_06.jpg" alt="성적향상노하우"></a>
                            <button class="like">좋아요</button>
                        </li>
                        <li>
                            <a href="javascript:;"><img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/knowhow_list_07.jpg" alt="성적향상노하우"></a>
                            <button class="like">좋아요</button>
                        </li>
                        <li>
                            <a href="javascript:;"><img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/knowhow_list_08.jpg" alt="성적향상노하우"></a>
                            <button class="like">좋아요</button>
                        </li> -->
                        <!-- // 2023-03-23 수정 -->
                    </ul>
                    <button class="btnMore">더보기</button>
                </div>
                <!--//리스트-->
            </div>
            <!--//밀크T 정보 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>
<script>
    $('.like').on('click',function(){
        $(this).toggleClass('on')
    })
</script>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/knowhow.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:56 GMT -->
</html>
