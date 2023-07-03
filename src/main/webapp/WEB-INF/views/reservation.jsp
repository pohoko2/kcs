<!DOCTYPE html>
<html lang="ko">
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="Digital marketing courses website template that can help you boost your business courses website and its completely free.">
<meta name="keywords" content="seo,free website template,responsive website template,marketing,search engine optimization, web analytics ">
<!-- 화면 해상도에 따라 글자 크기 대응(모바일 대응) -->
  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  
<title>Digital Marketing Courses Website Template</title>
<!-- Bootstrap -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Style CSS -->
<link href="../resources/css/style.css" rel="stylesheet">
<!-- 달력 CSS -->
<link href="../resources/css/calender.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

<!-- FontAwesome CSS -->
<link rel="stylesheet" type="text/css" href="../resources/css/fontello.css">
<link href="../resources/css/font-awesome.min.css" rel="stylesheet">
 
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div class="header-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-md-2 col-xs-12">
                    <div class="logo">
                        <a href="index.html"><img src="https://cdn.crowdpic.net/detail-thumb/thumb_d_A70CDDCC2CC4F3F62AEBE2B9F64C893D.jpg" class="img-responsive" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-10 col-sm-8 col-xs-12">
                    <div class="navigation-wrapper">
                        <div id="navigation">
                            <ul>
                                <li class="active"><a href="/" title="">홈</a></li>
                                <li><a href="about.html" title="">공지 사항</a> </li>
                                <li class="has-sub"><a href="#" title="">예약란</a>
                                    <ul>
                                        <li><a href="reservation" title="">예약하기</a></li>
                                        <li><a href="courses-single.html" title="">예약현황 </a></li>
                                    </ul>
                                </li>
                                <li class="has-sub"><a href="#" title="">게시판</a>
                                    <ul>
                                        <li><a href="blog-default.html" title="">조황 후기</a></li>
                                        <li><a href="blog-single.html" title="">예약 문의</a></li>
                                    </ul>
                                </li>
                                <li class="has-sub"><a href="#" title="">안내글</a>
                                    <ul>
                                        <li><a href="testimonials.html" title="">선박소개</a></li>
                                        <li><a href="404-error.html" title="">출조안내</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html" title="">오시는 길</a> </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 hidden-md hidden-sm hidden-xs"> <a href="/member/login" class="btn btn-primary">로그인</a> </div>
            </div>
        </div>
    </div>
<!-- header-close.. --> 

<!-- page-header-start -->
<div class="page-header">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="page-section">
          <h1 class="page-title">예약하기</h1>
          <p class="page-text">여기는 얇고 디자인 쪼매만 바꾸자</p>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- page-header-close --> 
<!-- 중앙 달력출력-->
<!-- 참고 사이트 : https://nexi.kr/137 -->
  <div class="container">

	<div class="date-wrap">
            <div class="date-month">
                
                <div class="button_wrap">
                    <button type="button" id="month-prev" class="month-move" data-ym="2022-04-01"> 이전 </button>
                    <span id="month-this">2022.05</span>
                    <button type="button" id="month-next" class="month-move" data-ym="2022-06-01"> 다음 </button>
                </div>
            </div>
            <table class="date-month">
                <thead>
                    <tr>
                        <th class="sun">일</th>
                        <th>월</th>
                        <th>화</th>
                        <th>수</th>
                        <th>목</th>
                        <th>금</th>
                        <th class="sat">토</th>
                    </tr>
                </thead>
                <tbody id="tbl-month">
                    <tr>
                        <td class="sun"><a>1</a></td>
                        <td class=""><a>2</a></td>
                        <td class=""><a>3</a></td>
                        <td class=""><a>4</a></td>
                        <td class="today"><a>5</a></td>
                        <td class=""><a>6</a></td>
                        <td class="sat"><a>7</a></td>
                    </tr>
                    <!-- 행 반복 -->
                    <tr>
                        <td class=""><a>29</a></td>
                        <td class=""><a>30</a></td>
                        <td class=""><a>31</a></td>
                        <td class=""><a></a></td>
                        <td class=""><a></a></td>
                        <td class=""><a></a></td>
                        <td class=""></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
      <!-- 안내문구 -->
      <table width="100%" border="0" style="margin-top:50px;">
      	 <tbody>
          	<tr>
            	<td style="width:20%;font-size:18px;font-weight:500;height:90px;background:#f2f2f2;text-align:center;color:#BF5B16;" valign="middle">예약안내</td>	
            	<td style="width:100%;font-size:16px;font-weight:300;background:#f9f9f9;padding:20px 40px;" valign="middle">
	            	   <li style="list-style-type : disc;height:40%;">
	            	    "하루전, 당일 : 환불불가 / 3일전 환불 : 100% / 6일전 환불 : 200% / 10일전 환불 : 0%"
	            	   </li>
	            	   <li style="list-style-type : disc;height:40%;">
	            	    "환불 및 예약 취소는 반드시 전화로 물어봐라 이놈들아"
	            	   </li>
	            	   <li style="list-style-type : disc;height:40%;">
	            	    "송금 후 취소/변경과 독선예약은 반드시 전화로 문의해"
	            	   </li>
	            	   <li style="list-style-type : disc;height:40%;">
	            	    "바람 많이 불고 태풍오면 낚시 못간다~"
	            	   </li>
            	</td>
          	</tr>
       	</tbody>
      </table>
      <!-- 안내문구 끝-->
 	</div>    
 <!-- 달력-close--> 
<!--예약현황-start--> 
<div class="container">
   <p style="text-align:left;font-size:22px;color:Red;margin-bottom:20px;">
	     "※ 계좌 번호 받아 적어라~ :"
   	  <span style="color:black;"> 신한은행 1234-5678-0101 예금주 : 백구</span>
   </p>	
	
	<!-- 예약 상세 정보 -->
	<div id="resid">
		<table id="restable" border="1px">
			<tbody>
				<tr style="background:#f2f2f2;">
					<td style="width:80px;height:10px;">날짜</td>
					<td style="width:130px;">승선정보</td>
					<td style="width:80px;">요금</td>
					<td style="width:150px;">공지</td>
					<td style="width:440px;">예약자</td>
					<td style="width:60px;">소계</td>
					<td style="width:60px;">정원</td>
					<td style="width:80px;">잔여석</td>
					<td style="width:110px;">예약하기</td>
				</tr>
				<tr>
					<td rowspan="2" style="background:#f9f9f9;">
						<p style="text-align:center;">2022-11</p>
						<p style="text-align:center;font-size:15px;font-weight:200;">24</p>
						<p>목요일</p>
						<p>7물</p>
					</td>
					<td rowspan="2">백구호</td>
					<td rowspan="2" style="color:#B84A5B;font-weight:100;">400,000원</td>
					<td rowspan="2" style="text-align:left;"></td>
					<td style="text-align:left;">
						<span style="background:#007AAE;color:#fff;border-radius:5px;font-size:12px;padding:2px 5px;">예약확정</span>
					</td>
					<td>0</td>
					<td rowspan="2" style="font-size:12px;">55</td>
					<td rowspan="2">
						<span style="color:#B84A5B;font-size:12px;">55</span>
					</td>
					<td rowspan="2">
						<span class="tdsp_red" style="background:#000;padding:5px 10px;color:#fff;border-radius:5px;">출조없음</span>
						<button onclick="openReservationPopup()">예약하기</button>
					</td>
				</tr>
				<tr>
				  <!-- 대기명단 -->
				  	<td style="text-align:left;">
				  		<span style="background:#e8e8e8;color:gray;border-radius:5px;font-size:12px;padding:2px 5px;">입금대기</span>
				  	</td>
				  	<td>0</td>	
				</tr>
			</tbody>
		</table>
	</div>



 </div>
</div>
<!--예약현황-close--> 
<!-- footer start -->
<div class="footer">
  <div class="container">
    <div class="row"> 
      <!-- footer-useful links-start -->
      <div class=" col-lg-3 col-md-3 col-sm-3 col-xs-12">
        <div class="footer-widget">
          <h3 class="footer-title">Quick Links</h3>
          <ul>
            <li><a href="#">Home </a></li>
            <li><a href="#">About us </a></li>
            <li><a href="#">Practice Area </a></li>
            <li><a href="#">Cases </a></li>
            <li><a href="#">News </a></li>
            <li> <a href="#">Contacts</a></li>
          </ul>
        </div>
      </div>
      <!-- footer-useful links-close --> 
      <!-- footer-contactinfo-start -->
      <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-12">
        <div class="footer-widget">
          <h3 class="footer-title">24 X 7 Support</h3>
          <div class="">
            <ul>
              <li> <i class="fa fa-map-marker"></i> 2000 Cambridge Ease template,72764 India</li>
              <li><i class="fa fa-phone"></i>800-123-4567</li>
              <li><i class="fa fa-envelope"></i>info@education.com</li>
            </ul>
          </div>
          <a href="#" class="btn btn-primary btn-sm">request a Course</a></div>
      </div>
      <!-- footer-contactinfo-close --> 
      <!-- footer-about-start -->
      <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 ">
        <div class="footer-widget">
          <h3 class="footer-title">About Education</h3>
          <p>Velitconsectetur utleo velaoreet in bibendum felirbi iaculis iaculis dpibus ecenas one posuereorci ut euismod tristique. </p>
          <p>lorem ipsum dolr sit amet viedfum lacumdi postern lembneir siot lsedto sistompovelaoreet in bibendum egestacerat tempus magna nonrordueugloattis ultrices diam.</p>
        </div>
      </div>
      <!-- footer-about-close -->
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
        <div class="footer-line"></div>
      </div>
      <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
        <p>Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
        </p>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
        <div class="footer-social">
         <a href="#"><span><i class="fa fa-facebook"></i></span></a>
          <a href="#"><span><i class="fa fa-google-plus"></i></span> </a> 
          <a href="#"><span class="active"><i class="fa fa-twitter"></i> </span></a> 
          <a href="#"><span><i class="fa fa-instagram"></i></span> </a> 
          <a href="#"><span><i class=" fa fa-pinterest"></i> </span></a> 
          <a href="#"><span><i class="fa fa-linkedin"></i></span></a> </div>
      </div>
    </div>
  </div>
  <!-- footer-address-close --> 
</div>

<!-- footer close --> 

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../resources/js/jquery.min.js" type="text/javascript"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../resources/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="../resources/js/menumaker.js" type="text/javascript"></script> 
<script type="text/javascript" src="../resources/js/jquery.sticky.js"></script> 
<script type="text/javascript" src="../resources/js/sticky-header.js"></script> 




<!-- 달력 스크립트 -->
<script>

// 이전달로 가기
function prevMonth(date) {
    var target = new Date(date);
    target.setDate(1);
    target.setMonth(target.getMonth() - 1);

    return getYmd(target);
}

// 다음달로 가기
function nextMonth(date) {
    var target = new Date(date);
    target.setDate(1);
    target.setMonth(target.getMonth() + 1);

    return getYmd(target);
}

function getYmd(target) {
    // IE에서 날짜 문자열에 0이 없으면 인식 못함
    var month = ('0' + (target.getMonth() + 1)).slice(-2);
    return [target.getFullYear(), month, '01'].join('-');
}

function fullDays(date) {
    var target = new Date(date);
    var year = target.getFullYear();
    var month = target.getMonth();

    var firstWeekDay = new Date(year, month, 1).getDay();
    var thisDays = new Date(year, month + 1, 0).getDate();

    // 월 표시 달력이 가지는 셀 갯수는 3가지 가운데 하나이다.
    // var cell = [28, 35, 42].filter(n => n >= (firstWeekDay + thisDays)).shift();
    var cell = [28, 35, 42].filter(function (n) {
            return n >= (firstWeekDay + thisDays);
        }).shift();

    // 셀 초기화, IE에서 Array.fill()을 지원하지 않아서 변경
    // var days = new Array(cell).fill({date: '', dayNum: '', today: false});
    var days = []
    for (var i = 0; i < cell; i++) {
        days[i] = {
            date: '',
            dayNum: '',
            today: false
        };
    }
    
    var now = new Date();
    var today = new Date(now.getFullYear(), now.getMonth(), now.getDate());
    var inDate;
    for (var index = firstWeekDay, i = 1; i <= thisDays; index++, i++) {
        inDate = new Date(year, month, i);
        days[index] = {
            date: i,
            dayNum: inDate.getDay(),
            today: (inDate.getTime() === today.getTime())
        };
    }

    return days;
}

function drawMonth(date) {
    $('#month-this').text(date.substring(0, 7).replace('-', '.'));
    $('#month-prev').data('ym', prevMonth(date));
    $('#month-next').data('ym', nextMonth(date));

    $('#tbl-month').empty();

    var td = '<td class="__REST__ __TODAY__"><a __HREF__>__DATE__</a></td>';
    var href = '/depart/schedule?date=' + date.substring(0, 8);
    var hasEvent;
    var tdClass;
    var week = null;
    var days = fullDays(date);
    for (var i = 0, length = days.length; i < length; i += 7) {
        // 전체 셀을 주단위로 잘라서 사용
        week = days.slice(i, i + 7);
        
        var $tr = $('<tr></tr>');
        week.forEach(function (obj, index) {
            // 매주 수요일에 이벤트가 있다고 가정
            hasEvent = (index === 3);
            tdClass = (index === 0)? 'sun': '';
            tdClass = (index === 6)? 'sat': tdClass;

            $tr.append(td.replace('__REST__', tdClass)
                        .replace('__TODAY__', (obj['today'])? 'today': '')
                        .replace('__HREF__', (hasEvent)? 'href="'+ href + ('0' + obj['date']).slice(-2) +'"': '')
                        .replace('__DATE__', obj['date']));
        });
        $('#tbl-month').append($tr);
    }
}

$(function () {
    var date = (new Date()).toISOString().substring(0, 10);
    drawMonth(date);

    $('.month-move').on('click', function (e) {
        e.preventDefault();

        drawMonth($(this).data('ym'));
    });
});
<!-- 달력 스크립트 끝 -->


<!-- 예약하기 팝업 스크립트 시작 -->
function openReservationPopup() {
	  // 팝업 창을 가운데에 위치시키기 위한 좌표 계산
	  var left = (window.innerWidth / 2) - (600 / 2);
	  var top = (window.innerHeight / 2) - (400 / 2);
	  
	  // 팝업 창 옵션 설정
	  var options = 'width=700,height=600,left=' + left + ',top=' + top;
	  
	  // 예약하기 페이지 URL
	  var url = 'reserve_detail'; // 예: reservation.html
	  
	  // 팝업 창 열기
	  window.open(url, 'ReservationPopup', options);
	}
<!-- 예약하기 팝업 스크립트 끝 -->

 </script>
</body>
</html>
