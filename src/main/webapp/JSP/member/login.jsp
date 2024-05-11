<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/member/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
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
            <h1>로그인</h1>
            <span class="btnSide"><a href="#">좌측메뉴 펼침</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--로그인 전체//-->
            <div  class="loginWrap">
                <h2>T SPOON, 밀크T 학부모 아이디로<br/>로그인 하실 수 있습니다.</h2>
                <form id="login_frm" name="login_frm" method="post" action="login.do">
	                <div class="formBox">
	                    <input type="text" class="itxt" id="id" name="id" placeholder="아이디" />
	                    <label class="title" for="id">아이디</label>
	                </div>
	               <div class="formBox">
	                    <input type="password" class="itxt" id="pwd" name="pwd" placeholder="비밀번호" />
	                    <label class="title" for="pwd">비밀번호</label>
	                </div>
	               <!--  로그인 에러 -->
	                <%
					String loginErr = request.getParameter("loginErr");
					if(request.getAttribute("loginErr") != null) {
					%>
						<span style ="color:red; font-size:20px; font-weight:bold">
						<%= request.getAttribute("loginErr") %>
						</span>
					<%
					}
					%>
	                <div class="saveLog">
	                    <input type="checkbox"  id="saveid" name=""  />
	                    <label for="saveid"><span></span>로그인 상태 유지</label>
	                </div>
	               <button type=class="button blue big" id="btn_login">로그인</button>
               </form>
               <ul class="bottomMenu">
                    <li><a href="/TCLASS/member/search_id.do?full=N" target="_self">아이디 찾기</a></li>
                    <li><a href="/TCLASS/member/search_pw.do" target="_self">비밀번호 찾기</a></li>
                    <li><a href="join.do" target="_self">가입하기</a></li>
               </ul>

               <p class="btn_privacyPolicy"><a href="#">개인정보 처리방침 &gt;</a></p>

               <a href="#" class="button white big"  style="padding:20px 0;font-size:1rem;text-align:center;position:absolute;left:0;bottom:10px;width:90%;margin-left:5%;">쿠키 삭제 클릭(추후 오픈시에는 삭제예정)</a>


            </div>
            <!--//로그인 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
<script>
	document.querySelector("#btn_login").addEventListener("click", function(e) {
		e.preventDefault();
		e.stopPropagation();
		
		//아이디 비번 미입력시
		let id = document.querySelector("#id");
		let pwd = document.querySelector("#pwd");
		
		if(id.value.length == "") {
			alert("아이디 또는 비밀번호는 필수 입력사항입니다.");
			id.focus();
			return false;
		}
		
		if(pwd.value.length == "") {
			alert("아이디 또는 비밀번호는 필수 입력사항입니다.");
			pwd.focus();
			return false;
		}
		
		let login_frm = document.querySelector("#login_frm");
		login_frm.submit();		
	});
</script>
</body>

</html>
