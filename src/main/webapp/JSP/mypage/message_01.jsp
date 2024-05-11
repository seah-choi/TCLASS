<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/message_01.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta name="format-detection" content="telephone=no, address=no" />
    <title>T 클래스</title>
    <script src="../include/js/jquery-3.4.1.min.js"></script>
    <script src="../include/js/ui.js"></script>
    <script src="../include/js/chart.js"></script>
    <script src="../include/js/swiper.js"></script>
    <script src="../include/js/aos.js"></script>
    <link rel="stylesheet" type="text/css" href="../include/css/common.css" />
    <link href="../include/css/aos.css" rel="stylesheet">
</head>
<body>
    <!--웹영역 전체//-->
    <div id="wrap" class="wrap">
        <!--해더영역//-->
        <div id="header">
            <h1>쪽지</h1>
            <span class="btnBack"><a href="#">뒤로가기</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--쪽지 전체//-->
            <div class="msgWrap ele"> <!-- 학생별 클래스명 추가 초:ele / 중:mid / 고:high -->
                <!--학생 선택//-->
                <div class="childStatus">
                  <div class="profileWrap">
                    <p class="photo">
                      <img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" />
                      <span></span>
                    </p>
                  </div>
                    <select>
                        <option value=""  selected="selected">김밀크</option>
                        <option value="01">김밀코</option>
                        <option value="02">김말이</option>
                    </select>
                    <span class="btnWrite"><a href="message_02.html">쪽지쓰기</a></span>
                </div>
                <!--//학생 선택-->
                <!--쪽지 컨텐츠 박스//-->
                <div class="msgBox">
                    <!--쪽지 상세//-->
                    <ul class="msgView">
                        <li class="title">선생님 질문이 있어요</li>
                        <li>
                            <p><span>보낸 사람</span>김밀크</p>
                            <p><span>받은 시간</span>2019-11-20 11:06</p>
                        </li>
                        <li class="fileList">
                            <a href="#"><u class="file">첨부파일.jpg</u></a>
                        </li>
                        <script >
                        //itxtArea 영역 반응형 리사이징
                        $(document).ready(function(){
                            $(window).resize(resizeContents);
                            resizeContents();
                        });
                        function resizeContents() {
                            $(".itxtArea").height($(window).height()-325);//
                        }
                        </script>
                        <li class="itxtArea">
                            선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요<br>
                            선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                            질문이 있어서 쪽지 보내요선생님 안녕하세요<br>
                        </li>
                    </ul>
                    <!--//쪽지 상세-->


                </div>
                <!--//쪽지 컨텐츠 박스-->
            </div>
            <!--//쪽지 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/message_01.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
</html>
