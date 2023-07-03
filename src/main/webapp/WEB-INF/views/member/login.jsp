<!DOCTYPE html>
<html lang="ko">
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  

<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <style>
        body {
            font-family: Arial, sans-serif;
        }

        .wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .wrap {
            background-color: #f2f2f2;
            padding: 30px;
            border-radius: 5px;
            text-align: center;
        }

        .logo_wrap {
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        .id_wrap,
        .pw_wrap {
            margin-bottom: 20px;
        }

        .id_input_box,
        .pw_input_box {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 40px;
            border: 1px solid #ccc;
            border-radius: 5px;
            overflow: hidden;
        }

        .id_input,
        .pw_input {
            width: 100%;
            height: 100%;
            padding: 5px;
            border: none;
            outline: none;
        }

        .login_warn {
            margin-bottom: 20px;
            color: red;
        }

        .login_button_wrap,
        .member_signup_wrap {
            margin-bottom: 20px;
        }

        .login_button,
        .member_signup {
            width: 100%;
            height: 40px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
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
					<input type="button" class="member_signup" value="ȸ�������ϱ�" onClick="location.href='http://localhost/member/signup'">
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