<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/main/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:14:14 GMT -->
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
	<style>
    	#login {
    		text-align: center;
		    margin-top: 11px;
		    font-weight: bold;
    	}
    </style>
</head>
<body>
    <!--웹영역 전체//-->
    <div id="wrap" class="wrap">
        <!--해더영역//-->
        <div id="header">
            <h1>T SPOON</h1>
            <span class="btnSide"><a href="#" onClick="openNav()">전체메뉴 열기</a></span>
        </div>
        <!--//해더영역-->
        <!--전체메뉴//-->
        <div id="mySidenav" class="sidenav" >
            <!--전체메뉴 해더//-->
            <div class="navHeader">
                <span class="closebtn"><a href="javascript:void(0)" onClick="closeNav()">전체메뉴 닫기</a></span>
                <h2>T SPOON</h2>
                <span class="setBtn"><a href="#none" onClick="alert('환경설정 APP');return false;">환경설정</a></span>
            </div>
            <!--//전체메뉴 해더-->
            <!--전체메뉴 컨텐츠//-->
            <div class="navContent">
                <!--미 로그인 시//-->
                <div class="userStatus_02">
                    <p class="photo"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_noimg.png" alt="" /></p>
                    <a href="../member/login.jsp" target="_self"><p id="login">로그인</p></a>
                </div>
                <!--//미 로그인 시-->
                <!-- 로그인 상태
                <div class="userStatus">
                    <p class="photo"><img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" /></p>
                    <p class="name">홍길동</p>
                    <button class="btnLogOut">로그아웃</button>
                </div>
                 -->
                <div class="menuStyle_03">
                    <h3>메뉴</h3>
                    <ul>
                        <li class="ico_tv"><a href="../member/login.do" target="_self"><span>&nbsp;&nbsp;&nbsp;쪽지</span></a></li>
                        <li class="ico_game"><a href="../member/login.jsp" target="_self"><span>1:1 게시판</span></a></li>
                    </ul>
                </div>
            </div>
            <!--//전체메뉴 컨텐츠-->

        </div>
        <!--//전체메뉴-->
        <!--컨텐츠 본문//-->
        <div id="contentMain">
            <!--메인 전체//-->
            <div class="mainWrap">
                <div class="swiper-container-main">
                    <div class="swiper-wrapper">

                        <!--메인 비쥬얼 영역//-->
<!--                         <div class="swiper-slide">
                            <p style="width:86%;border:2px solid red;padding:200px 0;text-align:center;margin:0 auto;background:#fafafa">
                                로그인 상관없이 > 가이드팝업
                            </p>
                        </div> -->
                        <!--//메인 비쥬얼 영역-->
                    </div>
                </div>
                <script>
                //스와이프 영역
/*                 var swiper = new Swiper('.swiper-container-main', {
                    //effect : 'fade',
                    autoHeight  : true,
                    spaceBetween:0,
                    centeredSlides: false,
                    initialSlide:1,
                    loop: false,
                }); */
                </script>



            </div>
            <!--//메인 전체-->
        </div>
        <!--//컨텐츠 본문-->

        <!-- 시작하기 팝업// -->
        <div class="start_popup">
          <!-- Swiper -->
<!--           <div class="swiper-container-startPop">
            <div class="swiper-wrapper">
              <div class="swiper-slide"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/main/start_popup/start_popup01_v2.png" alt="T-class"></div>
              <div class="swiper-slide"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/main/start_popup/start_popup02_v2.png" alt="T-class"></div>
              <div class="swiper-slide"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/main/start_popup/start_popup03_v2.png" alt="T-class"></div>
              <div class="swiper-slide"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/main/start_popup/start_popup04_v2.png" alt="last"></div>
            </div>
            <a href="#none" onClick="$('.start_popup').fadeOut(300);" class="btn_skip" style="color:#fff;">SKIP</a>
            <a href="#none" onClick="$('.start_popup').fadeOut(300);" class="btn_start"><img src="../../../cdndata.milkt.co.kr/ele/tspoon/Images/common/main/start_popup/start_popup_btn.png" alt="시작하기"></a>
            Add Pagination
            <div class="swiper-pagination swiper-pagination-startPop"></div>
          </div> -->

          <!-- Initialize Swiper -->
          <script>
/*             var swiper = new Swiper('.swiper-container-startPop', {
              pagination: {
                el: '.swiper-pagination-startPop',
              },
              on: {
                /* skip or 시작하기 버튼 */
/*                 slideChangeTransitionEnd: function(){
                  var lastSlide = this.activeIndex;
                  if(lastSlide == '3'){
                    $('.btn_skip').hide();
                    $('.btn_start').css('display','inline-block');
                  } else {
                    $('.btn_start').css('display','none');
                    $('.btn_skip').show();
                  }
                },
              },
            });  */
          </script>

        </div>
        <!-- //시작하기 팝업 -->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/main/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:14:49 GMT -->
</html>
