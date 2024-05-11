<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/member/join.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
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
            <h1>가입하기</h1>
            <span class="btnSide"><a href="#">좌측메뉴 펼침</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <form id="join_form" name="join_frm" action="/TCLASS/member/join.do" method="post">
        <div id="content">
            <!--가입하기 전체//-->
            <div  class="joinWrap">
                <h2 style="height: 0;">T SPOON ID로<br/>밀크T 모든 사이트를 모두 이용하실 수 있습니다.</h2>
                <!--아이디및 비밀번호입력//-->
                <!--수정불가한 입력값은 noEdit 클래스추가-->
                <!--<div class="formBox noEdit">
                    <input type="text" class="itxt" id="iname" name="iname" placeholder="이름" disabled="disabled" value="불러온 수정불가 영역표시" />
                    <label class="title" for="iname">이름</label>
                </div>
                -->
                <h3 class="condition">필수 정보</h3>
                <div class="formBox">
                    <input type="text" class="itxt" id="name" name="name" placeholder="이름" />
                    <label class="title" for="name">이름</label>
                    <span class="txtSub">이름을 입력해주세요.</span>
                </div>
                <div class="formBox">
                    <input type="text" class="itxt" id="id" name="id" placeholder="아이디" />
                    <label class="title" for="id">아이디</label>
                    <span class="txtSub">이미 등록된 아이디 입니다.</span>
                </div>
               <div class="formBox" >
                    <input type="password" class="itxt" id="pwd" name="pwd" placeholder="비밀번호 (영문, 숫자, 특수문자 조합 10~16자리)" />
                    <label class="title" for="pwd">비밀번호</label>
                    <span class="txtSub">비밀번호를 정확하게 입력하세요.</span>
                </div>
                <div class="formBox" >
                    <input type="password" class="itxt" id="pwd2" placeholder="비밀번호 재 입력" />
                    <label class="title" for="pwd2">비밀번호 재 입력</label>
                    <span class="txtSub">비밀번호가 일치하지 않습니다.</span>
                </div>
                <!--//아이디및 비밀번호입력-->
                <!--생일 생년월일//-->
                <div class="formBox birthday" >
                     <label class="title year" for="year">생년</label>
                     <select class="year" id="year" name="year">
                        <option value="year" selected="selected">생년</option>
                        <c:forEach begin="1950" end="2000" step="1" var="i">
                        	<option>${i }</option>
                        </c:forEach>
                    </select>
                    <label class="title month" for="month">월</label>
                    <select class="month" id="month" name="month">
                        <option value="month" selected="selected">월</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                    </select>
                    <label class="title day" for="day">일</label>
                    <select class="day"  id="day" name="day">
                        <option value="day" selected="selected">일</option>
                        <c:forEach begin="1" end="30" step="1" var="i">
                        	<option>${i }</option>
                        </c:forEach>
                    </select>
                    <span class="txtSub">만 14세 미만은 회원 가입이 불가합니다.</span>
                </div>
                <!--//생일 생년월일-->
                <!--휴대폰 인증번호//-->
                <div class="formBox pNumber_01" >
                    <input type="tel" class="itxt" id="tel" name="tel" placeholder="휴대폰 번호" maxlength="14" />
                    <label class="title" for="tel">휴대폰 번호</label>
                    <span class="txtSub">휴대폰 번호를 정확하게 입력하세요.</span>
                </div>
                <div class="formBox eMail" >
                    <input type="text" class="itxt" id="email" name="email" placeholder="이메일 주소"  />
                    <label class="title" for="email">이메일 주소</label>
                    <!-- <span class="txt">@</span>
                    <input type="text" class="itxtMail" id="email" placeholder="직접입력"  /> -->
                </div>
               
                <!--관심분야선택
                <div class="formBox atten" >
                    <label class="title" for="atten">관심분야 선택</label>
                    <select id="atten">
                        <option value="" disabled="disabled" selected="selected">관심분야 선택</option>
                        <option value="01">유/초등</option>
                        <option value="02">중/고등</option>
                    </select>
                </div>
                관심분야선택-->
                <!--학년//-->
                <div class="formBox changeid">
                     <label class="title year" for="interest">관심분야</label>
                     <select class="year" id="interest" name="interest">
                        <option value="interest" selected="selected">관심분야 선택</option>
                        <option value="" >유아</option>
                        <option value="" >초등</option>
                        <option value="" >중학</option>
                        <option value="" >고등</option>
                    </select>
                    <label class="title year" for="grade"></label>
                    <select class="year01" id="grade" name="grade">
                        <option value="grade" selected="selected">학년</option>
                        <option>7세 이하</option>
                        <option>1학년</option>
                        <option>2학년</option>
                        <option>3학년</option>
                        <option>4학년</option>
                        <option>5학년</option>
                        <option>6학년</option>
                    </select>
                </div>
                <!--//학년-->
                <h3 class="condition">선택 사항</h3>
                <!--성별구분//-->
                <div class="formBox sexSelect">
                    <span class="title" name="gender">성별</span>
                    <input type="radio"  id="gender_1" name="gender"  /><label for="gender_1"><span></span>남자</label>
                    <input type="radio"  id="gender_2" name="gender" /><label for="gender_2"><span></span>여자</label>
                    <!-- <span class="txtSub">성별을 선택해주세요.</span> -->
                </div>
                <!--//성별구분-->
                <!--이용약관 동의//-->
                <div class="agreeBox ">
                    <dl>
                        <dt>
                            <input type="checkbox"  id="checkall" name=""  />
                            <label for="checkall"><span></span>통합 이용약관, 개인정보수집 및 이용, 위치정보이용약관 (선택), 프로모션  전화 및 SMS 안내수신 (선택), 개인정보 제 3자 제공동의 (선택),에모두 동의 합니다.</label>
                        </dt>
                        <dd>
                            <input type="checkbox"  id="cc1" name=""  />
                            <label for="cc1"><span></span>통합 이용약관 (필수)</label>
                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
                        </dd>
                        <dd>
                            <input type="checkbox"  id="cc2" name=""  />
                            <label for="cc2"><span></span>개인정보 수집·이용 동의 (필수)</label>
                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
                        </dd>
                        <dd>
                            <input type="checkbox"  id="cc3" name=""  />
                            <label for="cc3"><span></span>위치정보 이용약관 (선택)</label>
                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
                        </dd>
                        <dd>
                            <input type="checkbox"  id="cc4" name=""  />
                            <label for="cc4"><span></span>마케팅 활용동의 (선택)</label>
                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
                            <!-- <ul class="moreChk">
                                <li><input type="checkbox" id="agreeEmail" name="agreeEmail"><label for="agreeEmail"><span></span>이메일</label></li>
                                <li><input type="checkbox" id="agreeSms" name="agreeSms"><label for="agreeSms"><span></span>SMS</label></li>
                                <li><input type="checkbox" id="agreePhone" name="agreePhone"><label for="agreePhone"><span></span>전화</label></li>
                            </ul> -->
                        </dd>
                        <dd>
                            <input type="checkbox"  id="cc5" name=""  />
                            <label for="cc5"><span></span>제3자 제공동의 (선택)</label>
                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
                        </dd>
                        <dd class="disabled">
                            <input type="checkbox"  id="cc6" name=""  />
                            <label for="cc6"><span></span>천재교육 이용약관 동의 (선택)</label>
                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
                        </dd>
                    </dl>
                </div>
				<p class="txt_02 center">※ 데이터 집계 작업으로 인해 자녀 등록이 불가능한 경우, 5분 후에 이용 부탁드립니다.</p>
                <!--//이용약관 동의-->
                <button class="button blue big bold" id="btn_join">가입하기</button>
            </div>
            <!--//가입하기 전체-->
        </div>
        </form>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
<script>
document.querySelector("#btn_join").addEventListener("click", function(e) {

	let join_frm = document.querySelector("#join_frm");
	alert("회원가입이 완료되었습니다.");
	join_frm.submit();
});
</script>
</body>
</html>
