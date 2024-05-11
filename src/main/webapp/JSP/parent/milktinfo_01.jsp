<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/milktinfo_01.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:33 GMT -->
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
            <h1>밀크T 정보</h1>
            <span class="btnBack"><a href="#">뒤로가기</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--밀크T 정보 전체//-->
            <div class="milktinfoWrap">
                <!--상세//-->
                <div class="milktinfoBox">
                    <ul class="boardView">
                      <li>
                          <p class="title_01">밀크T 초등 <span>이벤트</span></p>
                          <p class="title_02">상세뷰는 제목 줄 자름 없이 노출합니다. 상세뷰는 제목 줄 자름 없이 노출합니다</p>
                          <span class="date">2019-12-01</span>
                          <span class="hit">21315</span>
                      </li>
                      <!-- 다국어 지원// -->
                      <li class="translation">
                        <h1>다국어 지원</h1>
                        <!--다국어 선택//-->
                        <div class="alignBox">
                          <select id="ss1">
                            <option value="01"  selected="selected">한국어</option>
                            <option value="02">English</option>
                            <option value="03">中文 (簡體)</option>
                            <option value="04">中文 (繁體)</option>
                            <option value="05">Tiếng Viết</option>
                          </select>
                        </div>
                        <!--//다국어 선택-->
                        <span class="setBtn"><a href="#none" onClick="alert('환경설정 APP');return false;">환경설정</a></span>
                      </li>
                      <!-- //다국어 지원 -->
                      <script>
                      $(function(){
                        /* 언어선택 */
                      	$('#ss1').change(function(){
                      		var sel = document.getElementById("ss1");
                      		var val = sel.options[sel.selectedIndex].value;

                          if(val == '01'){  //한국어 선택 시
                            $('.translateArea').hide();
                            $('.itxtArea .btn_itxtArea').removeClass('more').addClass('close').text('닫기');
                            $('.itxtArea p').removeClass('limitedBox');
                            $('.btn_itxtArea').css('display','none');
                          } else {  //외국어 선택 시
                            $('.translateArea').show();
                            $('.itxtArea .btn_itxtArea').removeClass('close').addClass('more').text('더보기');
                            $('.itxtArea p').addClass('limitedBox');
                            $('.btn_itxtArea').css('display','inline-block');
                          }
                      	});

                        /* 더보기 버튼 */
                        $('.itxtArea .btn_itxtArea').click(function(){
                          var state = $(this).text();
                          if(state == '더보기'){
                            $(this).removeClass('more').addClass('close').text('닫기');
                            $('.itxtArea p').removeClass('limitedBox');
                          } else {
                            $(this).removeClass('close').addClass('more').text('더보기');
                            $('.itxtArea p').addClass('limitedBox');
                          }
                        });
                      });
                      </script>
                      <li class="itxtArea">
                        <div class="language">
                          <p>
                            8년간의 대장정 끝에 종영했다. 왕좌를 두고 벌이는 여러 가문과 개인들의 싸움은 많은 사람의 시선을 사로잡았다.
                            여기서 인간의 욕망과 운명이 복잡하게 얽히는 가운데, 각 가문의 특성을 반영한 문장紋章은 거대한 서사를 지탱하고
                            견인하는 핵심 역할을 했다. 마법적 능력을 지닌 타가르엔 가문의 머리 셋 달린 용, 스타크 가문의 늑대 등은 가문의 성격을 단적으로
                            드러내며 캐릭터를 강화함과 동시에 복선 기능을 하며 재미를 더했다. 이외에도 〈해리포터〉 같은 판타지 소설이나 PC 게임 등에서
                            다양하게 활용되고 있는 문장은 우리에게 그리 낯설지 않다. 그런데 왜 지금 중세 문장인가?
                            문장이 우리 삶과 동떨어진 것이라 생각하기 쉽지만, 주변을 둘러보면 유럽 문장에 그 기원을 두고
                            있는 것들을 어렵지 않게 찾을 수 있다. 대표적으로 축구팀의 엠블럼이 있다. 도시나 국가를 상징하는
                            엠블럼을 가슴에 달고 경기에 임하는 선수들의 모습은 문장을 내세웠던 전쟁이나 마상 창 시합을 그대로
                            계승했다고 해도 과언이 아니다. 흔히 볼 수 있는 대학의 로고 또한 전통적인 문장의 형식을 따르고 있다.
                            문장의 문법을 그대로
                          </p>
                          <a href="#" class="btn_itxtArea">더보기</a>
                        </div>
                      </li>
                    </ul>
                </div>
                <!--//상세-->
            </div>
            <!--//밀크T 정보 전체-->
            <!-- 다국어 번역영역// -->
            <div class="translateArea">
              <div class="milktinfoWrap">
                <div class="translate">Translate</div>
                <h1>Title translated into English</h1>
                <p>
                  Set during Korea's Joseon period, three years after the Japanese invasions of Korea, the first season depicts the story of Crown Prince Lee Chang (Ju Ji-hoon), who stumbles across a life-threatening political conspiracy while investigating the spread of a mysterious plague. Barred from seeing his ill father, the King of Joseon, by the powerful Chief State Councilor, Lord Cho Hak-ju (Ryu Seung-ryong) and Queen Consort (Kim Hye-jun), Lee Chang takes it upon himself to secretly investigate his father's illness. Shocked by what he finds, he heads to the Southern province of Gyeongsang with his loyal bodyguard Mu-yeong (Kim Sang-ho) to search for more answers.[13] There he encounters the physician Seo-Bi (Bae Doo-na) and the enigmatic Yeong-Shin (Kim Sung-kyu) who are already struggling to deal with a plague that appears to bring the dead back to life as blood-thirsty monsters. Together they all face a life or death struggle to not only stop the spread of the plague but to also save the royal dynasty from being overthrown. The second season continues to depict Lee Chang's struggle to save his people from the spread of the plague, which is found out to have adapted to winter, and his dynasty from the machinations of the powerful Haewon Cho clan. As Gyeongsang province is sealed off to trap Lee Chang and prevent the spread of the plague, a series of devastating revelations at the city of Sangju changes the balance of power and the onset of winter changes the behaviour of the undead hordes. While Lee-Chang rallies his allies to secure their position against the undead, the political intrigue in Hanyang continues to unfold as Queen Consort Cho puts a deadly plan into action to secure a male heir that can usurp the Crown Prince. As tensions between the rival factions rise, with death and betrayal on all sides, it seems there are no lengths to which the Haewon Cho clan will not go in order to secure the throne, and so Lee Chang is forced into a risky plan to storm the capital Hanyang and take a final stand before it's too late. As calamity looms among the living, only one question remains; can the Prince save his people in time and end the political turmoil in the capital or will the plague mark the end of the Joseon dynasty?
                </p>
              </div>
            </div>
            <!-- //다국어 번역영역 -->

        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/milktinfo_01.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:33 GMT -->
</html>
