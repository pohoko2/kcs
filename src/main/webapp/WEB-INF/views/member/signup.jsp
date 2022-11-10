<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <!-- css -->
    <link rel="stylesheet" href="https://www.djfishing.com/asset/W/css/moolban.min.css">
    <link rel="stylesheet" href="https://www.djfishing.com/asset/W/css/swiper.min.css">
    <link rel="stylesheet" href="https://www.djfishing.com/asset/W/css/datepicker.min.css">
    <link rel="stylesheet" href="https://www.djfishing.com/asset/common/js/plugins/sweetalert/sweetalert.css">
    <link rel="stylesheet" href="https://www.djfishing.com/asset/common/js/plugins/swiper/swiper.min.css">

    <!-- script -->
    <script src="https://www.djfishing.com/asset/common/js/plugins/jquery-1.11.3.min.js"></script>
    <script src="https://www.djfishing.com/asset/common/js/plugins/jquery-ui.js"></script>
    <script src="https://www.djfishing.com/asset/common/js/plugins/swiper/swiper.min.js"></script>

    <!-- Valication -->
    <script src="https://www.djfishing.com/asset/common/js/plugins/validation/jquery.validate.min.js"></script>
    <script src="https://www.djfishing.com/asset/common/js/plugins/validation/additional-methods.min.js"></script>
    <script src="https://www.djfishing.com/asset/common/js/plugins/validation/localization/messages_ko.min.js"></script>
    <script src="https://www.djfishing.com/asset/common/js/plugins/validation/validation_method.js"></script>

    <!-- lazyload -->
    <script src="https://www.djfishing.com/asset/common/js/plugins/lazyload/jquery.lazyload.js"></script>

    <!-- jQuery Form -->
    <script src="https://www.djfishing.com/asset/common/js/plugins/ajaxForm/jquery.form.min.js"></script>

    <!-- sweetalert IE 9 -->
    <script src="https://www.djfishing.com/asset/common/js/plugins/sweetalert/sweetalert.min.js"></script>

    <!-- moolban -->
    <script src="https://www.djfishing.com/asset/W/js/jandk.js"></script>
    <script src="https://www.djfishing.com/asset/W/js/moolban.min.js"></script>

    <!-- google map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDoZ8MfWfj-cBhtmZwE3JMwkbyFN4ISsEQ"></script>


    <script src="/asset/common/js/member.js"></script>
    <script src="/asset/common/js/common.js"></script>

    <title>행복한 백구의 바다낚시</title>
            <link rel="shortcut icon" href="https://www.moolban.com/favicon/moolban/favicon.ico">
    
    <style>
    /* 토스트알럿 */
    .toast_alert{width:18.571rem;padding:1.785rem .357rem;background:rgba(0, 0, 0, 0.6);border-radius:.5rem;position:fixed;top:50%;left:50%;margin-left:-9.2855rem;margin-top:-2.357rem}
    .toast_alert p{font-size:.928rem;color:#fff;text-align:center;font-weight:bold;line-height:1.4}
    </style>
</head>
<body class="blue">
<!-- header -->
<h1 class="blind">덕적바다낚시 업주 홈페이지</h1>
<!-- wrap -->
<div class="wrap">
    <!-- container -->
    <div class="member">
        <div class="member-contents">
            <h2 class="title"><a href="/main">백구네바다낚시</a></h2>
            <p class="description">가입 후 즐거운 바다낚시를 즐기시기를 바라겠습니다.<br/>백구네바다낚시는 기쁨과 안전을 늘 추구 합니다.</p>
            <form action="/member/signup_proc" method="post" id="signup_form">
            
<input type="hidden" name="redirect" value="" />
    		
<input type="hidden" name="sh_key" value="56" />
 <!--업체 홈페이지 키-->
            
<input type="hidden" name="user_id_auth" value="" />
 <!--회원 아이디 인증-->
            
<input type="hidden" name="user_nick_auth" value="" />
 <!--회원 닉네임 인증-->
            
<input type="hidden" name="user_phone_auth" value="" />
 <!--회원 휴대전화 인증-->
                <div class="form-wrap">
                    <div class="form-item">
                        <i class="icon icon_input-email form-item_icon"></i>
                        <div class="form-item_input icons">
                            <input type="text" name="user_id" class="user_id" maxlength="60" placeholder="이메일 주소" />
                        </div>
                    </div>

                    <div class="form-item">
                        <i class="icon icon_input-password form-item_icon"></i>
                        <div class="form-item_input icons">
                            <input type="password" name="user_pw" maxlength="17" minlength="4" placeholder="비밀번호(4자이상)" />
                        </div>
                    </div>

                    <div class="form-item">
                        <i class="icon icon_input-password form-item_icon"></i>
                        <div class="form-item_input icons">
                            <input type="password" name="user_pw_chk" maxlength="17" minlength="4" placeholder="비밀번호 확인" />
                        </div>
                    </div>

                    <div class="form-items">
                        <div class="form-item">
                            <i class="icon icon_input-phone form-item_icon"></i>
                            <div class="form-item_input icons">
                                <input type="tel" name="u_phone" maxlength="11" placeholder="휴대폰 번호" onkeyPress="javascript:onlyNumber();"  onkeyup="javascript:onlyNumber2(this);" />
                            </div>
                        </div>
                        <a class="form-item_btn auth-btn">
                            <b class="color-disabled">전송</b>
                        </a>
                    </div>

                    <!-- TODO: 휴대폰 인증 완료 후 얼럿 메시지 노출과 함께 인증번호 입력 영역은 사라짐-->
                    <div class="form-items auth_line" style="display:none;">
                        <div class="form-item">
                            <div class="form-item_input auth">
                                <input type="text" class="login_auth" name="phone_auth" value="" data-number-mask maxlength="4" placeholder="인증번호 4자리" />
                            </div>
                            <i class="form-item_icon form-item_auth">
                                <em class="color-secondary auth_time">300초</em>
                            </i>
                        </div>
                        <a class="form-item_btn form-item_btn_secondary auth-check-btn">
                            <b class="color-secondary">인증</b>
                        </a>
                    </div>

                    <div class="form-item">
                        <i class="icon icon_input-nicname form-item_icon"></i>
                        <div class="form-item_input icons">
                            <input type="text"  name="user_nick" class="user_nick" minlength="2" maxlength="7" placeholder="닉네임 입력(7자이하)" />
                        </div>
                    </div>

                    <div class="form-message">
                        <div class="form-checkbox">
                            <label for="checkMailService" class="check-box_label">
                                <input type="checkbox" class="check-box_input" id="checkMailService" name="uh_sms_yn" value="Y">
                                <span class="color-">
                                    메일링 서비스(정보메일)를 받겠습니다.
                                </span>
                            </label>
                            <label for="checkSmsService" class="check-box_label">
                                <input type="checkbox" class="check-box_input" id="checkSmsService" name="uh_email_yn" value="Y">
                                <span class="color-">
                                    SMS 수신(핸드폰 문자)을 받겠습니다.
                                </span>
                            </label>
                            <label for="checkPersonal" class="check-box_label">
                                <input type="checkbox" class="check-box_input" id="checkPersonal" name="uh_personal_yn" value="Y">
                                <span class="color-">
                                    물반고기반 <a href="https://www.moolban.com/more/policy_info/personal"  target="_blank">개인정보 수집 및 활용 (선택)</a> 에 동의합니다
                                </span>
                            </label>
                        </div>

                        <hr class="form-line">
                        <p>
                            <a href="https://www.moolban.com/more/policy_info/agreement" target="_blank">이용약관</a>,
                            <a href="https://www.moolban.com/more/policy_info/personal" target="_blank">개인정보취급방침</a>에 동의하게 됩니다.
                        </p>
                    </div>

                    <div class="form-btns">
                        <!-- TODO: 모든 입력창이 완료 된 후 .bg_secondary 클래스로 변경 됨 -->
                        <a class="form-btn bg-disabled signup_submit">
                            <b class="color-white">동의하고 가입하기</b>
                        </a>
                    </div>
                    <div class="member-copyright">
                        <img src="/asset/W/images/basic/footer-logo_member.png" alt="아이스앤브이" width="36">
                        Copyright <b>ICE&amp;V Corp</b>. All Rights Reserved.
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!--// container -->

    <!-- TODO: .is-open 클래스로 on/off -->
    <!-- 얼럿 메세지 팝업 > 중복되는 아이디 경고 -->
    <div class="alert-message">
        <div class="alert-container">
            <div class="alert-inner">
                중복되는 아이디가 있습니다.
            </div>
        </div>
    </div>
    <!--// 얼럿 메세지 팝업 -->

</div>
<!--// wrap -->
<!-- script -->

<!-- 토스트알림-->
<div class="toast_alert" style="display:none">
    <p></p>
</div>
<!--// 토스트알림-->

<!--// wrap -->
<!-- script -->
<script>
//유저 정보
var tid;
var set_time = 299;

function msg_time(){	// 1초씩 카운트
	var m = set_time;	// 남은 시간 계산
	var msg =  m + "초";
	$(".auth_time").html(msg);
	set_time--;					// 1초씩 감소
	if (set_time < 0) {			// 시간이 종료 되었으면..
		clearInterval(tid);		// 타이머 해제
		$('#signup_form input[name=u_phone]').val('');
		$.toastAlert("인증시간이 초과되었습니다. 다시 인증해주시기 바랍니다.");
		$('.auth_line').hide();
	}
}
function start_time()
{
	clearInterval(tid);		// 타이머 해제
	set_time = 299;
	tid = setInterval(function(){
		msg_time();
	}, 1000);
};

$('.user_id').focusout(function(){

	var user_id = $('#signup_form').find('input[name=user_id]').val();

    var user_id_auth = $('#signup_form').find('input[name=user_id_auth]').val();
    var user_nick_auth = $('#signup_form').find('input[name=user_nick_auth]').val();
    var user_phone_auth = $('#signup_form').find('input[name=user_phone_auth]').val();

    if(user_id_auth == 'Y' && user_nick_auth =="Y" && user_phone_auth == "Y"){
        $('.signup_submit').addClass('bg-secondary');
        $('.signup_submit').removeClass('bg-disabled ');
    }else{
        $('.signup_submit').addClass('bg-disabled ');
        $('.signup_submit').removeClass('bg-secondary');
    }

	$.ajax({
		type : 'POST',
		url : '/member/user_id_check',
		data : {
			user_id : user_id
		},
		dataType : 'json',
		async : false,
		cache : false,
		success: function(res) {
			if(res.msg == "OK"){
				$('#signup_form').find('input[name=user_id_auth]').val('Y');

                if(user_nick_auth =="Y" && user_phone_auth == "Y"){
                    $('.signup_submit').addClass('bg-secondary');
                    $('.signup_submit').removeClass('bg-disabled ');
                }
			}else{
				$.toastAlert(res.msg);
				$('#signup_form').find('input[name=user_id_auth]').val('N');
			}
		},
		error: function(res) {
            console.log(res.responseText);
			if (res.responseText) {
				//$.toastAlert(res.responseText);
				//location.reload(true);
			}
		}
	});
});

$('.user_nick').focusout(function(){
	var user_nick = $('#signup_form').find('input[name=user_nick]').val();

    var user_id_auth = $('#signup_form').find('input[name=user_id_auth]').val();
    var user_nick_auth = $('#signup_form').find('input[name=user_nick_auth]').val();
    var user_phone_auth = $('#signup_form').find('input[name=user_phone_auth]').val();

    if(user_id_auth == 'Y' && user_nick_auth =="Y" && user_phone_auth == "Y"){
        $('.signup_submit').addClass('bg-secondary');
        $('.signup_submit').removeClass('bg-disabled ');
    }else{
        $('.signup_submit').addClass('bg-disabled ');
        $('.signup_submit').removeClass('bg-secondary');
    }

	$.ajax({
		type : 'POST',
		url : '/member/user_nick_check',
		data : {
			user_nick : user_nick
		},
		dataType : 'json',
		async : false,
		cache : false,
		success: function(res) {
			if(res.msg == "OK"){
				$('#signup_form').find('input[name=user_nick_auth]').val('Y');

                if(user_id_auth == 'Y' && user_phone_auth == "Y"){
                    $('.signup_submit').addClass('bg-secondary');
                    $('.signup_submit').removeClass('bg-disabled ');
                }
			}else{
				$.toastAlert(res.msg);
				$('#signup_form').find('input[name=user_nick_auth]').val('N');
			}
		},
		error: function(res) {
			if (res.responseText) {
				$.toastAlert(res.responseText);
				location.reload(true);
			}
		}
	});
});


$('#signup_form input[name=u_phone]').on("change paste keyup", function(){
    var len = $(this).val().length;
    if(len >= 10 && len <= 11){
        $('.auth-btn').addClass('border-secondary');
        $('.auth-btn .color-disabled').addClass('color-secondary');
        $('.auth-btn .color-disabled').removeClass('color-disabled');
    }else{
        $('.auth-btn').removeClass('border-secondary');
        $('.auth-btn .color-secondary').addClass('color-disabled');
    }
});

//인증하기
$('.auth-btn').click(function(){

	var u_phone = $('#signup_form').find('input[name=u_phone]').val().replace(/[^0-9]/g, '');

	if(!u_phone)
	{
		$.toastAlert("휴대폰번호를 입력해 주세요.");
		$('#signup_form').find('input[name=u_phone]').focus();
		return false;
	}

	if (!/^\d{3}\d{3,4}\d{4}$/.test(u_phone))
	{
		$.toastAlert("잘못된 휴대폰 번호입니다. 숫자만 입력하세요.\n예) 01012345678");
		$('#signup_form').find('input[name=u_phone]').focus();
		return false;
	}

	$.ajax({
		type : 'POST',
		url : '/member/phone_check',
		data : {
			phone_first : u_phone.substring(0,3)
			, phone_second : u_phone.substring(3)
		},
		dataType : 'json',
		async : false,
		cache : false,
		success: function(res) {
            if(res.rtv == true){
                $('.auth_line').show();
                $('.auth-btn').addClass('border-secondary');
                $('.auth-btn .color-disabled').addClass('color-secondary');
                $('.auth-btn b').text('재발송');
    			$.toastAlert(res.msg);
    			if(res.rtv) start_time();
            }else{
                $.toastAlert(res.msg);
            }
		},
		error: function(res) {
			if (res.responseText) {
				$.toastAlert(res.responseText);
				location.reload(true);
			}
		}
	});
	return false;

});

//인증확인
$('.auth-check-btn').click(function(){
	var u_phone = $('#signup_form').find('input[name=u_phone]').val().replace(/[^0-9]/g, '');

	if(!u_phone)
	{
		$.toastAlert("휴대폰번호를 입력해 주세요.");
		$('#signup_form').find('input[name=u_phone]').focus();
		return false;
	}

	if (!/^\d{4}$/.test($('#signup_form').find('input.login_auth').val()))
	{
		$.toastAlert("잘못된 인증코드 번호입니다. 숫자만 입력하세요.\n예) 1234");
		$('#signup_form').find('input.login_auth').focus();
		return false;
	}

	$.ajax({
		type : 'POST',
		url : '/member/phone_auth',
		data : {
			phone : u_phone
			, code : $('#signup_form').find('input.login_auth').val()
		},
		dataType : 'json',
		async : false,
		cache : false,
		success: function(res) {
			$.toastAlert(res.msg);

			if(res.rtv === true){
				clearInterval(tid);

                $('.auth_line').hide();
				$('#signup_form').find('input[name=user_phone_auth]').val('Y');

                var user_id_auth = $('#signup_form').find('input[name=user_id_auth]').val();
                var user_nick_auth = $('#signup_form').find('input[name=user_nick_auth]').val();
                var user_phone_auth = $('#signup_form').find('input[name=user_phone_auth]').val();

                if(user_id_auth == 'Y' && user_nick_auth =="Y" && user_phone_auth == "Y"){
                    $('.signup_submit').addClass('bg-secondary');
                    $('.signup_submit').removeClass('bg-disabled ');
                }else{
                    $('.signup_submit').addClass('bg-disabled ');
                    $('.signup_submit').removeClass('bg-secondary');
                }
			}else{
				$('#signup_form').find('input[name=user_phone_auth]').val('N');
			}
		},
		error: function(res) {
			console.log(res.responseText);
			if (res.responseText) {
				//$.toastAlert(res.responseText);
				//console.log(res.responseText);
				location.reload(true);
			}
		}
	});
	return false;
});
$(function() {

    // 회원가입 유효성 검사
    jQuery.validator.addMethod("emailExt", function(value, element, param) {
        return value.match(/^[a-zA-Z0-9_\.%\+\-]+@[a-zA-Z0-9\.\-]+\.[a-zA-Z]{2,}$/);
    },'올바른 이메일 주소가 아닙니다');
    // 회원가입 유효성 검사
    $('#signup_form').validate($.extend($.default_validate, {
        onfocusout: false
        , rules : {
            user_id : { required : true, maxlength : 60, minlength : 1, emailExt : true}
            , user_pw : { required : true, maxlength : 17, minlength : 4}
            , user_pw_chk : { required : true, maxlength : 17, minlength : 4, equalTo : 'input[name=user_pw]'}
            , u_phone : { required : true, maxlength : 11, minlength : 10}
            , phone_auth : { required : true, maxlength : 4, minlength : 4}
            , user_nick : { required : true, maxlength : 7, minlength : 2}
        }
        , messages : {
            user_id : { required : "이메일을 입력해주세요.",maxlength : $.validator.format('{0}자까지 입력해주세요.'), minlength : $.validator.format('{0}자까지 입력해주세요.')}
            , user_pw : { required : "비밀번호를 입력해주세요.", maxlength : $.validator.format('{0}자까지 입력해주세요.'), minlength : $.validator.format('{0}자이상 입력해주세요.')}
            , user_pw_chk : { required : "비밀번호를 입력해주세요.", maxlength : $.validator.format('{0}자까지 입력해주세요.'), minlength : $.validator.format('{0}자이상 입력해주세요.'), equalTo : '같은 값을 다시 입력해주세요.'}
            , u_phone : { required : "연락처를 입력해주세요.", maxlength : $.validator.format('{0}자까지 입력해주세요.'), minlength : $.validator.format('{0}자이상 입력해주세요.')}
            , phone_auth : { required : "인증코드를 입력해주세요.", maxlength : $.validator.format('{0}자까지 입력해주세요.'), minlength : $.validator.format('{0}자이상 입력해주세요.')}
            , user_nick : { required : "닉네임을 입력해주세요.", maxlength : $.validator.format('{0}자까지 입력해주세요.'), minlength : $.validator.format('{0}자이상 입력해주세요.')}
        }
        , invalidHandler: function(form, validator) {
            var errors = validator.numberOfInvalids();
            if (errors) {
                validator.errorList[0].element.focus();
                return $.toastAlert(validator.errorList[0].message);
                return false;
            }
        }
    }));

	$(this).on("click", ".signup_submit", function(e){
	    e.preventDefault();
	    var form = $(this).parents("form");
	    if($(form).valid()){
	        $.signupProc(form);
	    }
	});

	// 회원가입
	$.signupProc = function(form){
        var user_phone_auth = $('#signup_form').find('input[name=user_phone_auth]').val();
        if(user_phone_auth != 'Y'){
            $.toastAlert('휴대폰 인증후 가입해주세요.');
            return false;
        }

        var user_personal_auth = $('#signup_form').find('input[name=uh_personal_yn]:checked').val();
        if(user_personal_auth != 'Y'){
            $.toastAlert('개인정보 수집 및 활용에 동의 해주세요.');
            return false;
        }

	    $.ajax({
	        type: 'POST',
	        url: $(form).attr('action'),
	        data : $(form).serialize(),
	        dataType: 'json',
	        async: false,
	        cache: false,
	        processData: true,
	        success: function(res) {
	            if(res.rtv){
					location.href = '/member/complete';
	            } else {
	                return $.toastAlert(res.ret);
	            }
	        },
	        error: function(res) {
	            //console.log(res.responseText);
	            if (res.responseText) {
	                location.reload(true);
	            }
	        }
	    });
	}
});
</script>

</body>

</html>
