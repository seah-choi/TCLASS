<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="dto.MsgDTO"%>
<%@page import="dao.MsgDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/message_02.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
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
                      <img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" />
                      <span></span>
                    </p>
                  </div>
                    <select>
                        <option value=""  selected="selected">${name }</option>
                    </select>
                    <span class="btnWrite"><a href="TCLASS/mypage/message_02.do">쪽지쓰기</a></span>
                </div>
                <!--//학생 선택-->
                <!--쪽지 컨텐츠 박스//-->
                <form id ="msg_frm" name="msg_frm" action="/TCLASS/mypage/message_02.do" method="post">
                <div class="msgBox">
                    <!--쪽지 쓰기//-->
                    <ul class="msgWrite">
                        <li class="selList">
                            <input type="text" class="itxt" id="receiveId" name="receiveId" placeholder="받는 사람"/>
                        </li>
                        <li class="titleWrite">
                            <input type="text" class="itxt" id="title" name="title" placeholder="제목" />
                            <div class="btnFile">
                                <label for="file">업로드</label>
                                <input type="file" name="file" id="file" accept="image/*">
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
                            $(".itxtArea").height($(window).height()-473);
                        }
                        </script>
                        <li class="itxtArea">
                            <textarea id="content" class="itxtArea" name="content" placeholder="내용 작성"></textarea>
                            <span class="count">(<strong>0</strong>/1000)</span>
                        </li>
                    </ul>
                    <button class="button blue big mt_40" id="btn_regist">보내기</button>
                    <!--//쪽지 쓰기-->


                </div>
                </form>
                <!--//쪽지 컨텐츠 박스-->
            </div>
            <!--//쪽지 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
<script>
document.querySelector("#btn_regist").addEventListener("click", function(e) {
	/* e.preventDefault();
    e.stopPropagation(); */
    
    let receiveId = document.querySelector("#receiveId");
    let title = document.querySelector("#title");
    let content = document.querySelector("#content");
    
/*     if(receiveId.value.length == "") {
		alert("받을 사람을 입력하세요.")
		content.focus();
		return false;
	}
    
    if(title.value.length == "") {
		alert("제목을 입력하세요");
		title.focus();
		return false;
	}

	if(content.value.length == "") {
		alert("내용을 입력하세요.")
		content.focus();
		return false;
	} */
 
    confirm("쪽지를 전송하시겠습니까?");
    alert("전송 완료했습니다.");
    let msg_frm = document.querySelector("#msg_frm");
    msg_frm.submit();
    
});
</script>
</body>

</html>
