<!DOCTYPE html>
<html lang="ko">
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  

<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div class="wrapper">

			<%-- 타이틀 부분 --%>
	<div class="wrap">
		<form id="login_form" method="post">
			<div class="logo_wrap">
				<span>백구네 낚싯배</span>
			</div>
			
			<%-- 로그인 ID 입력하는 화면 --%>
			<div class="login_wrap">
				<div class="id_wrap">
					<div class="id_input_box">
						<input Type="text" class="id_input" name="memberId">
					</div>
				</div>
			<%-- 비밀번호 입력하는 화면 --%>
				<div class="pw_wrap">
					<div class="pw_input_box">
						<input Type="Password" class="pw_input" name="memberPw">
					</div>
				</div>
			   <c:if test = "${result ==0 }">	
				<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
			   </c:if>
				
			<%-- 로그인 버튼 --%>
				<div class="login_button_wrap">
					<input type="button" class="login_button" value="로그인">
				</div>
			<%-- 회원가입 이동 버튼--%>
			<%-- 추 후 onClick 리다이렉션 주소 변경 필요함--%>
				<div class="login_button_wrap">
					<input type="button" class="member_signup" value="회원가입하기" onClick="location.href='http://localhost:8088/member/signup'">
				</div>
			</div>
		</form>
	</div>

</div>
<script type="text/javascript">

  <%-- 로그인 버틀 클릭 메서드 --%>
  $(".login_button").click(function(){
	  // alert("로그인 버튼 작동"); //버튼 정상작동 테스트 라인
	  
	  <%-- 로그인 메서드 서버 요청--%>
	  $("#login_form").attr("action", "/member/login");
	  $("#login_form").submit();
  });

  
</script>

</body>
</html>