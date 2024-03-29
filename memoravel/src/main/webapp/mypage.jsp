<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>MEMORAVEL</title>
<link rel="stylesheet" href="./assets/css/mypage.css" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- navbar -->
	<%@ include file="/nav.jsp"%>
	<main>
		<section class="container">
			<div class="writedown">
				<nav>
					<a href="#" style="font-weight: bold;">나의 MEMORAVEL</a> 
					<a href="/memoravel/member?action=mvUpdate">회원 정보 수정</a>
					<div class="nav-underline"></div>
				</nav>
				<p class="titletext">
					나의 <b class="MEMORAVEL">MEMORAVLE</b>
				</p>
				<div class="SelectedDate">
					<img src="./assets/img/calendar.png" alt="" width="25px"
						height="25px" />
					<p class="date">2024년 3월 15일</p>
				</div>
				<div class="trip-info">
					<div class="trip-info-line">
						<div class="trip-info-div">
							<img src="./assets/img/wallpaper/phone.png" alt="" width="100px"
								height="100px" />
							<div class="trip-info-text">
								<h5>금수복국(해운대본점)</h5>
								<p>정말 맛있었어요</p>
							</div>
						</div>
						<button class="trip-info-btn">
							<img src="./assets/img/arrow-right.png" alt="" width="50px"
								height="50px" />
						</button>
					</div>
				</div>
				<div class="trip-info-line">
					<div class="trip-info-div">
						<img src="./assets/img/wallpaper/phone.png" alt="" width="100px"
							height="100px" />
						<div class="trip-info-text">
							<h5>니키아 프리미어 해운대 호텔</h5>
							<p>호텔이 정말 좋았어요</p>
						</div>
					</div>
					<button class="trip-info-btn">
						<img src="./assets/img/arrow-right.png" alt="" width="50px"
							height="50px" />
					</button>
				</div>
			</div>
			</div>
		</section>
	</main>
	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-12">
					<h5>MEMORAVEL</h5>
					<p class="text-justify">
						Business registration number: 120-00-12345 <br /> hosting
						services: MEMORAVEL Corporation | Travel Business Report Number:
						1234-56789 <br /> 대전광역시 유성구 덕명동 124 <br /> 대전광역시 유성구 덕명동 124
					</p>
				</div>
			</div>
			<hr />
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-6 col-xs-12">
					<p class="copyright-text">Copyright &copy; 2022 All Rights
						Reserved by.</p>
				</div>
			</div>
		</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
