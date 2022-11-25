<!DOCTYPE html>
<html lang="ko">
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>    

<head>
 
</head>
 <input type="hidden" id="memberIdCk" name="memberIdCk" value="N"/>
 
 <section id="content">
 <form role="form" method="post" autocomplete="off">
  <div class="input_area">
   <label for="memberId">아이디</label>
   <input type="text" id="memberId" name="memberId" placeholder="ID를 입력해주세요" required="required" />      
  </div>
  <div class="input_ck">
        <a href="#" class="input_memberidck" id="meId" onclick="duplicate(); return false;">
            <span class="text">중복체크</span>
        </a>
        </div>
  
  <div class="input_area">
   <label for="memberPw">패스워드</label>
   <input type="password" id="memberPw" name="memberPw" required="required" />      
  </div>
  
  <div class="input_area">
   <label for="memberName">닉네임</label>
   <input type="text" id="memberName" name="memberName" placeholder="닉네임을 입력해주세요" required="required" />      
  </div>
  
  <div class="input_area">
   <label for="memberMail">이메일</label>
   <input type="email" id="memberMail" name="memberMail" placeholder="메일주소를 입력해주세요" required="required" />      
  </div>
  
  <div class="input_area">
   <label for="memberHP">연락처</label>
   <input type="tel" id="memberHP" name="memberHP" placeholder="연락처를 입력해주세요" required="required" />      
  </div>
  
  <button type="submit" id="signup_btn" name="signup_btn">회원가입</button>
  
 </form>   
</section>


<script>
var path = "${pageContext.request.contextPath}";

$(document).ready(function(){});

// 회원 가입 ID 중복체크 확인
function duplicate()
{
	// 회원이 직접 입력한 ID 값 입력받아 submitObj 객체에 담아 JSON.stingify 에 값 전달
	var meId = $("#memberId").val();
	
	var submitObj = new Object();
	submitObj.memberId = meId;
	
	$.ajax({
		url : "/member/MemberIdCk",
		type : "POST",
		contentType : "application/json;charset=UTF-8",
		data : JSON.stringify(submitObj),
		dataType : "json",
		async : false
    	}).done(function(jsonmap) 
    	{
		if (jsonmap.res == "ok") 
		{
		if (jsonmap.idCnt == 0) {
		alert("사용할 수 있는 아이디입니다.");
		$("#idCnt").val("Y");
		} else {
		alert("사용할 수 없는 아이디입니다. 아이디를 다시 선택해주세요.");
		$("#idCnt").val("N");}
		}
		}).fail(function(e) {
		alert("등록 시도에 실패하였습니다." + e);
		}).always(function() {
		pass = false;
	});
}
</script>
  
 
</body>
</html>
