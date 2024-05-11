
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="dto.LoginDTO"%>
<%@page import="dao.LoginDAO"%>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/member/edit_myinfo_01.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
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
            <h1>개인정보수정</h1>
            <span class="btnSide"><a href="#">좌측메뉴 펼침</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--개인정보 수정 전체//-->
            <form id="frm" name="frm" action="edit_myinfo_01.do" method="post">
            <div  class="editPageWrap ">
                <div class="myProfile">
                    <p class="myPhoto"><img src="/TCLASS/ext/cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" /></p>
                    <!--<p class="myPhoto"><img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_noimg.png" alt="프로필 미설정" /></p>-->
                    <div class="btnFile">
                        <label for="fileupload">프로필 사진 설정</label>
                        <input type="file" name="pic" id="fileupload" accept="image/*">                        
                    </div>
                    <a href="#" class="btnLogout">회원탈퇴</a><!-- #89500 티스푼 회원탈퇴 버튼 추가 22-08-31 -->
                </div>
                <div class="editPage">
                    <!--아이디및 비밀번호입력//-->
                    <div class="formBox noEdit mt_40"><!--수정불가 noEdit 추가-->
                        <input type="text" class="itxt" id="name" name="name" placeholder="이름" readonly value="${name }" />
                        <label class="title" for="name">이름</label>
                    </div>
                    <div class="formBox noEdit memberChange">
                        <input type="text" class="itxt" id="id" name="id" placeholder="아이디" readonly value="${memberId }"  />
                        <label class="title" for="id">아이디</label>
                    </div>
                   <div class="formBox pwChange" >
                        <input type="password" class="itxt" id="pwd" name="pwd" placeholder="비밀번호 (영문, 숫자, 특수문자 조합 10~16자리)" />
                        <label class="title" for="pwd">비밀번호</label>
<!--                         <button class="btn">변경</button> -->
                        <!-- <span class="txtSub">영문, 숫자, 특수문자 조합 10~16자리</span> -->
                    </div>
                    <div class="formBox" >
                        <input type="password" class="itxt" id="pwd2" name="pwd2" placeholder="비밀번호 재 입력" />
                        <label class="title" for="pwd2">비밀번호 재 입력</label>
                        <!-- <span class="txtSub">비밀번호가 일치하지 않습니다.</span> -->
                    </div>
                    <!--//아이디및 비밀번호입력-->
                    <!--생일 생년월일//-->
                    <div class="formBox birthday noEdit" >
                         <label class="title year" for="year">생년</label>
                         <select class="year" id="year" name="year">
                            <option value="">생년</option>
                            <option readonly selected="selected">${year}</option>
                        </select>
                        <label class="title month" for="month">월</label>
                        <select class="month" id="month" name="month">
                            <option value="" >월</option>
                            <option readonly selected="selected">${month }</option>
                        </select>
                        <label class="title day" for="selectborn3">일</label>
                        <select class="day"  id="day" name="day">
                            <option value="" readonly selected="selected">일</option>
                            <option readonly selected="selected">${day }</option>
                        </select>
                    </div>
                    <!--//생일 생년월일-->
                    <!--성별구분//-->
                    <div class="formBox sexSelect noEdit">
                        <span class="title" >성별</span>
                        <input type="radio"  id="gender_1" name="gender" onclick="return(false);"/><label for="gender_1"><span></span>남자</label>
                        <input type="radio"  id="gender_2" name="gender" onclick="return(false);" /><label for="gender_2"><span></span>여자</label>
                    </div>
                    <!--//성별구분-->
                    <!--휴대폰 인증번호//-->
                    <div class="formBox pNumber_01" >
                        <input type="tel" class="itxt" id="tel" name="tel" placeholder="휴대폰 번호" maxlength="14" value="${tel }" />
                        <label class="title" for="tel">휴대폰 번호</label>
<!--                         <button class="btn">변경</button> -->
                        <!-- <span class="txtSub">휴대폰 번호를 정확하게 입력하세요.</span> -->
                    </div>
                    <div class="formBox pNumber_02" >
                        <input type="text" class="itxt" id="email" name="email" placeholder="이메일 주소"  value="${email }" />
                    	<label class="title" for="email">이메일 주소</label>
<!--                         <button class="btn">변경</button> -->
                        <!-- <span class="txtSub">인증번호가 카카오톡 알림톡으로 발송되었습니다. </span> -->
                    </div>

                    <button class="button blue big mt_40" id="btn_check">확인</button>
                </div>
            </div>
            </form>
            <!--//개인정보 수정  전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
<script>
	document.querySelector("#btn_check").addEventListener("click", function(e) {
		e.preventDefault();
		e.stopPropagation();
		
		//필수사항 미입력시
		let pwd = document.querySelector("#pwd");
		let email = document.querySelector("#email");
		let tel = document.querySelector("#tel");
		
		if(pwd.value.length == "") {
			alert("비밀번호는 필수 입력사항입니다.");
			pwd.focus();
			return false;
		}
		
		if(email.value.length == "") {
			alert("이메일은 필수 입력사항입니다.");
			email.focus();
			return false;
		}
		
		if(tel.value.length == "") {
			alert("전화번호는 필수 입력사항입니다.");
			tel.focus();
			return false;
		}
		
		let frm = document.querySelector("#frm");
		frm.submit();		
	});
</script>
</body>
</html>
