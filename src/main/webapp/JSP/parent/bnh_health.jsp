<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/bnh_health.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
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
            <h1>뷰티앤헬스</h1>
            <span class="btnSide"><a href="#">좌측메뉴 펼침</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
          <!--탭//-->
          <div class="bnhTab">
              <ul>
                  <li><a href="bnh_medicine.html">메디컬 콘서트</a></li>
                  <li class="on"><a href="bnh_health.html">건강이 보인다</a></li>
              </ul>
          </div>
          <!--//탭-->

            <!--건강정보 전체//-->
            <div class="milktinfoWrap">
                <!--리스트//-->
                <div class="milktinfoBox">
                    <!--정렬//-->
                    <div class="alignBox">
                        <select id="ss1">
                            <option value=""  selected="selected">전체</option>
                            <option value="01">밀크T초등</option>
                            <option value="01">밀크T중학</option>
                        </select>
                        <select id="ss2">
                            <option value=""  selected="selected">최신순</option>
                            <option value="01">조회순</option>
                        </select>
                    </div>
                    <!--//정렬-->
                    <ul class="boardList">
                        <li>
                            <a href="health_01.html" target="_self">
                                <p class="title_01">성인</p>
                                <span class="title_02">5월 열공이벤트 당첨자</span>
                                <span class="date">2019.08.20</span>
                            </a>
                            <p class="hit">10</p>
                        </li>
                        <li>
                            <a href="health_01.html" target="_self">
                                <p class="title_01">어린이</p>
                                <span class="title_02">5월 열공이벤트 당첨자</span>
                                <span class="date">2019.08.20</span>
                            </a>
                            <p class="hit">24565</p>
                        </li>
                        <li>
                            <a href="health_01.html" target="_self">
                                <p class="title_01">전체</p>
                                <span class="title_02">5월 열공이벤트 당첨자</span>
                                <span class="date">2019.08.20</span>
                            </a>
                            <p class="hit">24565</p>
                        </li>

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

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/bnh_health.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
</html>
