<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/notic_page_02.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:33 GMT -->
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
            <h1>학급 추가 하기</h1>
            <span class="btnClose"><a href="#">닫기</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--학교알림장 전체//-->
            <div class="noticpageWrap">
                 <!--검색//-->
                <div class="searchBox">
                    <input class="focusLine" type="text" id="iname" name="iname" value="삼성" placeholder="학교명으로 식단을 검색해보세요." />
                    <!--검색결과 레이어//-->
                    <ul class="searchResult" style="display:block;">
                        <li>
                            <a href="#">
                                <p>김해<strong>삼성</strong>초등학교</p>
                                <span>경기도 과천시 온온사로 10 (중앙동, 삼성초등학교)</span>
                                <button>학교등록</button>
                            </a>
                        </li>
                      <li>
                            <a href="#">
                                <p>김해<strong>삼성</strong>초등학교</p>
                                <span>경기도 과천시 온온사로 10 (중앙동, 삼성초등학교) 더 긴 상세주소상세주소상세주소상세주소상세주소는 자름  </span>
                                <button>학교등록</button>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p>김해<strong>삼성</strong>초등학교</p>
                                <span>경기도 과천시 온온사로 10 (중앙동, 삼성초등학교)</span>
                                <button>학교등록</button>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p>김해<strong>삼성</strong>초등학교</p>
                                <span>경기도 과천시 온온사로 10 (중앙동, 삼성초등학교)</span>
                                <button>학교등록</button>
                            </a>
                        </li>
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
                    <p class="noData">검색된 학교가 없습니다.</p>
                </div>
                <!--//검색-->
            </div>
            <!--//학교알림장 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/notic_page_02.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:33 GMT -->
</html>
