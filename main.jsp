<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="js/jquery-3.7.1.min.js"></script>
<script src="js/freelistCheck.js"></script>
<script src="js/freereplyCheck.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>TFM</title>
<style>
* {
	box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
  font-family: 'Arial', sans-serif;
  background: url('') no-repeat center center fixed;
  background-size: cover;
  min-height: 100vh;
  position: relative;
  z-index: 0;
}

.overlay {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.4); /* 검은색 반투명, 투명도 조절 가능 */
  z-index: -1;
}

.top-bar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 40px;
	background-color: #fff;
	border-bottom: 2px solid #ccc;
	position: fixed;
	width: 100%;
	top: 0;
	z-index: 100;
}

.logo a {
	font-size: 28px;
	font-weight: 900;
	text-decoration: none;
	color: #333;
}

.auth-buttons a {
	text-decoration: none;
	padding: 10px 18px;
	background-color: #333;
	color: #fff;
	border-radius: 5px;
	margin-left: 15px;
	transition: background-color 0.2s ease;
}

.auth-buttons a:hover {
	background-color: #555;
}

.main-header {
	margin-top: 160px;
	text-align: center;
	font-size: 48px;
	font-weight: 900;
	letter-spacing: 4px;
}

.menu-row {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 150px;
	gap: 40px;
	flex-wrap: wrap;
	padding-bottom: 60px;
}

.menu-box {
	perspective: 1000px;
	width: 200px;
	height: 300px;
	position: relative;
	display: inline-block;
	text-decoration: none;
}

.menu-box>div {
	width: 100%;
	height: 100%;
	border: 3px solid #333;
	background-color: #fff;
	font-size: 22px;
	font-weight: bold;
	text-align: center;
	line-height: 300px; /* 세로 중앙 정렬 */
	position: absolute;
	backface-visibility: hidden;
	border-radius: 5px;
	transition: transform 0.6s ease;
	color: #000;
}

.menu-box .front {
	z-index: 2;
	transform: rotateY(0deg);
}

.menu-box .back {
	background-color: #333;
	color: #fff;
	transform: rotateY(180deg);
	z-index: 1;
}

.menu-box:hover .front {
	transform: rotateY(180deg);
}

.menu-box:hover .back {
	transform: rotateY(0deg);
	z-index: 3;
}

.menu-box .back {
	opacity: 0.7;
}
</style>
</head>
<body>
	<div class="overlay">
		<!-- 상단바 -->
		<div class="top-bar">
			<div class="logo">
				<a href="*.mvc"><img src="images/logo.jpg" height="40"
					width="100" /></a>
			</div>
			<div class="auth-buttons">
				<a href='${ sessionScope.isLogin ? "logout.mvc" : "loginForm.mvc"}'>${ sessionScope.isLogin ? "로그아웃" : "로그인"}</a>
				<a
					href='${ sessionScope.isLogin ? "myProfileForm.mvc" : "joinMemberForm.mvc"}'>${ sessionScope.isLogin ? "내정보" : "회원가입"}</a>
			</div>
		</div>

		<!-- 메인 헤더 -->
		<div class="main-header">WELCOME TO TFM</div>

		<!-- 가로형 메뉴 박스 -->
		<!-- 가로형 메뉴 박스 -->
		<div class="menu-row">
			<a href="#" class="menu-box">
				<div class="front">기사</div>
				<div class="back"
					style="background-image: url('images/food_card_1.png'); background-size: cover; background-position: center;"></div>
			</a> <a href="#" class="menu-box">
				<div class="front">리뷰</div>
				<div class="back"
					style="background-image: url('images/food_card_2.png'); background-size: cover; background-position: center;"></div>
			</a> <a href="freeList.mvc" class="menu-box">
				<div class="front">자유</div>
				<div class="back"
					style="background-image: url('images/food_card_3.png'); background-size: cover; background-position: center;"></div>
			</a> <a href="#" class="menu-box">
				<div class="front">q.a</div>
				<div class="back"
					style="background-image: url('images/food_card_4.png'); background-size: cover; background-position: center;"></div>
			</a>
		</div>
	</div>
</body>
</html>