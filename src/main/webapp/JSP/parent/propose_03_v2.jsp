<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/propose_03_v2.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:56 GMT -->
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
            <h1>부모마음제안</h1>
            <span class="btnBack"><a href="#">뒤로가기</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content" class="pb_0">
            <!--1:1게시판 전체//-->
            <div class="oneBoardWrap propose">
                <!--문의 작성//-->
                <div class="boardBox">
                    <ul class="boardWrite">
                        <li class="selList">
                            <select id="ss1">
                                <option value="" disabled="disabled" selected="selected">선택</option>
                                <option value="01">선택1-1</option>
                                <option value="02">선택1-2</option>
                            </select>
                            <select id="ss1">
                                <option value="" disabled="disabled" selected="selected">선택</option>
                                <option value="01">선택2-1</option>
                                <option value="02">선택2-2</option>
                            </select>
                        </li>
                        <li class="selList"><!--2022-03-07 추가-->
							<select id="ss3" class="sw100"><!--2022-03-07 class추가-->
                                <option value="" disabled="disabled" selected="selected">이용 서비스</option>
                                <option value="01">유아</option>
                                <option value="02">초등</option>
                                <option value="03">중학</option>
                                <option value="04">고등</option>
                                <option value="05">북클럽</option>
                            </select>
                        </li>
                        <li class="titleWrite">
                            <input type="text" class="itxt" id="iname" name="iname" placeholder="제목" />
                            <div class="btnFile">
                                <label for="fileupload">업로드</label>
                                <input type="file" name="pic" id="fileupload" accept="image/*">
                            </div>
                        </li>
                        <li class="fileList">
                             <span class="file"><u>첨부파일명이길면자름첨부파일명이길면자름첨부파일명이길면자름.jpg</u><a href="#">삭제</a></span>
                        </li>
                        <script >
                        //itxtArea 영역 반응형 리사이징
                        $(document).ready(function(){
                            $(window).resize(resizeContents);
                            resizeContents();
                        });
                        function resizeContents() {
                            $(".itxtArea").height($(window).height()-500);//
                        }
                        </script>
                        <li class="itxtArea">
                            <textarea id="textzone" class="itxtArea" name="textzone" placeholder="내용 작성"></textarea>
                        </li>
                    </ul>
                    <button class="button blue big mt_20" onclick="">제출하기</button>
                </div>
                <!--//문의 작성-->
                <!--안내//-->
                <div class="boardFooter">
                    <p>
                    . 오류 및 불편사항은 1:1 게시판 또는 고객센터를 이용해 주세요.<br/>
                    . 제출하신 제안은 ‘내가 제출한 제안’에서 확인하실 수 있습니다.<br/>
                    . 개선 제안은 ‘부모마음제안’ 공지사항을 통해 공유 드리겠습니다.
                    <p>
                    <ul>
                        <li><strong>초등 고객센터</strong><span>1577-1533</span></li>
                        <li><strong>중고등 고객센터</strong><span>1522-5533</span></li>
                    </ul>
                </div>
                <!--//안내-->
            </div>
            <!--//1:1게시판 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/propose_03_v2.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:56 GMT -->
</html>
