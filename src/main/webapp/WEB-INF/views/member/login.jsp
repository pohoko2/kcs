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

			<%-- Ÿ��Ʋ �κ� --%>
	<div class="wrap">
		<form id="login_form" method="post">
			<div class="logo_wrap">
				<span>�鱸�� ���˹�</span>
			</div>
			
			<%-- �α��� ID �Է��ϴ� ȭ�� --%>
			<div class="login_wrap">
				<div class="id_wrap">
					<div class="id_input_box">
						<input Type="text" class="id_input" name="memberId">
					</div>
				</div>
			<%-- ��й�ȣ �Է��ϴ� ȭ�� --%>
				<div class="pw_wrap">
					<div class="pw_input_box">
						<input Type="Password" class="pw_input" name="memberPw">
					</div>
				</div>
			   <c:if test = "${result ==0 }">	
				<div class="login_warn">����� ID �Ǵ� ��й�ȣ�� �߸� �Է��ϼ̽��ϴ�.</div>
			   </c:if>
				
			<%-- �α��� ��ư --%>
				<div class="login_button_wrap">
					<input type="button" class="login_button" value="�α���">
				</div>
			<%-- ȸ������ �̵� ��ư--%>
			<%-- �� �� onClick �����̷��� �ּ� ���� �ʿ���--%>
				<div class="login_button_wrap">
					<input type="button" class="member_signup" value="ȸ�������ϱ�" onClick="location.href='http://localhost:8088/member/signup'">
				</div>
			</div>
		</form>
	</div>

</div>
<script type="text/javascript">

  <%-- �α��� ��Ʋ Ŭ�� �޼��� --%>
  $(".login_button").click(function(){
	  // alert("�α��� ��ư �۵�"); //��ư �����۵� �׽�Ʈ ����
	  
	  <%-- �α��� �޼��� ���� ��û--%>
	  $("#login_form").attr("action", "/member/login");
	  $("#login_form").submit();
  });

  
</script>

</body>
</html>