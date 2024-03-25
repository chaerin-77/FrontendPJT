<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>MEMORAVEL</title>
<link rel="stylesheet" href="./assets/css/detail.css" type="text/css" />
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
	<main class="container">
		<div class="triplist">
			<p class="titletext">상세정보</p>
			<br />
			<div class="trip-info">
				<div class="trip-info-line">
					<div class="trip-info-div">
						<img src="${detail.first_image}" alt="" width="200px"
							height="200px" />
						<div class="trip-info-text">
							<h5>${detail.title}</h5>
							<p>${detail.addr1}</p>
							<p>${detail.overview}</p>
						</div>
					</div>
				</div>
			</div>
			<div style="margin: 0 auto; text-align: center;">
				<button class="trip-info-btn" onClick="location.href='/memoravel/search?action=searchTriplist'">목록 보기</button>
				<button class="trip-info-btn" onClick="alert('개발 중인 페이지입니다.')">다른 사용자들의 리뷰 보기</button>
			</div>
		</div>
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
	<script type="text/javascript" src="./assets/js/public_data_api.js"></script>
</body>
</html>
