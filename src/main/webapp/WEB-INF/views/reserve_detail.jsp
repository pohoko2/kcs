<html lang="ko">
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>낚시배 예약하기</title>
    <style>
        .container {
            width: 500px;
            margin: 0 auto;
        }
        
        h1 {
            text-align: center;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
        }
        
        .form-group input[type="text"],
        .form-group input[type="number"],
        .form-group input[type="tel"],
        .form-group input[type="password"] {
            width: 250px;
            padding: 5px;
        }
        
        .form-group input[type="submit"] {
            margin-left: 150px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        
        .price-label {
            display: inline-block;
            padding: 5px 10px;
            background-color: #4CAF50;
            color: #fff;
        }
    </style>
    
    <script>
         // 요금 합계 자동 출력..
        function calculateTotalPrice() {
            // 성인, 아동 인원과 1인당 요금을 가져옵니다.
            var adults = parseInt(document.getElementById("adults").value) || 0;
            var children = parseInt(document.getElementById("children").value) || 0;
            var price = 40000 * adults + 30000 * children;

            // 요금 합계 필드에 계산된 요금을 입력합니다.
            document.getElementById("totalPrice").value = price;
        }
    </script>
    
</head>
<body>
    <div class="container">
        <h1>낚시배 예약하기</h1>
        
        <form action="/reservation" method="post">
            <div class="form-group">
                <label for="name">예약자명:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="payer">입금자명:</label>
                <input type="text" id="payer" name="payer" required>
            </div>
            <div class="form-group">
                <label for="adults">성인 인원:</label>
                <input type="number" id="adults" name="adults" min="0" required onchange="calculateTotalPrice()">
                <label for="children">아동 인원:</label>
                <input type="number" id="children" name="children" min="0" required onchange="calculateTotalPrice()">
            </div>
            <div class="form-group">
                <label for="price">1인당 요금:</label>
                <span class="price-label">성인 40,000원</span>
                <span class="price-label">초등학생 30,000원</span>
            </div>
            <div class="form-group">
                <label for="totalPrice">요금 합계:</label>
                <input type="number" id="totalPrice" name="totalPrice" min="0" readonly>
            </div>
            <div class="form-group">
                <label for="phone">휴대폰 번호:</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">비밀번호 확인:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>
            <div class="form-group">
                <input type="submit" value="예약하기">
            </div>
        </form>
    </div>
</body>
</html>
